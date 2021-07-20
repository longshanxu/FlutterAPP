/*
 * @Author: Json.Xu
 * @Date: 2021-07-19 22:05:42
 * @LastEditTime: 2021-07-20 23:19:13
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\config\application.dart
 */

import 'package:dio/dio.dart';
import 'package:fluro/fluro.dart';
import 'package:sqflite/sqflite.dart';

class Application {
  static late final FluroRouter router;
  static late final Dio dio;
  static late final Database db;
}
