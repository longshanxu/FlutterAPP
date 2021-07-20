/*
 * @Author: Json.Xu
 * @Date: 2021-07-19 14:30:13
 * @LastEditTime: 2021-07-19 16:01:45
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\screens\visitor_shebei.dart
 */

import 'package:flutter/material.dart';

class VisitorShebei extends StatelessWidget {
  const VisitorShebei({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        appBar: AppBar(
          toolbarHeight: 46,
          title: Text(
            "选择电梯",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 108,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color.fromRGBO(164, 112, 60, 1),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 3,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 6,
                        height: 106,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8)),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xff6e5553), Color(0xff5c4a4b)],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: 40.0,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 14.0),
                                            child: Image.asset(
                                                "assets/images/tikongicon.png"),
                                          ),
                                        ],
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              "assets/images/changyong.png"),
                                        ],
                                      ))
                                ],
                              ),
                            ),
                            Divider(
                              height: 1,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8, left: 14),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Text(
                                        "电梯名称：",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                141, 118, 115, 1),
                                            fontSize: 12),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Text("已有住户：",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  141, 118, 115, 1),
                                              fontSize: 12)))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 2, left: 14),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Text("华大科创楼华大科创楼科创楼",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    86, 68, 69, 1),
                                                fontSize: 12)),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Text("64",
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(86, 68, 69, 1),
                                              fontSize: 12)))
                                ],
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
        ));
  }
}
