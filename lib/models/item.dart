class Item {
  final String image;
  final String title;
  final int rate;
  final String sold;
  final String location;
  final String price;
  bool liked;

  Item({
    required this.image,
    required this.title,
    required this.rate,
    required this.sold,
    required this.location,
    required this.price,
    required this.liked,
  });
}