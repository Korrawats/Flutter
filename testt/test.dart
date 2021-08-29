import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class test_game extends StatefulWidget {
  const test_game({Key? key}) : super(key: key);

  @override
  _GameTest createState() => _GameTest();
}

class _GameTest extends State<test_game> {
  //ตัวแปร
  var name = 'Sudapron';
  var nameb = 'Kellie Anne';

  bool showtext = false;

  var red = 0;
  var sum_red = 0;
  var blue = 0;

  var x = 0;
  var y = 0;
  var z = 0;
  var m = 0;

  bool check_x = true;

  var sum_blue = 0;
  var count = 0;

  var check = 0;

  _handleClickButton1_red() {
    setState(() {
      red = 10;
      blue = 9;


      if(count==1){
        y++;
      }
      else if(count==2){
        z++;
      }


      sum_red += red;
      sum_blue += blue;

      if(check==0) {
        showtext = !showtext;
        check=1;
      }

      if(m==0){
        m++;
      } else {
        count++;
      }

      if(count>=2){
        check_x = false;
      }

    });
  }

  _handleClickButton1_blue() {
    setState(() {
      red = 9;
      blue = 10;

      if(count==0){
        x++;
      }
      else if(count==1){
        y++;
      }
      else if(count==2){
        z++;
      }

      sum_red += red;
      sum_blue += blue;

      if(check==0) {
        showtext = !showtext;
        check=1;
      }

      if(m==0){
        m++;
      } else {
        count++;
      }

      if(count>=2){
        check_x = false;
      }

    });
  }

  //ปุ่ม
  Widget _buildButton_blue() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton1_blue,
        child: Icon(
          Icons.person,
          size: 40.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildButton_red() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton1_red,
        child: Icon(
          Icons.person,
          size: 40.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildButton_black() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: (){},
        child: Icon(
          Icons.clear,
          size: 40.0,
          color: Colors.white,
        ),
      ),
    );
  }

  //การทำงาน
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //ส่วนบน
            Container(
              //color: Colors.blue,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TOKYO 2020',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.,
                    children: [
                      Container(
                        color: Colors.black,
                        child: Text(
                          'Women Light(57-60kg) Semi-final',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 80.0,
                        color: Colors.red,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IRELAND',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'HARRINGTON $nameb',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 80.0,
                        color: Colors.blue,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'THAILAND',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'SEESONDEE $name',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          height: 10,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          height: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //ส่วนกลาง
            //
            Expanded(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if(count==0 || x==1)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: showtext
                          ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Round 1'),
                        ],
                      )
                          : null,
                    ),
                  if(count==0 || x==1)
                   Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: showtext
                        ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('$blue'),
                        Text('$red'),
                      ],
                    )
                        : null,
                  ),
                  if(count==0 || x==1)
                   Container(
                    child: showtext
                        ? Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.black12,
                            height: 1,
                          ),
                        ),
                      ],
                    )
                        : null,
                  ),
                  if(count==1 || y==1)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: showtext
                          ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Round 2'),
                        ],
                      )
                          : null,
                    ),
                  if(count==1 || y==1)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: showtext
                          ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('$blue'),
                          Text('$red'),
                        ],
                      )
                          : null,
                    ),
                  if(count==1 || y==1)
                    Container(
                      child: showtext
                          ? Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.black12,
                              height: 1,
                            ),
                          ),
                        ],
                      )
                          : null,
                    ),
                  if(count==2 || z==1)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: showtext
                          ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Round 3'),
                        ],
                      )
                          : null,
                    ),
                  if(count==2 || z==1)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: showtext
                          ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('$blue'),
                          Text('$red'),
                        ],
                      )
                          : null,
                    ),
                  if(count==2 || z==1)
                    Container(
                      child: showtext
                          ? Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.black12,
                              height: 1,
                            ),
                          ),
                        ],
                      )
                          : null,
                    ),
                  if(count==2 || z==1)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: showtext
                          ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('total'),
                        ],
                      )
                          : null,
                    ),
                  if(count==2 || z==1)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: showtext
                          ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('$sum_blue'),
                          Text('$sum_red'),
                        ],
                      )
                          : null,
                    ),
                  if(count==2 || z==1)
                    Container(
                      child: showtext
                          ? Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.black12,
                              height: 1,
                            ),
                          ),
                        ],
                      )
                          : null,
                    ),
                ],
              ),
            ),
            Container(
              child: check_x ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton_red(),
                  _buildButton_blue(),
                ],
              ) : Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton_black(),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
