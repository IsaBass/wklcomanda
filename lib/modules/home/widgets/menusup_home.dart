import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wklcomanda/modules/home/home_controller.dart';
import 'package:wklcomanda/modules/home/widgets/button_atualizar.dart';

class MenuSuperiorHome extends StatelessWidget {
  MenuSuperiorHome({Key? key}) : super(key: key);

  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        // color: Colors.black,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.clamp,
          colors: [
            Theme.of(context).primaryColor,
            Colors.white,
          ],
        ),
      ),
      // alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _menuPopup(),
          ButtonAtualizar(),
        ],
      ),
    );
  }

  Widget _menuPopup() {
    ///
    PopupMenuItem<String> _item(String value, String text, Color circleColor) {
      // String value = "";
      // String text = "";
      // Color circleColor = Colors.white;
      const double altura = 40;
      // const double width = 120;

      return PopupMenuItem(
        height: altura,
        value: value,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 7,
              backgroundColor: Colors.white,
              child: CircleAvatar(radius: 5.5, backgroundColor: circleColor),
            ),
            SizedBox(width: 5),
            Text(text, style: TextStyle(color: Colors.white)),
            Obx(
              () => (value == _homeController.filtroMesa)
                  ? Checkbox(value: true, onChanged: null)
                  : Container(),
            ),
          ],
        ),
      );
    }

    return PopupMenuButton<String>(
      color: Colors.black,
      offset: Offset.fromDirection(90, 25),
      padding: const EdgeInsets.only(top: 35),
      //initialValue: _homeController.filtroMesa,
      onSelected: (val) {
        _homeController.setFiltroMesa(val);
      },
      // icon: Icon(Icons.menu),
      child: _rowStatusMesas(),

      itemBuilder: (_) => [
        _item("ALL", "Todas", Colors.white),
        _item("OCUP", "Ocupadas", Colors.black),
        _item("FREE", "Livres", Colors.green),
        //_item("testin", "TESTE", Colors.blue),
        _item("ZZZ", "Dormindo", Colors.orange),
      ],
      tooltip: "Clique para filtrar",
    );
  }

  Row _rowStatusMesas() {
    // TODO: GET QTD DE MESAS EM CADA STATUS
    return Row(
      children: [
        _circleQtdStatus(Colors.black, 25),
        _circleQtdStatus(Colors.green, 12),
        _circleQtdStatus(Colors.orange, 2),
      ],
    );
  }

  Widget _circleQtdStatus(Color cor, int quantidade) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 8, backgroundColor: cor),
          SizedBox(width: 2),
          Text("$quantidade", style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
