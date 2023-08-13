import 'package:flutter/material.dart';
import 'package:visualize_and_post_app/config/helpers/get_data.dart';

import '../../domain/entities/data_appi.dart';

class DataProvider extends ChangeNotifier {
  final ScrollController dataScrollControler = ScrollController();
  final GetData getData = GetData();

  bool initialLoading = true;

  List<Data> dataList = [];

  Future<void> bringData() async {
    dataList = await getData.getData();
    initialLoading = false;
    notifyListeners();
  }
}