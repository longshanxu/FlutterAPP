/*
 * @Author: Json.Xu
 * @Date: 2021-07-18 19:21:07
 * @LastEditTime: 2021-07-19 23:55:24
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\screens\notice_detail.dart
 */

import 'package:flutter/material.dart';

class NoticeDetail extends StatelessWidget {
  const NoticeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 46,
        title: Text(
          "维修通知",
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "通知通知通知通知通知通知通知通知",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1), fontSize: 16.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      size: 14,
                      color: Color.fromRGBO(153, 153, 153, 1),
                    ),
                    Text(
                      " 2021.06.06",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color.fromRGBO(153, 153, 153, 1),
                          fontSize: 12.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Text(
                    " 通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Color.fromRGBO(153, 153, 153, 1),
                        fontSize: 12.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset("assets/example/squirrel.jpg"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
