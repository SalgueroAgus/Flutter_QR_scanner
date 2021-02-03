import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/providers/scan_list_provider.dart';

import 'package:qr_scanner/providers/ui_provider.dart';

import 'package:qr_scanner/pages/maps_history_page.dart';
import 'package:qr_scanner/pages/sitios_history_page..dart';

import 'package:qr_scanner/widgets/custom_floatingbuton.dart';
import 'package:qr_scanner/widgets/custom_navigatorbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(
              icon: Icon(Icons.delete_forever),
              onPressed: () {
                Provider.of<ScanListProvider>(context, listen: false)
                    .borrarTodos();
              }),
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener selected menu opt

    final uiProvider = Provider.of<UiProvider>(context);

    //Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    //USo de scan list provider

    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    switch (currentIndex) {
      case 0:
        scanListProvider.cargarScansPorTipo('geo');
        return MapsHistoryPage();

      case 1:
        scanListProvider.cargarScansPorTipo('http');
        return SitiosHistoryPage();

      default:
        return MapsHistoryPage();
    }
  }
}
