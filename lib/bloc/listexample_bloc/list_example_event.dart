import 'package:equatable/equatable.dart';

abstract class ListExampleEvent extends Equatable{}

class FetchListItemsEvent extends ListExampleEvent{
   FetchListItemsEvent();
  
  @override
 
  List<Object?> get props => [];

  
}
