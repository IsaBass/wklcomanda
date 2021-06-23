// To parse this JSON data, do
//
//     final produto = produtoFromJson(jsonString);

import 'dart:convert';

Produto produtoFromJson(String str) => Produto.fromJson(json.decode(str));

String produtoToJson(Produto data) => json.encode(data.toJson());

class Produto {
  Produto({
    required this.codProd,
    required this.descricao,
    this.aplicacao = "",
    required this.prcUnit,
    this.codDivisao = 0,
    this.codSecao = 0,
  });

  int codProd;
  String descricao;
  String aplicacao;
  double prcUnit;
  int codDivisao;
  int codSecao;

  factory Produto.fromJson(Map<String, dynamic> json) => Produto(
        codProd: json["codProd"] ?? 0,
        descricao: json["descricao"] ?? "",
        aplicacao: json["aplicacao"] ?? "",
        prcUnit: (json["prcUnit"] ?? 0.0).toDouble(),
        codDivisao: json["codDivisao"] ?? 0,
        codSecao: json["codSecao"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "codProd": codProd,
        "descricao": descricao,
        "aplicacao": aplicacao,
        "prcUnit": prcUnit,
        "codDivisao": codDivisao,
        "codSecao": codSecao,
      };
}
