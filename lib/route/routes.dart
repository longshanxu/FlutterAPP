/*
 * @Author: Json.Xu
 * @Date: 2021-07-19 22:38:20
 * @LastEditTime: 2021-07-19 23:53:30
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\route\routes.dart
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:moch_flutter_app/route/route_handlers.dart';

class Routes {
  static String root = "/";
  static String settings = "/settings/:ss";
  static String notice = "/notice";
  static String noticedetail = "/noticedetail";
  static String visitor = "/visitor";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(root, handler: rootHandler);
    router.define(settings,
        handler: settingsHandler, transitionType: TransitionType.inFromRight);
    router.define(notice,
        handler: noticeHandler, transitionType: TransitionType.inFromRight);
    router.define(noticedetail,
        handler: noticeDetailHandler,
        transitionType: TransitionType.inFromBottom);
    router.define(visitor,
        handler: visitorHandler, transitionType: TransitionType.inFromLeft);
  }
}
