import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wklcomanda/modules/home/widgets/button_atualizar.dart';
import 'package:wklcomanda/modules/home/widgets/custom_ppmenuitem.dart';

class MenuSuperiorHome extends StatelessWidget {
  const MenuSuperiorHome({Key? key}) : super(key: key);

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
          // _menuDropDown(),
          ButtonAtualizar(),
        ],
      ),
    );
  }

  PopupMenuButton<String> _menuPopup() {
    return PopupMenuButton<String>(
      color: Colors.black,
      offset: Offset.fromDirection(90, 25),
      padding: const EdgeInsets.only(top: 35),
      onSelected: (val) {},
      // icon: Icon(Icons.menu),
      child: _rowStatusMesas(),

      itemBuilder: (_) => [
        // TODO: SET FILTROATUAL POR VARIABLE EM HOME CONTROLLER
        CustomPpMenuItem.all(filtroAtual: "FREE"),

        CustomPpMenuItem.ocupadas(filtroAtual: "OCUP"),
        CustomPpMenuItem.livres(filtroAtual: "FREE"),
        CustomPpMenuItem.dormindo(filtroAtual: "FREE"),
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
