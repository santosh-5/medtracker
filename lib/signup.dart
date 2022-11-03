import 'package:flutter/material.dart';
import 'package:medtracker/home.dart';
import 'package:medtracker/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6E2),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 180,
                ),
                Container(
                  child: Stack(
                    children: [
                      Text(
                        'Med',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: 'sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65, top: 27),
                        child: Text(
                          'tracker',
                          style: TextStyle(
                            color: Color(0xffAAD4C1),
                            fontFamily: 'sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 49,
                  width: 321,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your Name',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff0F7986), width: 1.5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 49,
                  width: 321,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'someone@example.com',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff0F7986), width: 1.5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 49,
                  width: 321,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff0F7986), width: 1.5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 49,
                  width: 321,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Confirm Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff0F7986), width: 1.5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 44,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Home()))),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffAAD4C1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'sans',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'sans',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        ' Login',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'sans',
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
