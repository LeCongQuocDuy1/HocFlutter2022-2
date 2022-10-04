import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // chay chuong trinh
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai tap story slider',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: StorySlide(
        title: 'Bai tap story slider',
      ),
    );
  }
}

class StorySlide extends StatelessWidget {
  const StorySlide({Key? key, required this.title}) : super(key: key);
  final String title;
  static String imageURL =
      "https://file.hstatic.net/1000075078/file/1700_x_1050__highlight__a2eafed194524ccabc023cd99754b232.jpg";
  static String content =
      "Traveloka, siêu ứng dụng tiện ích sống hàng đầu Đông Nam Á là nền tảng hỗ trợ người dùng khám phá và đặt mua đa dạng các sản phẩm và dịch vụ về du lịch, phương tiện đưa đón, đặt phòng lưu trú, và dịch vụ tài chính. Danh mục sản phẩm toàn diện của Traveloka bao gồm đặt phương tiện di chuyển như vé máy bay, xe buýt, tàu hỏa, thuê ô tô, đưa đón sân bay, cũng như tiếp cận danh sách các điểm lưu trú lớn nhất Đông Nam Á bao gồm khách sạn, căn hộ, nhà khách, homestay, khu nghỉ dưỡng và biệt thự. Tất cả đã giúp Traveloka trở thành nền tảng đặt chỗ với các lựa chọn đa dạng nhất về nơi ở và gói dịch vụ.";
  static List<String> images = [
    "https://images.unsplash.com/photo-1661638577145-c0b5fac9dba5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1661697522375-7523782821b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1661691111071-42c262ca061e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1661716984436-4f360051b24b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1661697522363-24ad7adc2bc5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1661638577145-c0b5fac9dba5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1661697522375-7523782821b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1661691111071-42c262ca061e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1661716984436-4f360051b24b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1661697522363-24ad7adc2bc5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: slider(),
      ),
    );
  }

  slider() {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [...images.map((e) => storyItems(e))],
        ),
      ),
    );
  }

  storyItems(String imgURL) {
    return Container(
      width: 300,
      height: 500,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imgURL),
          fit: BoxFit.cover,
          repeat: ImageRepeat.noRepeat,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
