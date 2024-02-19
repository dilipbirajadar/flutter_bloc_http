// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListDataModel _$ListDataModelFromJson(Map<String, dynamic> json) =>
    ListDataModel(
      userId: json['user_id'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$ListDataModelToJson(ListDataModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
