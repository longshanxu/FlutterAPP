/*
 * @Author: Json.Xu
 * @Date: 2021-07-18 19:13:04
 * @LastEditTime: 2021-07-19 23:19:35
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\screens\notice.dart
 */

import 'package:flutter/material.dart';

class NoticeList extends StatelessWidget {
  const NoticeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 46,
        title: Text(
          "历史通知",
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
      body: Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "今天 10:00",
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(158, 158, 158, 1)),
              ),
            ),
            Container(
              height: 152.0,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.03),
                      offset: Offset(0, 0),
                      blurRadius: 6)
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 14, 16, 11),
                    child: Row(
                      children: [
                        Image.asset("assets/images/tongzhi.png"),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "维修通知",
                            style: TextStyle(
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_right,
                            color: Color.fromRGBO(200, 200, 200, 1)),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    dense: true,
                    title: Text(
                      '通知标题',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      "通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容通知内容",
                      style: TextStyle(
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 6, 16, 10),
                    child: Row(
                      children: [
                        Image.asset("assets/images/frame.png"),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '2021.06.06 6:00',
                            style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1),
                                fontSize: 12.0),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
