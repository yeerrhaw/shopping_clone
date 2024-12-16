import 'package:shopping_clone1/models/item.dart';


class Itemlist {
  List<Item> itemlist = [
    Item(
      image: 'images/image_shop_10.jpg',
      title: 'Jansport High Quality Bag',
      rate: 4,
      sold: '39.2K',
      location: 'Tagum City, Davao del Norte',
      price: '361',
      liked: false,
    ),
    Item(
      image: 'images/image_shop_7,jpg',
      title: 'Easysoft Sandal',
      rate: 3,
      sold: '50.2K',
      location: 'Davao City, Davao del sur',
      price: '999',
      liked: false, 
    ),
  ];
}