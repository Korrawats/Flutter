import 'package:flutter/material.dart';
import 'package:hello/models/food_item.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  //var items = List<String>.generate(1000, (index) => 'Item $index');

  var items = [
    FoodItem(
      id: 1,
      name: "ข้าวไข่เจียว",
      price: 25,
      image: "assets/images/kao_kai_jeaw.jpg",
    ),
    FoodItem(
      id: 2,
      name: "ข้าวหมูแดง",
      price: 25,
      image: "assets/images/kao_moo_dang.jpg",
    ),
    FoodItem(
      id: 3,
      name: "ข้าวผัด",
      price: 25,
      image: "assets/images/kao_pad.jpg",
    ),
    FoodItem(
      id: 4,
      name: "ราดหน้า",
      price: 25,
      image: "assets/images/rad_na.jpg",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          FoodItem item = items[index];

          return Card(
            child: Row(
              children: [
                Image.asset(
                  '${item.image}',
                  width: 60,
                  height: 60,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  '${item.name}',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  ' ${item.price} บาท',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          );
        },
      )),
    );
  }
}
