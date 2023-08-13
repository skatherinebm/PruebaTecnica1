

import 'package:dio/dio.dart';
import 'package:visualize_and_post_app/infrastructure/models/data_model.dart';

import '../../domain/entities/data_appi.dart';

class GetData {
  final _dio = Dio();
  Future<Data> getData() async {
    final response = await _dio.get('https://jsonplaceholder.typicode.com/todos');
    final dataModel = DataModel.fromJsonMap(response.data[0]);
    return dataModel.toDataEntity();
  }

}