import 'package:flutter/material.dart';
import 'package:medtracker/gets.dart';
import 'package:medtracker/scan.dart';
import 'package:medtracker/popular.dart';
import 'package:medtracker/gets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                'Hi,',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'sans',
                                  fontWeight: FontWeight.w200,
                                  fontSize: 27,
                                ),
                              ),
                              Text(
                                ' Lisa!',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'sans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/arrow.png',
                                height: 19,
                                width: 19,
                              ),
                              Text('Paris',
                                  style: TextStyle(
                                    fontFamily: 'sans',
                                    fontSize: 12,
                                    color: Color(0xff747474),
                                  ))
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/v1.png',
                        height: 56,
                        width: 56,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 49,
                    width: 321,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffE2E2E2),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Search for Medicine',
                        hintStyle:
                            TextStyle(color: Color(0xff747474), fontSize: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 160,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6E2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'We are here to \n find your medicine',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: 'sans',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => Gets()))),
                                child: Container(
                                  height: 30,
                                  width: 120,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xffAAD4C1),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Image.asset(
                          'assets/images/doc.png',
                          height: 130,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: 'sans',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Image.asset('assets/images/Slider.png',
                            height: 26, width: 26),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Stack(children: [
                          Container(
                            height: 175,
                            width: 132,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Color(0xffF5F6E2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Image.asset('assets/images/tab1.png',
                                      height: 68, width: 68),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Paracetamol',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'sans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                  width: 110,
                                ),
                                Text('Tablet',
                                    style: TextStyle(
                                      color: Color(0xff747474),
                                      fontFamily: 'sans',
                                      fontWeight: FontWeight.normal,
                                    )),
                              ],
                            ),
                          ),
                        ]),
                        Stack(children: [
                          Container(
                            height: 175,
                            width: 132,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Color(0xffF5F6E2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Image.asset('assets/images/tab2.png',
                                      height: 68, width: 68),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Dolo 650',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'sans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                  width: 110,
                                ),
                                Text('Tablet',
                                    style: TextStyle(
                                      color: Color(0xff747474),
                                      fontFamily: 'sans',
                                      fontWeight: FontWeight.normal,
                                    )),
                              ],
                            ),
                          ),
                        ]),
                        Stack(children: [
                          Container(
                            height: 175,
                            width: 132,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Color(0xffF5F6E2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Image.asset('assets/images/tab1.png',
                                      height: 68, width: 68),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Paracetamol',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'sans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                  width: 110,
                                ),
                                Text('Tablet',
                                    style: TextStyle(
                                      color: Color(0xff747474),
                                      fontFamily: 'sans',
                                      fontWeight: FontWeight.normal,
                                    )),
                              ],
                            ),
                          ),
                        ]),
                        Stack(children: [
                          Container(
                            height: 175,
                            width: 132,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Color(0xffF5F6E2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Image.asset('assets/images/tab2.png',
                                      height: 68, width: 68),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Dolo 650',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'sans',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                  width: 110,
                                ),
                                Text('Tablet',
                                    style: TextStyle(
                                      color: Color(0xff747474),
                                      fontFamily: 'sans',
                                      fontWeight: FontWeight.normal,
                                    )),
                              ],
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Scan()))),
                    child: Container(
                      height: 44,
                      width: 250,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xffAAD4C1),
                          borderRadius: BorderRadius.circular(7)),
                      child: Text(
                        'Scan',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
