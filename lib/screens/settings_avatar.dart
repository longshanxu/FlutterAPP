/*
 * @Author: Json.Xu
 * @Date: 2021-07-18 18:54:42
 * @LastEditTime: 2021-07-18 19:10:38
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\screens\settings_avatar.dart
 */

import 'package:flutter/material.dart';

class SettingsAvatar extends StatelessWidget {
  const SettingsAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 46,
        title: Text(
          "个人头像",
          style: TextStyle(
              color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [Image.asset("assets/example/squirrel.jpg")],
        ),
      ),
    );
  }
}
