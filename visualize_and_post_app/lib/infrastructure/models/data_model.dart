// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

// import 'dart:convert';

// DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

// String dataModelToJson(DataModel data) => json.encode(data.toJson());

import '../../domain/entities/data_api.dart';

//Define el modelo de la clase Data
class DataModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  DataModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

//Método que mapea el objeto respesta al DataModel
  factory DataModel.fromJsonMap(Map<String, dynamic> json) => DataModel(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed'],
      );

//convierte un DataModel a Data
  Data toDataEntity() =>
      Data(userId: userId, id: id, title: title, completed: completed);
}
