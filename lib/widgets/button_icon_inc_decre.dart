import 'package:flutter/material.dart';

class ButtonIconIncDecre extends StatefulWidget {
  ButtonIconIncDecre({Key? key}) : super(key: key);

  @override
  State<ButtonIconIncDecre> createState() => _ButtonIconIncDecreState();
}

class _ButtonIconIncDecreState extends State<ButtonIconIncDecre> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonIncrease1stButtonCount(false),
        SizedBox(height: 10),
        ButtonIconWithLabel(
          "Plank",
          0,
          false,
          Icon(Icons.speed_rounded, color: Colors.blueGrey.shade200, size: 60),
        ),
        SizedBox(height: 10),
        ButtonDecrease1stButtonCount(false)
      ],
    );
  }
}

Widget ButtonDecrease1stButtonCount(bool active) {
  return Container(
      width: 100,
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(23),
      ),
      child: Center(
        child: Icon(
          Icons.keyboard_arrow_down_rounded,
          size: 30,
          color: active ? Colors.black : Colors.grey,
        ),
      ));
}

Widget ButtonIconWithLabel(String label, int count, bool active, Widget icon) {
  return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: active
            ? Color.fromRGBO(226, 249, 188, 1)
            : Color.fromARGB(255, 229, 232, 234),
        borderRadius: BorderRadius.circular(30),
      ),
      width: 160,
      height: 170,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 90.0),
            child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: active ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("x$count",
                      style: TextStyle(
                          color:
                              active ? Colors.white : Colors.blueGrey.shade200,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(height: 15),
              Text(label,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: active ? Colors.black : Colors.blueGrey.shade200))
            ],
          ),
        ],
      ));
}

Widget ButtonIncrease1stButtonCount(bool active) {
  return Container(
      width: 100,
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(23),
      ),
      child: Center(
        child: Icon(
          Icons.keyboard_arrow_up_rounded,
          size: 30,
          color: active ? Colors.black : Colors.grey,
        ),
      ));
}
