import 'package:dio/dio.dart';
import 'package:visualize_and_post_app/infrastructure/models/data_model.dart';

import '../../domain/entities/data_api.dart';

class GetData {
  final _dio = Dio();

//Realiza la peticion asíncrona a la api y retorna una lista de tipo Data
  Future<List<Data>> getData() async {
    final response =
        await _dio.get('https://jsonplaceholder.typicode.com/todos');
    List<dynamic> data = response.data;
    List<Map<String, dynamic>> listaDeResponseData =
        data.map((item) => item as Map<String, dynamic>).toList();
    final List<Data> newData = listaDeResponseData
        .map((singularData) =>
            DataModel.fromJsonMap(singularData).toDataEntity())
        .toList();
    return newData;
  }
}
