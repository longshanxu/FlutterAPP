/*
 * @Author: Json.Xu
 * @Date: 2021-07-19 22:17:18
 * @LastEditTime: 2021-07-20 00:00:00
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\route\route_handlers.dart
 */

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:moch_flutter_app/screens/home.dart';
import 'package:moch_flutter_app/screens/notice.dart';
import 'package:moch_flutter_app/screens/notice_detail.dart';
import 'package:moch_flutter_app/screens/settings.dart';
import 'package:moch_flutter_app/screens/visitor.dart';

var rootHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  return Home();
});

var settingsHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  // print(params);
  print(params['ss'][0]);
  return Settings();
});

var noticeHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  print(context?.settings?.arguments);
  return NoticeList();
});

var noticeDetailHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  return NoticeDetail();
});

var visitorHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  return Visitor();
});
