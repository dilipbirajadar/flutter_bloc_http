import 'package:bloc_structure/bloc/product/product_detail_state.dart';
import 'package:bloc_structure/bloc/product/product_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BlocExamplePage extends StatelessWidget {
  const BlocExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bloc  Example'),
        ),
        body:  Center(
          child:BlocConsumer<ProductDetailsBloc,ProductDetailsState>(builder: (context, state) {
            if(state.isLoading){
              return  const CircularProgressIndicator();
            }else{
             const CircularProgressIndicator();
            }
            return Text(state.title);
          }, listener: (context, state) {
            if(state.title == 'Dilip'){
              //we can navigate or some operation
            }
                      
          },),
        ),
      );
  }
}