import 'dart:async';

import 'package:bloc_structure/bloc/listexample_bloc/list_example_event.dart';
import 'package:bloc_structure/bloc/listexample_bloc/list_example_state.dart';
import 'package:bloc_structure/repository/app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListExampleBloc extends Bloc<ListExampleEvent,ListExampleState>{
    final AppRepository appRepository;

    ListExampleBloc({
      required this.appRepository,
    }):super( ListDataInitialState()){
   on<FetchListItemsEvent>(_onFetchListEvent);
 

  }

  FutureOr<void> _onFetchListEvent(FetchListItemsEvent event, Emitter<ListExampleState> emit) async{
    final listResponse = await appRepository.fetchListData();
    emit(ListDataState(listDataModel: listResponse));
  }
}