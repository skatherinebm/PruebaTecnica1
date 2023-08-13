import 'package:flutter/material.dart';
import 'package:visualize_and_post_app/config/helpers/get_data.dart';

import '../../domain/entities/data_appi.dart';

class DataProvider extends ChangeNotifier {
  final ScrollController dataScrollControler = ScrollController();
  final GetData getData = GetData();

  List<Data> dataList = [];

  Future<void> bringData() async {
    final broughtData = await getData.getData();
    print('Hola');
    dataList.add(broughtData);
    notifyListeners();
  }
}