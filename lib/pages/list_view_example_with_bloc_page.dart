import 'package:bloc_structure/bloc/listexample/list_example_bloc.dart';
import 'package:bloc_structure/bloc/listexample/list_example_state.dart';
import 'package:bloc_structure/models/list_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewExampleWithBlocPage extends StatelessWidget {
  const ListViewExampleWithBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ListDataModel> entries = [];
    bool isLoading = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc  Example'),
      ),
      body: Center(
        child: BlocConsumer<ListExampleBloc, ListExampleState>(
          builder: (context, state) {
            //load list data.
            return Stack(
              children: [
                ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      color: Colors.amber,
                      child:
                          Center(child: Text('Entry ${entries[index].title}')),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
                _loaderView(isLoading),
              ],
            );
          },
          listener: (context, state) {
            if (state is ListDataState) {
              entries = state.listDataModel;
              isLoading = false;
            }
          },
        ),
      ),
    );
  }
  
 Widget _loaderView( bool isLoading) {
  if(isLoading){
   return const Center(child:  CircularProgressIndicator());
  }else{
    return const SizedBox.shrink();
  }
 
  }
}
