import 'package:bloc_structure/bloc/listexample/list_example_bloc.dart';
import 'package:bloc_structure/bloc/listexample/list_example_event.dart';
import 'package:bloc_structure/data/app_api.dart';
import 'package:bloc_structure/pages/list_view_example_with_bloc_page.dart';
import 'package:bloc_structure/repository/app_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewExampleRoute extends StatelessWidget {
  const ListViewExampleRoute({super.key});

  @override
  Widget build(BuildContext context) {
      final appRepository = AppRepository(appApi: AppApi());
    return BlocProvider(create:  (BuildContext context) => ListExampleBloc(appRepository: appRepository)..add( FetchListItemsEvent()),
      child:const ListViewExampleWithBlocPage(),);
  }
}