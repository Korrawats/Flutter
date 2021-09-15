import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello/pages/game/game.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late Game _game;
  final _controller = TextEditingController();
  String _guessNumber = "I'm thinking of a number between 1 and 100";
  String? _feedback = " Can you guess it? ";
  bool check = false;
  List number = [];

  @override
  void initState() {
    super.initState();
    _game = Game();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildButton_newgame() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          fixedSize: MaterialStateProperty.all<Size>(Size(70, 20)),
        ),
        onPressed: () {
          _game = Game();
        },
        child: Text('NEW GAME',
            style: TextStyle(fontSize: 10.0, color: Colors.black)),
      ),
    );
  }

  void _showMaterialDialog(int x,int count) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Good Job!'),
          content: Column(
            children: [
              Text('The answer is $x'),
              Text('You have made $count guesses'),
              Text('$number'),
            ],
          ),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo_number.png',
          width: 240.0, // 160 = 1 inch
        ),
        Text(
          'GUESS THE NUMBER',
          style: GoogleFonts.kanit(fontSize: 22.0),
        ),
      ],
    );
  }

  Widget _buildMainContent() {
    return _guessNumber == null
        ? SizedBox.shrink()
        : Column(
            children: [
              Text('$_guessNumber'),
              Text('$_feedback'),
              Container(
                child: check
                    ? Column(
                        children: [
                          _buildButton_newgame(),
                        ],
                      )
                    : null,
              ),
            ],
          );
  }

  Widget _buildInputPanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 10.0),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            //String input = _controller.text;
            setState(() {
              _guessNumber = _controller.text;
              int? guess = int.tryParse(_guessNumber);
              number.add(guess);
              if (guess != null) {
                var result = _game.doGuess(guess);
                if (result == 0) {
                  //ถูก
                  check = true;
                  _feedback = 'CORRECT!';

                  var x = _game.getAnswer();
                  var count = number.length;

                  _showMaterialDialog(x,count);
                } else if (result == 1) {
                  //มากไป
                  _feedback = 'TOO HIGH!';
                } else {
                  //น้อยไป
                  _feedback = 'TOO LOW!';
                }
              }
            });
          },
          child: Text('GUESS'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow.shade100,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildHeader(),
                _buildMainContent(),
                _buildInputPanel(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
