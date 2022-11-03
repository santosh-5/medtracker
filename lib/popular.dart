import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/backarrow.png', height: 20),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 84,
                    width: 405,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.zero,
                      color: Color(0xffBAD5AD),
                    ),
                  ),
                  Positioned(
                      top: 15,
                      child: Image.asset('assets/images/v1.png', height: 163)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
