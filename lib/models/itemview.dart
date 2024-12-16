import 'package:flutter/material.dart';
import 'package:shopping_clone1/itemlist.dart';

class ItemView extends StatefulWidget {
  const ItemView({super.key});

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  ItemList items = ItemList();
  
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  Widget listTile(Items item) => ListTile(
        leading: Image.asset(item.image),
        title: Text(item.title),
        subtitle: Text(item.price),
      );

  addItem(){
    Items newItem = Items(
      image: ''
      title: titleController.text,
      rate: 1,
      sold: 1,
      location: 'Davao City, Davao del Sur',
      price: priceController.text,
      liked:false,
    );
    setState(() {
      items.itemlist.add(newItem);

      Navigator.pop(context);
      titleController.clear();
      priceController.clear();
    });
  }
  showAddDialog(context) {
    return showDialog(context, context, builder: (context) {
      return AlertDialog(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(hintText: 'Input Item Title'),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(hintText: 'Input Item Price'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    addItem();
                  },
                  child: const Text('SAVE'),
                )
              ],
            )
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Items'),
        actions: [
          IconButton(
            onPressed: () {
              showAddDialog(context);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ListView(
          children: items.itemlist.map((item) {
        return listTile(item);
      }).toList()),
    );
  }
}
