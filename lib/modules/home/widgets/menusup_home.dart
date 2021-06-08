import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wklcomanda/modules/home/widgets/button_atualizar.dart';

class MenuSuperiorHome extends StatelessWidget {
  const MenuSuperiorHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40,
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
          Row(
            children: [
              _circleQtdStatus(Colors.black, 26),
              _circleQtdStatus(Colors.green, 12),
              _circleQtdStatus(Colors.orange, 2),
            ],
          ),
          ButtonAtualizar(),
        ],
      ),
    );
  }

  Widget _circleQtdStatus(Color cor, int quantidade) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 6, backgroundColor: cor),
          SizedBox(width: 2),
          Text("$quantidade", style: TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
}
