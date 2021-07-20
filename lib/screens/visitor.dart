/*
 * @Author: Json.Xu
 * @Date: 2021-07-19 13:51:27
 * @LastEditTime: 2021-07-19 23:59:20
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\screens\visitor.dart
 */

import 'package:flutter/material.dart';

class Visitor extends StatelessWidget {
  const Visitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      appBar: AppBar(
        toolbarHeight: 46,
        title: Text(
          "访客分享",
          style: TextStyle(
              color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "使用权限",
              style: TextStyle(
                  fontSize: 12, color: Color.fromRGBO(141, 118, 115, 1)),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(top: 10),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color.fromRGBO(141, 118, 115, 0.5),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/example/photo_female_3.jpg",
                        width: 174,
                        height: 99,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                          size: 24,
                        ),
                        Text(
                          "选择电梯",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(86, 68, 69, 1)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        padding: EdgeInsets.all(20.0),
      ),
    );
  }
}
