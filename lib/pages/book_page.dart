import 'package:bloc_structure/data/app_api.dart';
import 'package:bloc_structure/models/album.dart';
import 'package:bloc_structure/repository/app_repository.dart';
import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _MyBookPageState();
}

class _MyBookPageState extends State<BookPage> {
    late Future<Album> futureAlbum;
    final appRepository = AppRepository(appApi: AppApi());
    @override
  void initState() {
    futureAlbum =appRepository.fetchAlbum();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      );
    
  }
}