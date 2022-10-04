import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(PhuXuanSlider());
}

class PhuXuanSlider extends StatefulWidget {
  const PhuXuanSlider({Key? key}) : super(key: key);

  @override
  State<PhuXuanSlider> createState() => _PhuXuanSliderState();
}

class _PhuXuanSliderState extends State<PhuXuanSlider> {

  final urlImages = [
    'assets/images/banner.jpg',
    'assets/images/banner3.png',
    'assets/images/baiviet3.jpg',
    'assets/images/baiviet7.jpg',
  ];

  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Phu Xuan University - Slider"),
      centerTitle: true,
    ),
    body: Center(
      child: CarouselSlider.builder(
        options: CarouselOptions(height: 400),
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];

          return buildImage(urlImage, index);
        }
      ),
    ),
  );

  Widget buildImage(String urlImage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    color: Colors.purple,
    child: Image.asset(
      urlImage,
      fit: BoxFit.cover,
    ),
  );
}




