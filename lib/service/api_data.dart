import 'package:dio/dio.dart';


class ApiData{
  Future<Response> getData()async{
   try{
     Response response =await Dio().get("https://run.mocky.io/v3/17596a82-40b6-4d98-a6d0-23627117235c");
     return  response;
   }catch(e){
     throw Exception('Failed get data: $e');
   }
  }
}
