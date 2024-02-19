import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
  fieldRename: FieldRename.snake,  
)
class ListDataModel extends Equatable{

  final int? userId;
  final int? id;
  final String? title;
  final  String? body;

  const ListDataModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
   });

   factory ListDataModel.fromJson(Map<String,dynamic> json) => _$ListDataModelFromJson(json);

   Map<String,dynamic> toJson() => _$ListDataModelToJson(this);
   
     @override
    
     List<Object?> get props => [title,body,id,userId,];
   

}