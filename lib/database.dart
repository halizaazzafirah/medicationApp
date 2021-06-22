class Product {
  final int id /*price*/;
  final String title, description, image;

  Product({this.id, /*this.price,*/ this.title, this.description, this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    //price: 56,
    title: "Aspirin",
    image: "assets/images/aspirin.png",
    description:
        "Reduce fever and relieve mild to moderate pain from conditions such as muscle aches, toothaches, common cold, and headaches",
  ),
  Product(
    id: 4,
    //price: 68,
    title: "Poppy Plastic Tub Chair",
    image: "assets/images/Item_2.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 9,
    //price: 39,
    title: "Bar Stool Chair",
    image: "assets/images/Item_3.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];
