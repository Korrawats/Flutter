
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class numbers_game extends StatefulWidget {
  const numbers_game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<numbers_game> {
  List list = [];
  var sum = 0;
  var text = "";
  bool showText = true;
  bool checkColor = true;
  bool checkReset = true;

  _handleClickButton1() {
    setState(() {
      sum = sum + 1;
      checkColor = !checkColor;
      if (sum == 20) {
        showText = !showText;
        text = "RED WIN";
      }
    });
  }

  _handleClickButton2() {
    setState(() {
      sum = sum + 2;
      checkColor = !checkColor;
      if (sum == 20) {
        showText = !showText;
        text = "RED WIN";
      }
    });
  }

  _handleClickButton3() {
    setState(() {
      sum = sum + 3;
      checkColor = !checkColor;
      if (sum == 20) {
        showText = !showText;
        text = "RED WIN";
      }
    });
  }

  _handleClickButtonReset() {
    setState(() {
      sum = 0;
      showText = !showText;
    });
  }

  //////////////////////////

  _handleClickButton1_blue() {
    setState(() {
      sum = sum + 1;
      checkColor = !checkColor;
      if (sum == 20) {
        showText = !showText;
        text = "BLUE WIN";
      }
    });
  }

  _handleClickButton2_blue() {
    setState(() {
      sum = sum + 2;
      checkColor = !checkColor;
      if (sum == 20) {
        showText = !showText;
        text = "BLUE WIN";
      }
    });
  }

  _handleClickButton3_blue() {
    setState(() {
      sum = sum + 3;
      checkColor = !checkColor;
      if (sum == 20) {
        showText = !showText;
        text = "BLUE WIN";
      }
    });
  }

  Widget _buildButton1_red() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton1,
        child: Text('1', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  Widget _buildButton2_red() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton2,
        child: Text('2', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  Widget _buildButton3_red() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton3,
        child: Text('3', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  Widget _buildButton11_red() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton1,
        child: Text('1', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  Widget _buildButton22_red() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton1,
        child: Text('2', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  Widget _buildButton33_red() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton1,
        child: Text('3', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  /////////////////////////////////

  Widget _buildButton1_blue() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton1_blue,
        child: Text('1', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  Widget _buildButton2_blue() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton2_blue,
        child: Text('2', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  Widget _buildButton3_blue() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton3_blue,
        child: Text('3', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  Widget _buildButton11_blue() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton1_blue,
        child: Text('1', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  Widget _buildButton22_blue() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton1_blue,
        child: Text('2', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  Widget _buildButton33_blue() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButton1_blue,
        child: Text('3', style: TextStyle(fontSize: 30.0, color: Colors.black)),
      ),
    );
  }

  ////////////////////////////////////

  Widget _buildButtonCheckReset() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          fixedSize: MaterialStateProperty.all<Size>(Size(100, 50)),
        ),
        onPressed: _handleClickButtonReset,
        child: Text('NewGame', style: TextStyle(fontSize: 10.0, color: Colors.black)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/images/bg.jpg"),
              fit: BoxFit
                  .fill, // ยืดเต็มพื้นที่โดยไม่สนใจสัดส่วนของภาพ หรือใช้ BoxFit.cover เพื่อยืดให้เต็มและคงสัดส่วนของภาพไว้ แต่บางส่วนของภาพอาจถูก crop
            ),
          ),
          child: SafeArea(
            // ไม่ให้ layout ไปอยู่ตรงส่วน status bar หรือ notc
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: checkColor
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildButton33_red(),
                            _buildButton22_red(),
                            _buildButton11_red(),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildButton3_red(),
                            _buildButton2_red(),
                            _buildButton1_red(),
                          ],
                        ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: showText
                          ? Column(
                              children: [
                                for (int i = 0; i < 21; i++)
                                  Row(
                                    children: [
                                      if(i<sum)
                                        const Icon(
                                          Icons.star_purple500_outlined,
                                        ),
                                      if(i>sum)
                                        const Icon(
                                          Icons.star_border_sharp,
                                        ),
                                    ],
                                  ),
                              ],
                            )
                          : null,
                    ),
                    Center(
                      child: showText
                          ? Column(children: [
                              Container(
                                child: checkColor
                                    ? Icon(
                                        Icons.keyboard_arrow_up,
                                        color: Colors.white12,
                                        size: 50,
                                      )
                                    : Icon(
                                        Icons.keyboard_arrow_up,
                                        color: Colors.black,
                                        size: 50,
                                      ),
                              ),
                              Text(
                                '$sum',
                                style: TextStyle(fontSize: 100),
                              ),
                              Container(
                                child: checkColor
                                    ? Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                        size: 50,
                                      )
                                    : Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.white12,
                                        size: 50,
                                      ),
                              ),
                            ])
                          : Column(
                            children: [
                              Text(
                                  '$text \n',
                                  style: TextStyle(fontSize: 70),
                                ),
                              _buildButtonCheckReset(),
                            ],
                          ),
                    ),
                    Container(
                      child: Text(''),
                    ),
                  ],
                ),
                Container(
                  child: checkColor
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildButton1_blue(),
                            _buildButton2_blue(),
                            _buildButton3_blue(),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildButton11_blue(),
                            _buildButton22_blue(),
                            _buildButton33_blue(),
                          ],
                        ),
                ),
              ],
            ), // Your widget tree
          )),
    );
  }
}
