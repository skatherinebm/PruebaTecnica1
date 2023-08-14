import 'package:flutter/material.dart';
import 'package:visualize_and_post_app/config/helpers/get_data.dart';

import '../../config/helpers/post_data.dart';
import '../../domain/entities/data_api.dart';

//Clase que define a Provider como gestor de estado
class DataProvider extends ChangeNotifier {
  final GetData getData = GetData();
  final PostData postData = PostData();

//arreglo donde se guardará la información traída de la api
  List<Data> dataList = [];
  Map<String, dynamic> postResponse = <String, int>{};

//método que trae la información de la api y notifica a los listeners
  Future<void> bringData() async {
    dataList = await getData.getData();
    notifyListeners();
  }

//método que envía la información a la api y notifica a los listeners
  Future<void> sendData(Data data) async {
    postResponse = await postData.postData(data);
    notifyListeners();
  }
}
