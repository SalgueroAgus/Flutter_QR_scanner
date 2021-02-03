import 'package:flutter/material.dart';
import 'package:qr_scanner/providers/db_provider.dart';

class MapsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScanModel scan = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicacion'),
      ),
      body: Center(
        child: Text(scan.valor),
      ),
    );
  }
}
