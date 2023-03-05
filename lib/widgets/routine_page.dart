import 'package:flutter/material.dart';
import 'package:ux1_fitness/widgets/button_icon_inc_decre.dart';
import 'package:ux1_fitness/widgets/card_routine.dart';
import 'package:avatar_glow/avatar_glow.dart';

class RoutinePage extends StatefulWidget {
  const RoutinePage({Key? key}) : super(key: key);

  @override
  State<RoutinePage> createState() => _RoutinePageState();
}

class _RoutinePageState extends State<RoutinePage> {
  bool active = false;
  int count = 0;

  bool isSwitched = false;
  bool isSwitched2 = false;

  bool activeBorder = false;

  int intentsPressButton = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SafeArea(
          child: Column(
            children: [
              NameInfoUser(),
              SizedBox(height: 20),
              Container(
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
                                      if (active == false) {
                                        active = true;
                                      } else {
                                        active = false;
                                      }
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
                  )),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    ButtonIconIncDecre(),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count++;
                              intentsPressButton++;
                            });
                          },
                          child: Container(
                              width: 100,
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(23),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.keyboard_arrow_up_rounded,
                                  size: 30,
                                  color: active ? Colors.black : Colors.grey,
                                ),
                              )),
                        ),
                        SizedBox(height: 10),
                        Container(
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
                                        color: active
                                            ? Colors.black
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text("x$count",
                                            style: TextStyle(
                                                color: active
                                                    ? Colors.white
                                                    : Colors.blueGrey.shade200,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                      )),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.fitness_center, size: 60),
                                    SizedBox(height: 15),
                                    Text("Biceps",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19,
                                            color: active
                                                ? Colors.black
                                                : Colors.blueGrey.shade200))
                                  ],
                                ),
                              ],
                            )),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              intentsPressButton++;
                              activeBorder = true;
                              if (count > 0) {
                                count--;
                              }
                            });
                          },
                          child: Container(
                              width: 100,
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: activeBorder
                                        ? Colors.black
                                        : Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(23),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 30,
                                  color: active ? Colors.black : Colors.grey,
                                ),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                  width: 190,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                      child: Text("Start now",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))))
            ],
          ),
        )
      ],
    ));
  }
}

Widget NameInfoUser() {
  return Row(
    children: [
      Container(
          padding: const EdgeInsets.all(15),
          child: Image.asset(
            "assets/images/emoji.png",
            height: 70,
            width: 70,
          )),
      SizedBox(width: 12),
      Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Wade Warren",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          SizedBox(height: 8),
          Row(
            children: const [
              Icon(Icons.panorama_fisheye_rounded),
              SizedBox(width: 7),
              Text(
                "LEVEL 5",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
        ],
      )),
      SizedBox(width: 110),
      Icon(
        Icons.more_vert_rounded,
        size: 35,
      )
    ],
  );
}
