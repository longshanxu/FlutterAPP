import 'package:json_annotation/json_annotation.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo {
  @JsonKey(name: 'id')
  dynamic id;
  @JsonKey(name: 'userID')
  int? userId;
  @JsonKey(name: 'submitID')
  dynamic submitId;
  @JsonKey(name: 'companyID')
  dynamic companyId;
  @JsonKey(name: 'userName')
  dynamic userName;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'userType')
  dynamic userType;

  UserInfo({
    this.id,
    this.userId,
    this.submitId,
    this.companyId,
    this.userName,
    this.phone,
    this.token,
    this.userType,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return _$UserInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
