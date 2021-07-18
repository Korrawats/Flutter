import 'dart:io';
import 'dart:math';


void main(){

  //List<int> myList =[1,2,3];
  //myList.add(4);

  /* kid
  for(int i =0;i<myList.length;i++){
    print(myList[i]);
  }
   */
  /////////////////////////////
  /* pro
  for(var item in myList){
    print(item);
  }
   */
  /////////////////////////////
  /* expert
  myList.forEach((element) {
    print(element);
    //not break
  });
   */


  //const เป็นค่าคงที่ไม่สามารถแก้ไขได้
  const int MAX_RANDOM = 100;
  int count = 0;

  Random r = new Random();
  int answer = r.nextInt(MAX_RANDOM)+1;

  print('$answer');
  //print("Guess the number between 1 and 100");
  //stdout.write ไม่ขึ้นบรรทัดใหม่


  print('╔═════════════════════════════════════════');
  print('║    GUESS THE NUMBER');
  print('╟─────────────────────────────────────────');

  while(true) {
    stdout.write("║ Guess the number between 1 and $MAX_RANDOM: ");
    String? input = stdin.readLineSync();
    if (input == null) {
      return;
    }

    if (int.tryParse(input) == null) {
      //print(int.tryParse(input).toString());
      continue;
    } else {
      count++;
      if (int.tryParse(input) == answer) {
        print('║ ' + int.tryParse(input).toString() + ' IS CORRECT ❤,' +' total guesses: $count');
        print('╟─────────────────────────────────────────');
        print('║       THE END');
        print('╚═════════════════════════════════════════');
        break;
      } else if (int.tryParse(input)! > answer) {
        print('║ ' + int.tryParse(input).toString() + ' IS TOO HIGH!▲');
        print('╟─────────────────────────────────────────');
      } else if (int.tryParse(input)! < answer) {
        print('║ ' + int.tryParse(input).toString() + ' IS TOO LOW!▼');
        print('╟─────────────────────────────────────────');
      }
    }
  }

}