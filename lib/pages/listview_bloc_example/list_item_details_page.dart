import 'package:bloc_structure/models/list_model.dart';
import 'package:flutter/material.dart';

class ListItemDetailsPage extends StatelessWidget {
  final ListDataModel listDataModel;
  const ListItemDetailsPage({super.key, required this.listDataModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Details Page'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(listDataModel.title ?? ''),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                child: const Text('Go Back'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
