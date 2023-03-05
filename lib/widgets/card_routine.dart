import 'package:flutter/material.dart';

class CardRoutineInfo extends StatefulWidget {
  CardRoutineInfo({Key? key}) : super(key: key);

  @override
  State<CardRoutineInfo> createState() => _CardRoutineInfoState();
}

class _CardRoutineInfoState extends State<CardRoutineInfo> {
  bool isSwitched = false;
  bool isSwitched2 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        width: 355,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Full Strenght Workout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 24),
              Row(
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(width: 8),
                  Container(
                      child: const Text("45 MIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ))),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Row(
                    children: [
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            isSwitched2 = false;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: Colors.pink,
                        activeColor: Colors.white,
                      ),
                      Container(
                          child: Text("PLANK",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)))
                    ],
                  ),
                  const SizedBox(width: 50),
                  Row(
                    children: [
                      Switch(
                        value: isSwitched2,
                        onChanged: (value) {
                          setState(() {
                            isSwitched2 = value;
                            isSwitched = false;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: Colors.pink,
                        activeColor: Colors.white,
                      ),
                      Container(
                          child: Text("BICEPS",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)))
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
