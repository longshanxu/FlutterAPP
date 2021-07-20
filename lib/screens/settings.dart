/*
 * @Author: Json.Xu
 * @Date: 2021-07-18 14:09:52
 * @LastEditTime: 2021-07-19 23:30:41
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\screens\settings.dart
 */

import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      appBar: AppBar(
        toolbarHeight: 46,
        title: Text(
          "设置",
          style: TextStyle(
              color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              elevation: 0,
              margin: EdgeInsets.only(top: 10.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.person,
                                size: 25.0, color: Colors.grey[500]),
                            Container(width: 10),
                            Text("头像"),
                            Spacer(),
                            CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage("assets/example/squirrel.jpg"),
                            ),
                            Icon(Icons.chevron_right,
                                size: 25.0, color: Colors.grey[500]),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 17.5),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.email,
                                size: 25.0, color: Colors.red[400]),
                            Container(width: 10),
                            Text("姓名"),
                            Spacer(),
                            Text("Jsonxu"),
                            Icon(Icons.chevron_right,
                                size: 25.0, color: Colors.grey[500]),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 17.5),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.phone,
                                size: 25.0, color: Colors.blue[300]),
                            Container(width: 10),
                            Text(
                              "手机号",
                            ),
                            Spacer(),
                            Text("15221261174"),
                            Icon(Icons.chevron_right,
                                size: 25.0, color: Colors.grey[500]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.only(top: 10.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 17.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "退出登录",
                              style: TextStyle(
                                  color: Color.fromRGBO(166, 0, 86, 1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
