import 'dart:core';

import 'package:intl/intl.dart';

class Student {
  final String id;
  final String name;
  final String imgURL;
  final String dateBorn;
  bool isAttandee = false;

  Student(this.id, this.name, this.imgURL, this.dateBorn, this.isAttandee);

  static List<Student> MockStudent() {
    List<Student> rs = [];
    rs.add(Student(
      'C200223',
      "Le Cong Quoc Duy",
      'https://scontent.xx.fbcdn.net/v/t1.15752-9/294542196_588024806351013_6884239528867764469_n.png?stp=dst-png_p403x403&_nc_cat=100&ccb=1-7&_nc_sid=aee45a&_nc_ohc=eq9BkYsZSJkAX-hEmgh&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVKommxVrtMOZq4loZXwyXbgGNhijKdmgXShgf8_5RFGeQ&oe=6335126B',
      DateFormat.yMMMMd().format(DateTime(2002, 3, 12)),
      true,
    ));
    rs.add(Student(
      'C200254',
      "Nguyen Van Hung",
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWjYkTLERtoPt23BApbGqFUCrjLXy1WlVoCA&usqp=CAU',
      DateFormat.yMMMMd().format(DateTime(2002, 7, 24)),
      true,
    ));
    rs.add(Student(
      'C200276',
      "Tran Thi Cam Tu",
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTv3MEKiGWS2egyMGegLLeo2WWbl-ZuawBjvA&usqp=CAU',
      DateFormat.yMMMMd().format(DateTime(2002, 1, 10)),
      true,
    ));
    rs.add(Student(
      'C200235',
      "Le Thi Quynh",
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGPUyL_qkMHUE1-CkvhI2rIAERCjzNxvgQkQ&usqp=CAU',
      DateFormat.yMMMMd().format(DateTime(2002, 12, 5)),
      true,
    ));
    rs.add(Student(
      'C200246',
      "Nguyen Thi Ai",
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI__DyDX7l091HQQ0Yc35LYY4pF1jujAz6kA&usqp=CAU',
      DateFormat.yMMMMd().format(DateTime(2002, 9, 2)),
      true,
    ));
    rs.add(Student(
      'C200286',
      "Tran Nhu Hoang",
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNO6yQwHzO7gNtNrwR0avbIoAwrjK0eOLU7g&usqp=CAU',
      DateFormat.yMMMMd().format(DateTime(2002, 7, 6)),
      false,
    ));
    rs.add(Student(
      'C200212',
      "Duong Van Huy",
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKki2nRWrTlYo1Qm5dap6awKRKkQVFKVtwvQ&usqp=CAU',
      DateFormat.yMMMMd().format(DateTime(2002, 5, 8)),
      false,
    ));
    rs.add(Student(
      'C200235',
      "Nguyen Anh Kiet",
      'https://scontent.xx.fbcdn.net/v/t1.15752-9/294542196_588024806351013_6884239528867764469_n.png?stp=dst-png_p403x403&_nc_cat=100&ccb=1-7&_nc_sid=aee45a&_nc_ohc=eq9BkYsZSJkAX-hEmgh&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVKommxVrtMOZq4loZXwyXbgGNhijKdmgXShgf8_5RFGeQ&oe=6335126B',
      DateFormat.yMMMMd().format(DateTime(2002, 2, 25)),
      true,
    ));
    rs.add(Student(
      'C200287',
      "Chau Thi Tram",
      'https://scontent.xx.fbcdn.net/v/t1.15752-9/294542196_588024806351013_6884239528867764469_n.png?stp=dst-png_p403x403&_nc_cat=100&ccb=1-7&_nc_sid=aee45a&_nc_ohc=eq9BkYsZSJkAX-hEmgh&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVKommxVrtMOZq4loZXwyXbgGNhijKdmgXShgf8_5RFGeQ&oe=6335126B',
      DateFormat.yMMMMd().format(DateTime(2002, 6, 17)),
      false,
    ));
    rs.add(Student(
      'C200266',
      "Tran Van Nguyen",
      'https://scontent.xx.fbcdn.net/v/t1.15752-9/294542196_588024806351013_6884239528867764469_n.png?stp=dst-png_p403x403&_nc_cat=100&ccb=1-7&_nc_sid=aee45a&_nc_ohc=eq9BkYsZSJkAX-hEmgh&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVKommxVrtMOZq4loZXwyXbgGNhijKdmgXShgf8_5RFGeQ&oe=6335126B',
      DateFormat.yMMMMd().format(DateTime(2002, 11, 10)),
      true,
    ));
    return rs;
  }
}
