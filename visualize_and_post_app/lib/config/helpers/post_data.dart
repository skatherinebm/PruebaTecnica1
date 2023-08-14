import 'package:dio/dio.dart';

import '../../domain/entities/data_api.dart';

class PostData {
  final _dio = Dio();

  //Recibe un objeto de tipo Data, lo envía por el método POST y retorna un objeto de confirmación

  Future<Map<String, dynamic>> postData(Data dataToPost) async {
    final response = await _dio
        .post('https://jsonplaceholder.typicode.com/posts', data: dataToPost);
    Map<String, dynamic> responsePost = response.data;
    return responsePost;
  }
}
