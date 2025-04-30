import 'package:dine_hive/core/route/app_route_constant.dart';
import 'package:dine_hive/src/data/providers/cart_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import '../../../../core/theme/src/theme_extensions/color_palette.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../data/providers/qr_scanner_provider.dart';

class QrScannerScreen extends StatelessWidget {
  const QrScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MobileScannerController scannerController = MobileScannerController();
    return ChangeNotifierProvider(
      create: (_) => QrScannerProvider(),
      child: Consumer<QrScannerProvider>(
        builder: (context, scannerProvider, _) {
          return Scaffold(
            body: Column(
              children: [
                const CustomAppBarWidget(appBarTitle: 'Order Scanner'),
                Expanded(
                  child: Stack(
                    children: [
                      MobileScanner(
                        controller: scannerController,
                        onDetect: (capture) {
                          for (final barcode in capture.barcodes) {
                            final text = barcode.rawValue;
                            if (text != null && text.isNotEmpty) {
                              scannerProvider.onBarcodeScanned(text);
                            }
                            break;
                          }
                        },
                      ),

                      _buildOverlay(),

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

                      if (scannerProvider.qrData != null)
                        _buildScanResultBox(scannerProvider.qrData!, context),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
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
  Widget _buildScanResultBox(Map<String, String> qrData, BuildContext context) {
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
            Text('🪑 Table: ${qrData['table']}', style: _textStyle),
            const Gap(8),
            Text('🏷️ Restaurant ID: ${qrData['id']}', style: _textStyle),
            const Gap(8),
            Text('🍽️ Restaurant Name:\n${qrData['name']}', style: _textStyle),
            const Gap(12),
            ElevatedButton(
              onPressed: () {
                final cartProvider = Provider.of<CartScreenProvider>(context, listen: false);
                cartProvider.tableNo = int.parse(qrData['table']!);
                cartProvider.restaurantId = qrData['id']!;
                cartProvider.restaurantName = qrData['name']!;
                cartProvider.daySelection(DateTime.now(),DateTime.now());
                cartProvider.selectedSlot('Now');
                context.push(AppRouteConstant.orderScreen);
              },
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor),
              child: const Text('Order Now'),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle get _textStyle => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );

}
