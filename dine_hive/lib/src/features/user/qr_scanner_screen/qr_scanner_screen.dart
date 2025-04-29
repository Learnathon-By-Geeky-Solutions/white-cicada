import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/src/data/providers/cart_screen_provider.dart';
import 'package:dine_hive/src/data/providers/order_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import '../../../../core/theme/src/theme_extensions/color_palette.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class QrScannerScreen extends StatefulWidget {
  const QrScannerScreen({super.key});

  @override
  State<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  bool _hasScanned = false;
  Map<String, String>? _qrData;

  final MobileScannerController _scannerController = MobileScannerController();

  void _onBarcodeScanned(Barcode barcode) {
    if (_hasScanned) return;

    final rawText = barcode.rawValue;
    if (rawText != null && rawText.isNotEmpty) {
      final parsedData = _parseQrText(rawText);

      if (parsedData != null) {
        setState(() {
          _hasScanned = true;
          _qrData = parsedData;
        });

        // Optional: reset after a delay
        Future.delayed(const Duration(seconds: 2), () {
          setState(() => _hasScanned = false);
        });
      }
    }
  }

  Map<String, String>? _parseQrText(String text) {
    final tableMatch = RegExp(r'Table:\s*(\d+)').firstMatch(text);
    final idMatch = RegExp(r'Restaurant Id:\s*(\d+)').firstMatch(text);
    final nameMatch = RegExp(r'Restaurant Name:\s*(.+)').firstMatch(text);

    if (tableMatch != null && idMatch != null && nameMatch != null) {
      return {
        'table': tableMatch.group(1)!,
        'id': idMatch.group(1)!,
        'name': nameMatch.group(1)!,
      };
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBarWidget(appBarTitle: 'Order Scanner'),
          Expanded(
            child: Stack(
              children: [
                MobileScanner(
                  controller: _scannerController,
                  onDetect: (capture) {
                    for (final barcode in capture.barcodes) {
                      _onBarcodeScanned(barcode);
                      break;
                    }
                  },
                ),

                _buildOverlay(),

                // Instruction
                Positioned(
                  top: MediaQuery.of(context).padding.top + 24,
                  left: 0,
                  right: 0,
                  child: const Center(
                    child: Text(
                      'Scan & Order your food from the table',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                if (_qrData != null) _buildScanResultBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Highlight square and dim surroundings
  Widget _buildOverlay() {
    return LayoutBuilder(builder: (context, constraints) {
      final boxWidth = constraints.maxWidth * 0.75;
      final boxHeight = boxWidth;
      final topOffset = constraints.maxHeight * 0.25;
      final leftOffset = (constraints.maxWidth - boxWidth) / 2;

      return Stack(
        children: [
          // Dimmed background with transparent scanning area
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6),
              BlendMode.srcOut,
            ),
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    backgroundBlendMode: BlendMode.dstOut,
                  ),
                ),
                Positioned(
                  top: topOffset,
                  left: leftOffset,
                  child: Container(
                    width: boxWidth,
                    height: boxHeight,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Orange border box
          Positioned(
            top: topOffset,
            left: leftOffset,
            child: Container(
              width: boxWidth,
              height: boxHeight,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.orangeColor,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      );
    });
  }

  /// Shows scanned result with action button
  Widget _buildScanResultBox() {
    return Positioned(
      bottom: 50,
      left: 20,
      right: 20,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.textFiledFillColor.withOpacity(0.95),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primaryColor, width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '🪑 Table: ${_qrData!['table']}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ),
            const Gap(8),
            Text(
              '🏷️ Restaurant ID: ${_qrData!['id']}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ),
            const Gap(8),
            Text(
              '🍽️ Restaurant Name:\n${_qrData!['name']}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ),
            const Gap(12),
            ElevatedButton(
              onPressed: () {
                final cartProvider = Provider.of<CartScreenProvider>(context,listen: false);
                final orderProvider = Provider.of<OrderScreenProvider>(context,listen: false);
                cartProvider.tableNo = int.parse(_qrData!['table'].toString());
                cartProvider.restaurantId = _qrData!['id'].toString();
                context.go(AppRouteConstant.orderScreen);
                orderProvider.updateIndex(1);
                orderProvider.updatePage(1);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
              ),
              child: const Text('Order Now'),
            ),
          ],
        ),
      ),
    );
  }
}
