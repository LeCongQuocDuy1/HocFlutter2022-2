import 'package:flutter/material.dart';
import '../values/app_assets.dart';
import '../values/app_colors.dart';
import '../values/app_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.secondColor,
        leading: InkWell(
          onTap: () {},
          child: Image.asset(AppAssets.menu),
        ),
        title: Text(
          "English today",
          style: AppStyle.h3.copyWith(
              color: AppColors.textColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: size.height * 1 / 10,
              alignment: Alignment.centerLeft,
              child: Text(
                "This is my app This is my app This is my app This is my app This is my app",
                style: AppStyle.h5.copyWith(
                    color: AppColors.textColor, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: size.height * 2 / 3,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.topRight,
                              child: Image.asset(AppAssets.heart)),
                          RichText(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: 'B',
                                style: TextStyle(
                                  fontSize: 89,
                                  fontFamily: FontFamily.sen,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(3, 6),
                                      blurRadius: 6,
                                    ),
                                  ],
                                ),
                                children: [
                                  TextSpan(
                                    text: 'eautiful',
                                    style: TextStyle(
                                      fontSize: 56,
                                      fontFamily: FontFamily.sen,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.black38,
                                          offset: Offset(3, 6),
                                          blurRadius: 6,
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )),
                          Container(
                            margin: EdgeInsets.only(bottom: 24),
                            child: Text(
                              "You are my sunshine! My beautiful is life and so pretty very much",
                              style: AppStyle.h4.copyWith(
                                  letterSpacing: 1, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(
              height: size.height * 1 / 11,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                alignment: Alignment.center,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return buidIndicator(index == _currentIndex, size);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {},
        child: Image.asset(AppAssets.exchange),
      ),
    );
  }

  Widget buidIndicator(bool isActive, Size size) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 8,
      width: isActive ? size.width * 1 / 5 : 24,
      decoration: BoxDecoration(
        color: isActive ? AppColors.lightColor : Color(0xFF4E4E4E),
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(2, 3),
            blurRadius: 3,
          ),
        ],
      ),
    );
  }
}
