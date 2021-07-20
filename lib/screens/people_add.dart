/*
 * @Author: Json.Xu
 * @Date: 2021-07-18 22:08:18
 * @LastEditTime: 2021-07-19 13:50:06
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\screens\people_add.dart
 */

import 'package:flutter/material.dart';

class PeoPleAdd extends StatelessWidget {
  const PeoPleAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 46,
          title: Text(
            "添加新成员",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        floatingActionButton: Container(
            height: 44,
            margin: EdgeInsets.fromLTRB(22, 0, 22, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xffc35386), Color(0xffb5276a)],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "确认",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ],
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(
                      right: 5,
                    ),
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color(0x4ca60056),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0c000000),
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "手动添加",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xffa60056),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color(0x4ca60056),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0c000000),
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "从通讯录添加",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xffa60056),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 14, 0),
            child: Stack(children: [
              Container(
                height: 117.0,
                child: Container(
                  height: 107.0,
                  margin: EdgeInsets.only(top: 10, right: 5),
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 20),
                              child: Text("姓名："),
                            ),
                            Expanded(
                              child: TextField(
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(top: 8, bottom: 8),
                                    border: InputBorder.none,
                                    hintText: '输入真实姓名',
                                    hintStyle: TextStyle(fontSize: 14.0),
                                    isDense: true,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 6.0),
                              child: Text("手机号："),
                            ),
                            Expanded(
                              child: TextField(
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(top: 8, bottom: 8),
                                    border: InputBorder.none,
                                    hintText: '输入手机号码',
                                    hintStyle: TextStyle(fontSize: 14.0),
                                    isDense: true,
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child:
                    Icon(Icons.cancel, color: Color.fromRGBO(130, 130, 130, 1)),
              ),
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
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
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: Color.fromRGBO(166, 0, 86, 1),
                ),
                Text(
                  "继续添加",
                  style: TextStyle(
                      color: Color.fromRGBO(166, 0, 86, 1), fontSize: 14.0),
                )
              ],
            ),
          ),
        ]));
  }
}
