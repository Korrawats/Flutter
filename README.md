# Flutter
void main() {

  var r = Random();
  var answer = r.nextInt(100);

  var textColor = Colors.lightGreenAccent;

  var textStyle = TextStyle(
      fontSize: 100,
      color: textColor
  );

  var textWidget = Text(
      '$answer',
      textDirection: TextDirection.ltr,
      style: textStyle,
  );

  var centerWidget = Center(child: textWidget);

  runApp(centerWidget);

}
