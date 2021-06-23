import 'package:flutter/material.dart';
import 'package:wklcomanda/shared/models/item_model.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  const ItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.descricao),
    );
  }
}
