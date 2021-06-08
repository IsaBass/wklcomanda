import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPpMenuItem extends PopupMenuItem<String> {
  String value = "";
  String text = "";
  Color circleColor = Colors.white;
  static const double altura = 40;
  static const double width = 120;
  String filtroAtual;

  CustomPpMenuItem({
    Key? key,
    required this.value,
    required this.text,
    required this.circleColor,
    required this.filtroAtual,
    // this.height = 40,
  }) : super(
          key: key,
          height: altura,
          value: value,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 6,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: circleColor,
                ),
              ),
              SizedBox(width: 5),
              Text(text, style: TextStyle(color: Colors.white)),
              if (value == filtroAtual) Checkbox(value: true, onChanged: null),
            ],
          ),
        );

  CustomPpMenuItem.all({
    Key? key,
    this.text = "Todas",
    required this.filtroAtual,
    // this.height = 40,
  }) : super(
          key: key,
          height: altura,
          value: "ALL",
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(radius: 7, backgroundColor: Colors.white),
              SizedBox(width: 5),
              Text(text, style: TextStyle(color: Colors.white)),
              if ("ALL" == filtroAtual) Checkbox(value: true, onChanged: null),
            ],
          ),
        );

  CustomPpMenuItem.ocupadas({required this.filtroAtual})
      : super(
          height: altura,
          value: "OCUP",
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 5.5,
                  backgroundColor: Colors.black,
                ),
              ),
              SizedBox(width: 5),
              Text("Ocupadas", style: TextStyle(color: Colors.white)),
              if ("OCUP" == filtroAtual) Checkbox(value: true, onChanged: null),
            ],
          ),
        );

  CustomPpMenuItem.livres({
    required this.filtroAtual,
  }) : super(
          height: altura,
          value: "FREE",
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 5.5,
                  backgroundColor: Colors.green,
                ),
              ),
              SizedBox(width: 5),
              Text("Livres", style: TextStyle(color: Colors.white)),
              if ("FREE" == filtroAtual) Checkbox(value: true, onChanged: null),
            ],
          ),
        );

  CustomPpMenuItem.dormindo({required this.filtroAtual})
      : super(
          height: altura,
          value: "ZZZ",
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 5.5,
                  backgroundColor: Colors.orange,
                ),
              ),
              SizedBox(width: 5),
              Text("Dormindo", style: TextStyle(color: Colors.white)),
              if ("ZZZ" == filtroAtual) Checkbox(value: true, onChanged: null),
            ],
          ),
        );
}
