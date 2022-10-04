import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // chay chuong trinh
}

// Root widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traveloka App Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: TravelPage(
        title: 'Traveloka - App du lich tot nhat Viet Nam',
      ),
    );
  }
}

class TravelPage extends StatelessWidget {
  const TravelPage({Key? key, required this.title}) : super(key: key);
  final String title;
  static String imageURL =
      "https://ik.imagekit.io/tvlk/image/imageResource/2022/08/24/1661325320448-8d9b5f920cd879f4b9e9c3b88fa1b5b5.png?tr=q-75,w-1280";
  static String content =
      "Traveloka, siêu ứng dụng tiện ích sống hàng đầu Đông Nam Á là nền tảng hỗ trợ người dùng khám phá và đặt mua đa dạng các sản phẩm và dịch vụ về du lịch, phương tiện đưa đón, đặt phòng lưu trú, và dịch vụ tài chính. Danh mục sản phẩm toàn diện của Traveloka bao gồm đặt phương tiện di chuyển như vé máy bay, xe buýt, tàu hỏa, thuê ô tô, đưa đón sân bay, cũng như tiếp cận danh sách các điểm lưu trú lớn nhất Đông Nam Á bao gồm khách sạn, căn hộ, nhà khách, homestay, khu nghỉ dưỡng và biệt thự. Tất cả đã giúp Traveloka trở thành nền tảng đặt chỗ với các lựa chọn đa dạng nhất về nơi ở và gói dịch vụ.";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            imageHeader(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LeftContent(),
                RightContent(),
              ],
            ),
            buttonActions(),
            description(),
          ],
        ),
      ),
    );
  }

  imageHeader() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Image.network(
        imageURL,
      ),
    );
  }

  LeftContent() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Chao mung ban den voi Traveloka App",
              style: TextStyle(
                fontSize: 20,
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Text(
            "Cung Traveloka kham pha vong quanh the gioi - khuyen mai soc 70%",
            style: TextStyle(
              fontSize: 16,
              color: Colors.blueGrey,
            ),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }

  RightContent() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.star, color: Colors.amber, size: 40),
        ),
        Text(
          "45",
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
        )
      ],
    );
  }

  buttonActions() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buidButton("CALL", Icons.phone),
          buidButton("ROUTE", Icons.near_me),
          buidButton("SHARE", Icons.share),
        ],
      ),
    );
  }

  buidButton(String title, IconData icon) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Icon(
            icon,
            color: Colors.lightBlueAccent,
            size: 45,
          ),
        ),
        Text(title),
      ],
    );
  }

  description() {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          content,
          style: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
            color: Colors.blueAccent,
          ),
        ));
  }
}
