import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // chay chuong trinh
}

// Root widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai tap layout',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: BaitapPage(
        title: 'Bai tap layout',
      ),
    );
  }
}

class BaitapPage extends StatelessWidget {
  const BaitapPage({Key? key, required this.title}) : super(key: key);
  final String title;
  static String imageURL =
      "https://file.hstatic.net/1000075078/file/1700_x_1050__highlight__a2eafed194524ccabc023cd99754b232.jpg";
  static String content =
      "Traveloka, siêu ứng dụng tiện ích sống hàng đầu Đông Nam Á là nền tảng hỗ trợ người dùng khám phá và đặt mua đa dạng các sản phẩm và dịch vụ về du lịch, phương tiện đưa đón, đặt phòng lưu trú, và dịch vụ tài chính. Danh mục sản phẩm toàn diện của Traveloka bao gồm đặt phương tiện di chuyển như vé máy bay, xe buýt, tàu hỏa, thuê ô tô, đưa đón sân bay, cũng như tiếp cận danh sách các điểm lưu trú lớn nhất Đông Nam Á bao gồm khách sạn, căn hộ, nhà khách, homestay, khu nghỉ dưỡng và biệt thự. Tất cả đã giúp Traveloka trở thành nền tảng đặt chỗ với các lựa chọn đa dạng nhất về nơi ở và gói dịch vụ.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leftContent(),
              imageHeader(),
            ],
          ),
        ),
      ),
    );
  }

  leftContent() {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leftContent_title(),
          leftContent_desc(),
          leftContent_reviews(),
          leftContent_items(),
        ],
      ),
    );
  }

  leftContent_title() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        "Bánh trung thu cà phê & Trà đào cam xả",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }

  leftContent_desc() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        "Bánh Trung Thu - thức quà không thể thiếu trong dịp Tết Đoàn viên, với 6 hương vị đầy đủ từ mặn đến ngọt, truyền thống đến hiện đại và cả vị cà phê đặc trưng “cộp mác” Nhà.",
        style: TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 92, 91, 91),
        ),
      ),
    );
  }

  leftContent_reviews() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.star, color: Colors.yellow, size: 20),
              ),
            ],
          ),
          Text(
            "690 reviews",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 160, 160, 160),
            ),
          ),
        ],
      ),
    );
  }

  leftContent_items() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buidItems("CALL", Icons.phone, "hotline"),
        buidItems("ROUTE", Icons.near_me, "map"),
        buidItems("SHARE", Icons.share, "share"),
      ],
    );
  }

  buidItems(String title, IconData icon, String desc) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Icon(
            icon,
            color: Color.fromARGB(255, 233, 113, 44),
            size: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            title,
            style: TextStyle(color: Colors.red),
          ),
        ),
        Text(desc),
      ],
    );
  }

  imageHeader() {
    return Expanded(
      flex: 2,
      child: Image.network(
        imageURL,
      ),
    );
  }
}
