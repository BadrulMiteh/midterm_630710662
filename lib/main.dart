import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(60.0),
          child: Text(
            'Good Morning',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '630710662',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Question 1 of 30',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),

                  // สร้างกล่องข้อความที่มีกรอบ
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.green, // เปลี่ยนสีพื้นหลังเป็นสีเหลือง
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'what is capital of China',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white, // เปลี่ยนสีข้อความเป็นสีขาว
                          ),
                        ),
                      ),
                    ),
                  ),

                  buildTextWithBorder('ShangHai', 'A'),
                  buildTextWithBorder('Hongkong', 'B'),
                  buildTextWithBorder('Beijing', 'C'),
                  buildTextWithBorder('Guandong', 'D'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildTextWithBorder(String text, String t) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(6.0),
    margin: EdgeInsets.symmetric(vertical: 5.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: Row(
      // เพิ่ม Row เพื่อรวมกล่องข้อความและตัวอักษร 'A'
      children: <Widget>[
        Container(
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              t,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(width: 10.0), // เพิ่มระยะห่างระหว่างกล่องเล็กกับข้อความ
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    ),
  );
}
