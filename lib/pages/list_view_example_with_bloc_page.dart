import 'package:bloc_structure/bloc/listexample/list_example_bloc.dart';
import 'package:bloc_structure/bloc/listexample/list_example_state.dart';
import 'package:bloc_structure/models/list_model.dart';
import 'package:bloc_structure/pages/list_item_details_page.dart';
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
                if (entries.isNotEmpty)
                  Container(
                    padding:const EdgeInsets.all(10),
                    child: ListView.builder(itemBuilder: (_, i) {
                      return ListTile(
                        title: Text('${entries[i].title}'),
                        subtitle: Text('${entries[i].body}'),
                        contentPadding:const EdgeInsets.all(5.0),
                        shape: Border.all(color: Colors.pink, width: 1.0,style: BorderStyle.solid),
                        onTap: () {
                          // Handle your onTap here.
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ListItemDetailsPage(listDataModel:entries[i] ,),));
                        },
                      );
                    }),
                  ),
                /*
                 List item with seprated
                 *  */  
                // ListView.separated(
                //   padding: const EdgeInsets.all(8),
                //   itemCount: entries.length,
                //   itemBuilder: (BuildContext context, int index) {
                //     return Container(
                //       height: 50,
                //       color: Colors.amber,
                //       child:
                //           Center(child: Text('Entry ${entries[index].title}')),
                //     );
                //   },
                //   separatorBuilder: (BuildContext context, int index) =>
                //       const Divider(),
                // ),
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

  Widget _loaderView(bool isLoading) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return const SizedBox.shrink();
    }
  }
}
