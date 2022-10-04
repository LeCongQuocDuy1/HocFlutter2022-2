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
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_sharp),
          title: Text(
            "Phu Xuan University - Điểm danh",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            headerInfomation(),
            slider(),
          ],
        ),
        floatingActionButton: Icon(Icons.add),
      ),
    );
  }

  headerInfomation() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Lập trình di động - K18 CNTT A: (Phòng Learning Office 3.2)",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
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
                        fontSize: 16,
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
                        fontSize: 16,
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
                        fontSize: 16,
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
      child: Column(
        children: [
          ..._listStudent
              .map((e) => studentItem(e.id, e.name, e.imgURL, e.dateBorn))
        ],
      ),
    );
  }

  studentItem(String id, String name, String imgURL, String dateBorn) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [avatarItem(imgURL)],
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(name),
                ],
              ),
              Row(
                children: [
                  Text(id),
                ],
              ),
              Row(
                children: [
                  Text("Ngày sinh: " + dateBorn),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Icon(Icons.star, color: Colors.yellow, size: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Icon(Icons.star, color: Colors.yellow, size: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Icon(Icons.star, color: Colors.yellow, size: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Icon(Icons.star, color: Colors.yellow, size: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Icon(Icons.star, color: Colors.yellow, size: 10),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Icon(Icons.access_time_sharp,
                  color: Colors.greenAccent, size: 20),
            ],
          )
        ],
      ),
    );
  }

  avatarItem(String imgURL) {
    return Container(
      width: 50,
      height: 50,
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
