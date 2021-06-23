// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';

import 'produto_model.dart';

Item itemFromJson(String str) => Item.fromJson(json.decode(str));

String itemToJson(Item data) => json.encode(data.toJson());

class Item {
  Item({
    this.ord = 0,
    required this.codProd,
    required this.descricao,
    this.produto,
    this.prcUnit = 0.0,
    this.quantidade = 1,
    this.totAdicionais = 0.0,
    this.totDesconto = 0.0,
  });

  int ord;
  int codProd;
  String descricao;
  Produto? produto;
  double prcUnit;
  double quantidade;
  double totAdicionais;
  double totDesconto;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        ord: json["ord"] ?? 0,
        codProd: json["codProd"] ?? 0,
        descricao: json["descricao"] ?? "",
        produto: json["produto"],
        prcUnit: (json["prcUnit"] ?? 0.0).toDouble(),
        quantidade: (json["quantidade"] ?? 0.0).toDouble(),
        totAdicionais: (json["totAdicionais"] ?? 0.0).toDouble(),
        totDesconto: (json["totDesconto"] ?? 0.0).toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "ord": ord,
        "codProd": codProd,
        "descricao": descricao,
        "produto": produto,
        "prcUnit": prcUnit,
        "quantidade": quantidade,
        "totAdicionais": totAdicionais,
        "totDesconto": totDesconto,
      };
}
