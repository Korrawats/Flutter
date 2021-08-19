import 'dart:html';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  Widget _buildButton0() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 4.0),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () {},
          child:
              Text('0', style: TextStyle(fontSize: 30.0, color: Colors.black)),
        ),
      ),
    );
  }

  Widget _buildButton1() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 4.0),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () {},
          child:
              Text('1', style: TextStyle(fontSize: 30.0, color: Colors.black)),
        ),
      ),
    );
  }

  Widget _buildButton2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 4.0),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () {},
          child:
              Text('2', style: TextStyle(fontSize: 30.0, color: Colors.black)),
        ),
      ),
    );
  }

  Widget _buildButton3() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 4.0),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () {},
          child:
              Text('3', style: TextStyle(fontSize: 30.0, color: Colors.black)),
        ),
      ),
    );
  }

  Widget _buildButton4() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 4.0),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () {},
          child:
              Text('4', style: TextStyle(fontSize: 30.0, color: Colors.black)),
        ),
      ),
    );
  }

  Widget _buildButton5() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 4.0),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () {},
          child:
              Text('5', style: TextStyle(fontSize: 30.0, color: Colors.black)),
        ),
      ),
    );
  }

  Widget _buildButton6() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 4.0),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () {},
          child:
              Text('6', style: TextStyle(fontSize: 30.0, color: Colors.black)),
        ),
      ),
    );
  }

  Widget _buildButton7() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 4.0),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () {},
          child:
              Text('7', style: TextStyle(fontSize: 30.0, color: Colors.black)),
        ),
      ),
    );
  }

  Widget _buildButton8() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 4.0),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () {},
          child:
              Text('8', style: TextStyle(fontSize: 30.0, color: Colors.black)),
        ),
      ),
    );
  }

  Widget _buildButton9() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 4.0),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
          ),
          onPressed: () {},
          child:
              Text('9', style: TextStyle(fontSize: 30.0, color: Colors.black)),
        ),
      ),
    );
  }

  Widget _buildButton10() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        //color: Colors.green, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget _buildButton11() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 15, 10),
      child: Center(
        child: Icon(
          Icons.backspace,
          size: 65.0,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Icon(
                    Icons.lock_outlined,
                    size: 80.0,
                    color: Colors.blue,
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'กรุณาใส่รหัสผ่าน',
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton1(),
                  _buildButton2(),
                  _buildButton3(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton4(),
                  _buildButton5(),
                  _buildButton6(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton7(),
                  _buildButton8(),
                  _buildButton9(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton10(),
                  _buildButton0(),
                  _buildButton11(),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('ลืมรหัสผ่าน'),
            ),
          ),
        ],
      ),
    ));
  }
}

