// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      id: json['id'],
      userId: json['userID'] as int?,
      submitId: json['submitID'],
      companyId: json['companyID'],
      userName: json['userName'],
      phone: json['phone'] as String?,
      token: json['token'] as String?,
      userType: json['userType'],
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'id': instance.id,
      'userID': instance.userId,
      'submitID': instance.submitId,
      'companyID': instance.companyId,
      'userName': instance.userName,
      'phone': instance.phone,
      'token': instance.token,
      'userType': instance.userType,
    };
