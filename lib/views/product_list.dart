import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // chay chuong trinh

// Root widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(
        title: 'Trang chu',
      ),
    );
  }
}

// Trang chu widget
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          "Product List",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding:
            EdgeInsets.fromLTRB(5, 12, 5, 12), // padding container Product List
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProductBox(
                    name: "Japan Sushi",
                    description:
                        "Sushi ngon nhất xứ sở hoa anh đào", // Product Item
                    price: 175000,
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-AsirHvsG_Ej69nhjU2lf7DIiPNkC5We80Q&usqp=CAU"),
                ProductBox(
                    name: "Korean kimchi soup",
                    description:
                        "Canh kim chi nóng hổi, thơm ngon", // Product Item
                    price: 155000,
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-AsirHvsG_Ej69nhjU2lf7DIiPNkC5We80Q&usqp=CAU"),
                ProductBox(
                    name: "Fried noodle with beef",
                    description:
                        "Mì xào bò ngon bổ rẻ, đậm đà hương vị", // Product Item
                    price: 215000,
                    image:
                        "https://img.pikbest.com/png-images/qiantu/gourmet-noodle-dining-egg-hot-food-vector-hand-drawn-cartoon-design_2608685.png!c1024wm0"),
                ProductBox(
                    name: "Japan Sushi",
                    description:
                        "Sushi ngon nhất xứ sở hoa anh đào", // Product Item
                    price: 175000,
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-AsirHvsG_Ej69nhjU2lf7DIiPNkC5We80Q&usqp=CAU"),
                ProductBox(
                    name: "Korean kimchi soup",
                    description:
                        "Canh kim chi nóng hổi, thơm ngon", // Product Item
                    price: 155000,
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-AsirHvsG_Ej69nhjU2lf7DIiPNkC5We80Q&usqp=CAU"),
                ProductBox(
                    name: "Fried noodle with beef",
                    description:
                        "Mì xào bò ngon bổ rẻ, đậm đà hương vị", // Product Item
                    price: 215000,
                    image:
                        "https://img.pikbest.com/png-images/qiantu/gourmet-noodle-dining-egg-hot-food-vector-hand-drawn-cartoon-design_2608685.png!c1024wm0"),
                ProductBox(
                    name: "Japan Sushi",
                    description:
                        "Sushi ngon nhất xứ sở hoa anh đào", // Product Item
                    price: 175000,
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-AsirHvsG_Ej69nhjU2lf7DIiPNkC5We80Q&usqp=CAU"),
                ProductBox(
                    name: "Korean kimchi soup",
                    description:
                        "Canh kim chi nóng hổi, thơm ngon", // Product Item
                    price: 155000,
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-AsirHvsG_Ej69nhjU2lf7DIiPNkC5We80Q&usqp=CAU"),
                ProductBox(
                    name: "Fried noodle with beef",
                    description:
                        "Mì xào bò ngon bổ rẻ, đậm đà hương vị", // Product Item
                    price: 215000,
                    image:
                        "https://img.pikbest.com/png-images/qiantu/gourmet-noodle-dining-egg-hot-food-vector-hand-drawn-cartoon-design_2608685.png!c1024wm0"),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: ,
    );
  }
}

// Product Item Widget
class ProductBox extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String image;

  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10), // padding container Product Item
      height: 110, // height of Product Item
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              // Image product column
              children: [
                Image.network(
                  image,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Column(
              // Content product column
              children: [
                Text(this.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.deepOrangeAccent,
                    )),
                Text(this.description),
                Text(
                  "Price: " + this.price.toString() + "đ",
                  style: TextStyle(color: Colors.redAccent),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
