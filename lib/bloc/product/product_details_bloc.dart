
import 'dart:async';

import 'package:bloc_structure/bloc/product/product_detail_event.dart';
import 'package:bloc_structure/bloc/product/product_detail_state.dart';
import 'package:bloc_structure/repository/app_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class ProductDetailsBloc extends Bloc<ProductDetailsEvent, ProductDetailsState>{
  //if we want to call api we can call through reporitory.
  final AppRepository appRepository;

   ProductDetailsBloc({
    required this.appRepository
  }) : super(const ProductDetailsState(title: '', description: '', price: 0, isNegotiable: false,isLoading: true)){
   on<ProductTitleChangedEvent>(_onTitleChangeEvent);
   on<ProductDescriptionChangedEvent>(_onDescriptionChanged);
   on<ProductPriceChangedEvent>(_onPriceChanged);
   on<ProductIsNegotialbleChangedEvent>(_onIsNegotiableChanged);

  }


  FutureOr<void> _onTitleChangeEvent(ProductTitleChangedEvent event, Emitter<ProductDetailsState> emit) {
    //process business logic and emit respective state.
    //we can call api also from repository.
    emit(state.copyWith(title: 'Mr Dilip',isLoading: false));
  }

  FutureOr<void> _onDescriptionChanged(ProductDescriptionChangedEvent event, Emitter<ProductDetailsState> emit) {
     //process business logic and emit respective state.
        emit(state.copyWith(description: 'Hey Dilip',isLoading: false));
  }

  FutureOr<void> _onPriceChanged(ProductPriceChangedEvent event, Emitter<ProductDetailsState> emit) {
     //process business logic and emit respective state.
      emit(state.copyWith(price: 10,isLoading: false));
  }

  FutureOr<void> _onIsNegotiableChanged(ProductIsNegotialbleChangedEvent event, Emitter<ProductDetailsState> emit) {
    //process business logic and emit respective state.
     emit(state.copyWith(isNegotiable: true,isLoading: false));
  }
}