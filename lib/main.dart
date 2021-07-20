/*
 * @Author: Json.Xu
 * @Date: 2021-07-13 15:28:38
 * @LastEditTime: 2021-07-21 00:14:08
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\main.dart
 */

import 'package:dio/dio.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:moch_flutter_app/config/application.dart';
import 'package:moch_flutter_app/db/db_Helper.dart';
import 'package:moch_flutter_app/db/db_init.dart';
import 'package:moch_flutter_app/route/routes.dart';
import 'package:sqflite/sqflite.dart';
import 'api/diohttp.dart';

class AppComponent extends StatefulWidget {
  const AppComponent({Key? key}) : super(key: key);

  @override
  _AppComponentState createState() => _AppComponentState();
}

class _AppComponentState extends State<AppComponent> {
  _AppComponentState() {
    //初始化路由
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;

    //初始化http请求
    final dio = Dio();
    DioHttp.configureDio(dio);
    Application.dio = dio;
    //初始化数据
    initDB();
  }

  void initDB() async {
    Application.db = await DBinit.initDB();

    SQLProvider.insert(Application.db);

    List<Map<String, Object?>> b = await Application.db.query("Test");

    print(b);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SourceHanSansRegular'),
      title: "梯控",
      onGenerateRoute: Application.router.generator,
      debugShowCheckedModeBanner: false,
    );
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppComponent());
}
