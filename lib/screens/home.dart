/*
 * @Author: Json.Xu
 * @Date: 2021-07-15 10:04:49
 * @LastEditTime: 2021-07-19 23:59:00
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\screens\home.dart
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.transparent, // 导航栏颜色
      statusBarColor: Colors.transparent, // 状态栏颜色
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ));

    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(250, 250, 250, 1),
                image: DecorationImage(
                    image: AssetImage("assets/images/frame_869.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 42.0, 16.0, 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "爱佳梯业主端",
                        style: TextStyle(
                            color: Color.fromRGBO(51, 51, 51, 1),
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/settings/中国人');
                        },
                        child: Image.asset('assets/images/settings.png'),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "通知",
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 14.0),
                        ),
                        GestureDetector(
                            // When the child is tapped, show a snackbar.
                            onTap: () {
                              Navigator.pushNamed(context, '/notice',
                                  arguments: "11123");
                            },
                            // The custom button
                            child: Container(
                                child: Text(
                              '更多  >',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromRGBO(196, 196, 196, 1)),
                            )))
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () =>
                        {Navigator.pushNamed(context, "/noticedetail")},
                    child: Container(
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
                                        color: Color.fromRGBO(86, 68, 69, 1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.keyboard_arrow_right,
                                    color: Color.fromRGBO(102, 102, 102, 1)),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "乘梯",
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontSize: 14.0),
                        ),
                        Container(
                            height: 20.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(204, 46, 119, 0.1),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.error_outline,
                                    size: 12,
                                    color: Color.fromRGBO(166, 0, 86, 1)),
                                Text(
                                  '请点击附近设备乘梯',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      color: Color.fromRGBO(166, 0, 86, 1)),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: 244.0,
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
                              Image.asset("assets/images/untitled.png"),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "暂无设备",
                                  style: TextStyle(
                                      color: Color.fromRGBO(86, 68, 69, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 71,
                                height: 21,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.50),
                                  border: Border.all(
                                    color: Color(0xffa60056),
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 49,
                                      child: Text(
                                        "附近设备",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color(0xffa60056),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '连接状态 :',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(141, 118, 115, 1),
                                          fontSize: 12.0),
                                    ),
                                    Text(
                                      '未连接',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1),
                                          fontSize: 12.0),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '选择楼层 :',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(141, 118, 115, 1),
                                          fontSize: 12.0),
                                    ),
                                    Text(
                                      '选择楼层 >',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1),
                                          fontSize: 12.0),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '自动乘梯 :',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(141, 118, 115, 1),
                                          fontSize: 12.0),
                                    ),
                                    Switch(
                                      value: false,
                                      onChanged: (value) {},
                                      inactiveThumbColor: Colors.grey,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(196, 196, 196, 1),
                                  elevation: 0.0),
                              child: Text(
                                "乘梯",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/visitor");
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Container(
                                height: 54.0,
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/fangke.png"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("访客分享",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Container(
                              height: 54.0,
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/chengyuan.png"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("成员管理",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 6.0),
                            child: Container(
                              height: 54.0,
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/shebei.png"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("我的设备",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Container(
                              height: 54.0,
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/phone.png"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "物业电话",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
      backgroundColor: Colors.white,
    );
  }
}
