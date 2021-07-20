/*
 * @Author: Json.Xu
 * @Date: 2021-07-20 18:50:52
 * @LastEditTime: 2021-07-20 18:54:10
 * @LastEditors: Json.Xu
 * @Description: 用户信息表
 * @FilePath: \moch_flutter_app\lib\db\db_User.dart
 */

class User {
  final int id;
  final String name;
  final String phone;
  final String token;

  User(this.id, this.name, this.phone, this.token);
}
