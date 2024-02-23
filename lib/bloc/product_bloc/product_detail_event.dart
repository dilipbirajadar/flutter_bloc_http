
import 'package:equatable/equatable.dart';

abstract class ProductDetailsEvent extends Equatable{
  const ProductDetailsEvent();
}

class ProductTitleChangedEvent extends ProductDetailsEvent{
  final String title;

 const ProductTitleChangedEvent({required this.title});

  @override
  List<Object?> get props => [title];
  
}

class ProductDescriptionChangedEvent extends ProductDetailsEvent{
  final String description;

 const ProductDescriptionChangedEvent({required this.description});
 
  @override
  List<Object?> get props => [description];
  
}

class ProductPriceChangedEvent extends ProductDetailsEvent{
  final int price;

 const ProductPriceChangedEvent({required this.price});
 
  @override
  List<Object?> get props => [price];
  
}

class ProductIsNegotialbleChangedEvent extends ProductDetailsEvent{
  final bool isNegotialble;

 const ProductIsNegotialbleChangedEvent({required this.isNegotialble});
 
  @override
  List<Object?> get props => [isNegotialble];
  
}