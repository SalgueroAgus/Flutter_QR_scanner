import 'package:flutter/material.dart';
import 'package:qr_scanner/widgets/scan_tiles.dart';

class MapsHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScanTiles(tipo: 'geo');
  }
}
