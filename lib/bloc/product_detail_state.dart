import 'package:equatable/equatable.dart';

class ProductDetailsState extends Equatable {
  final String title;
  final String description;
  final int price;
  final bool isNegotiable;
  final bool isLoading;

  const ProductDetailsState({
    required this.title,
    required this.description,
    required this.price,
    required this.isNegotiable,
    required this.isLoading,
  });

ProductDetailsState copyWith({
String? title,
String? description,
int? price,
bool? isNegotiable,
bool? isLoading,

}){
  return ProductDetailsState(
    title: title??this.title,
  description: description?? this.description, 
  price: price??this.price,
  isNegotiable: isNegotiable??this.isNegotiable,
  isLoading: isLoading??this.isLoading,
  );
}


  @override
  List<Object?> get props => [title,description,price,isNegotiable,isLoading];
  }
