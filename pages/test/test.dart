import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class test_font extends StatefulWidget {
  const test_font({Key? key}) : super(key: key);

  @override
  _FontState createState() => _FontState();
}

class _FontState extends State<test_font> {

  var String = "พลังคลื่นเต่า";
  var text = "kanit";
  var styles = GoogleFonts.kanit(fontSize: 50);

  _handleClickButton_sarabun() {
    setState(() {
      styles = GoogleFonts.sarabun(fontSize: 50);
      text = "sarabun";
    });
  }

  _handleClickButton_kanit() {
    setState(() {
      styles = GoogleFonts.kanit(fontSize: 50);
      text = "kanit";
    });
  }

  _handleClickButton_prompt() {
    setState(() {
      styles = GoogleFonts.prompt(fontSize: 50);
      text = "prompt";
    });
  }

  _handleClickButton_pattaya() {
    setState(() {
      styles = GoogleFonts.pattaya(fontSize: 50);
      text = "pattaya";
    });
  }

  _handleClickButton_charm() {
    setState(() {
      styles = GoogleFonts.charm(fontSize: 50);
      text = "charm";
    });
  }



  Widget _buildButton_sarabun() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          fixedSize: MaterialStateProperty.all<Size>(Size(70, 50)),
        ),
        onPressed: _handleClickButton_sarabun,
        child: Text('sarabun', style: TextStyle(fontSize: 10.0, color: Colors.black)),
      ),
    );
  }
  Widget _buildButton_kanit() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          fixedSize: MaterialStateProperty.all<Size>(Size(70, 50)),
        ),
        onPressed: _handleClickButton_kanit,
        child: Text('kanit', style: TextStyle(fontSize: 10.0, color: Colors.black)),
      ),
    );
  }
  Widget _buildButton_prompt() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          fixedSize: MaterialStateProperty.all<Size>(Size(70, 50)),
        ),
        onPressed: _handleClickButton_prompt,
        child: Text('prompt', style: TextStyle(fontSize: 10.0, color: Colors.black)),
      ),
    );
  }
  Widget _buildButton_pattaya() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          fixedSize: MaterialStateProperty.all<Size>(Size(70, 50)),
        ),
        onPressed: _handleClickButton_pattaya,
        child: Text('pattaya', style: TextStyle(fontSize: 10.0, color: Colors.black)),
      ),
    );
  }
  Widget _buildButton_charm() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          fixedSize: MaterialStateProperty.all<Size>(Size(70, 50)),
        ),
        onPressed: _handleClickButton_charm,
        child: Text('charm', style: TextStyle(fontSize: 10.0, color: Colors.black)),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(),
            Column(
              children: [
                Column(),
                Container(
                  child: Text(
                    '$String',
                    style: styles,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Column(),
                Text(
                  'Front :$text',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, right: 10, bottom: 10),
                  child: Card(
                    elevation: 5.0,
                    child: Wrap(
                      children: [
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildButton_sarabun(),
                            _buildButton_kanit(),
                            _buildButton_prompt(),
                            _buildButton_pattaya(),
                            _buildButton_charm(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}