import 'package:flutter/material.dart';

class QrScannerProvider extends ChangeNotifier {
  bool _hasScanned = false;
  Map<String, String>? _qrData;

  bool get hasScanned => _hasScanned;
  Map<String, String>? get qrData => _qrData;

  void resetScan() {
    _hasScanned = false;
    _qrData = null;
    notifyListeners();
  }

  void onBarcodeScanned(String rawText) {
    if (_hasScanned) return;

    final parsed = _parseQrText(rawText);
    if (parsed != null) {
      _hasScanned = true;
      _qrData = parsed;
      notifyListeners();

      // Optional auto reset
      Future.delayed(const Duration(seconds: 2), () {
        resetScan();
      });
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
}
