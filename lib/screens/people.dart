/*
 * @Author: Json.Xu
 * @Date: 2021-07-18 20:49:28
 * @LastEditTime: 2021-07-18 21:39:52
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\screens\people.dart
 */

import 'package:flutter/material.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

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
          TextButton(
              onPressed: () {},
              child: Text(
                '管理',
                style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1), fontSize: 14),
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Card(
              color: Color.fromRGBO(237, 239, 242, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(57),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.only(top: 14),
              elevation: 0,
              child: Row(
                children: [
                  Container(
                    width: 16,
                  ),
                  Icon(Icons.search,
                      size: 16, color: Color.fromRGBO(151, 152, 154, 1)),
                  Container(
                    width: 5,
                  ),
                  Expanded(
                      child: TextField(
                          maxLines: 1,
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 12),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 8, bottom: 8),
                            border: InputBorder.none,
                            hintText: '搜索',
                            hintStyle: TextStyle(fontSize: 12.0),
                            isDense: true,
                          ))),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 14),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 14, bottom: 14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/example/squirrel.jpg"),
                          ),
                          width: 35,
                          height: 35),
                      Container(width: 15),
                      Expanded(
                        child: Text("张三",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(51, 51, 51, 1))),
                      ),
                      Icon(
                        Icons.arrow_back,
                      ),
                    ],
                  ),
                ),
                Divider(height: 0)
              ],
            ),
          )
        ],
      ),
    );
  }
}
