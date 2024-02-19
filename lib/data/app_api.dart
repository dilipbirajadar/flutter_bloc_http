import 'dart:convert';

import 'package:bloc_structure/models/album.dart';
import 'package:bloc_structure/models/list_model.dart';
import 'package:http/http.dart' as http;

class AppApi {

/*
 *Fetch album data
 * */  
Future<Album> fetchAlbum() async{
   final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/2'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

/*
 *Fetch list api data
 * */  
Future<List<ListDataModel>> fetchListItem() async{
   final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/posts')); 

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final responseBody = jsonDecode(response.body) as List;
    final dataList = responseBody.map((dynamic item) => ListDataModel.fromJson(item)).toList();
    return dataList;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
}