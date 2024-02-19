import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

class BaseApi{
  void checkStatus(Response response){
    if(response.statusCode>=200 && response.statusCode<300){
      return;
    }

    throw HttpException(response.body);
  }

  Future<T> handleJSONResponse<T>(Response response, FutureOr<T> Function(dynamic json) handler) async{
    checkStatus(response);

    try{
      return await handler(jsonDecode(response.body));
    }catch (exception){
      //print(exception);
      rethrow;
    }
  }
}