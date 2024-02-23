import 'package:bloc_structure/bloc/product_bloc/product_detail_event.dart';
import 'package:bloc_structure/bloc/product_bloc/product_details_bloc.dart';
import 'package:bloc_structure/data/app_api.dart';
import 'package:bloc_structure/pages/simple_bloc_example/bloc_example_page.dart';
import 'package:bloc_structure/repository/app_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocExampleRoutePage extends StatelessWidget {
  const BlocExampleRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
        final appRepository = AppRepository(appApi: AppApi());
    return BlocProvider(
      create: (BuildContext context) => ProductDetailsBloc(appRepository: appRepository)..add( const ProductTitleChangedEvent(title: 'Dilip')),
      child:const BlocExamplePage(),
    );
  }
}