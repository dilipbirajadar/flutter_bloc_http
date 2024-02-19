import 'package:bloc_structure/data/app_api.dart';
import 'package:bloc_structure/models/album.dart';
import 'package:bloc_structure/models/list_model.dart';

class AppRepository{
  final AppApi appApi;

  const AppRepository({
    required this.appApi
  });

 Future<Album> fetchAlbum(){
   return appApi.fetchAlbum();
  }

Future<List<ListDataModel>> fetchListData(){
   return appApi.fetchListItem();
  }

}