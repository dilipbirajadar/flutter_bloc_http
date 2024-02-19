import 'package:bloc_structure/data/app_api.dart';
import 'package:bloc_structure/models/album.dart';

class AppRepository{
  final AppApi appApi;

  const AppRepository({
    required this.appApi
  });

 Future<Album> fetchAlbum(){
   return appApi.fetchAlbum();
  }
}