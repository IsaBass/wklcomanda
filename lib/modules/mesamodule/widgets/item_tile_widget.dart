import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:wklcomanda/shared/models/item_model.dart';

class ItemTile extends StatelessWidget {
  //
  final Item item;
  const ItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.2,
      child: ExpansionTile(
        leading: Icon(
          Icons.swipe,
          size: 15,
          color: Colors.grey[400],
        ),
        title: Text(item.descricao),
        children: [
          Text(item.prcUnit.toStringAsFixed(2)),
          Text(item.codProd.toString()),
        ],
      ),
      actions: <Widget>[
        IconSlideAction(
          caption: 'Archive',
          color: Colors.blue,
          icon: Icons.archive,
          onTap: () => print('Archive'),
        ),
        IconSlideAction(
          caption: 'Share',
          color: Colors.indigo,
          icon: Icons.share,
          onTap: () => print('Share'),
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'More',
          color: Colors.black45,
          icon: Icons.more_horiz,
          onTap: () => print('More'),
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => print('Delete'),
        ),
      ],
    );
  }
}
