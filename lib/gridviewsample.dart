import 'package:flutter/material.dart';
import 'package:shopping_clone1/itemlist.dart';
import 'package:shopping_clone1/models/item.dart';

class GridViewSample extends StatefulWidget {
  const GridViewSample({super.key});

  @override
  State<GridViewSample> createState() => _GridViewSampleState();
}

class _GridViewSampleState extends State<GridViewSample> {
  Itemlist items= Itemlist();

  Widget

  Widget listCard(Item item) => Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            item.image,
            width: MediaQuery.of(context).size.width,
            height: 190,
          ),
          Text(
            item.title,
            softWrap: false,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 15),
          ),
          Text(
            '${item.price}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )
          )
        ],
      )
    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid of Items'),
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 360,
        ),
        itemCount: items.itemlist.length,
        itemBuilder: (BuildContext ctx, index) {
          return listCard(items.itemlist[index]);
        },
      )
    );
  }
}