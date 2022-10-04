import 'dart:html';
import 'package:flutter/material.dart';
import 'package:hocflutter2022_2/model/Student.dart';

void main() {
  runApp(StudentAttandee());
}

class StudentAttandee extends StatefulWidget {
  const StudentAttandee({Key? key}) : super(key: key);

  @override
  State<StudentAttandee> createState() => _StudentAttandeeState();
}

class _StudentAttandeeState extends State<StudentAttandee> {
  List<Student> _listStudent = Student.MockStudent();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Attandee List',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_new,
            size: 25, //keyboard_arrow_left_outlined
          ),
          title: Text(
            "Đại học Phú Xuân - Điểm danh (Session 4)",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Row(children: [
                    Text("Thông tin xác nhận"),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.lightBlue,
                        size: 25,
                      ),
                    ),
                  ]),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Row(children: [
                    Text("Báo lỗi"),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.feedback_outlined,
                        color: Colors.lightBlue,
                        size: 25,
                      ),
                    ),
                  ]),
                ),
              ],
            )
          ],
        ),
        body: Container(
          child: ListView(
            children: [
              headerInfomation(),
              slider(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple, // background
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    minimumSize: Size(200, 50),
                  ),
                  child: Text('Gửi', style: TextStyle(fontSize: 20)),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple, // background
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: Size(200, 50),
                ),
                child: Text('Làm mới', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  headerInfomation() {
    return Container(
      color: Color.fromARGB(66, 192, 192, 192),
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lập trình di động - K18 CNTT A: (Phòng Learning Office 3.2)",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.fade,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 40),
                child: Column(
                  children: [
                    Text(
                      "Tổng số: 28",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 40),
                child: Column(
                  children: [
                    Text(
                      "Có mặt: 24",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Vắng: 4",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  slider() {
    return Container(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ..._listStudent.map((e) =>
                studentItem(e.id, e.name, e.imgURL, e.dateBorn, e.isAttandee))
          ],
        ),
      ),
    );
  }

  studentItem(
      String id, String name, String imgURL, String dateBorn, bool isAttandee) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Color.fromARGB(66, 192, 192, 192)),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [avatarItem(imgURL)],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(name),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3, bottom: 3),
                    child: Row(
                      children: [
                        Text("MSV: " + id,
                            style: TextStyle(color: Colors.lightBlue)),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text("Ngày sinh: " + dateBorn),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child:
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child:
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child:
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child:
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child:
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Icon(Icons.check_circle_rounded,
                  color: Colors.greenAccent, size: 30),
            ],
          )
        ],
      ),
    );
  }

  avatarItem(String imgURL) {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imgURL),
          fit: BoxFit.cover,
          repeat: ImageRepeat.noRepeat,
        ),
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
    );
  }
}
