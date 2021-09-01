class CatlogModel{
  static final items=[
    Items(

      id: 1,
      name:"IPhone Pro max",
      desc: "Mobile Phone of Apple Company",
      imageUrl: 'assets/images/login.png',
      color: "#33505a",
      price: 22

  )];
}

class Items{
  final String name;
  final int id;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  Items({required this.name, required this.id, required this.desc, required this.price, required this.color, required this.imageUrl});

}

