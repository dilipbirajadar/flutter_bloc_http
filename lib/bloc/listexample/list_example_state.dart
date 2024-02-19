import 'package:bloc_structure/models/list_model.dart';
import 'package:equatable/equatable.dart';

abstract class ListExampleState extends Equatable {

}

class ListDataInitialState extends ListExampleState{

   ListDataInitialState();
   
  @override
  List<Object?> get props => [];
  
}

class ListDataState extends ListExampleState{
  final List<ListDataModel> listDataModel;

   ListDataState({required this.listDataModel});
   
  @override
  List<Object?> get props => [listDataModel];
  
}