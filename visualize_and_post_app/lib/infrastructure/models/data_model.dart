// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

// import 'dart:convert';

// DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

// String dataModelToJson(DataModel data) => json.encode(data.toJson());

import '../../domain/entities/data_appi.dart';

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

    factory DataModel.fromJsonMap(Map<String, dynamic> json) => DataModel(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed'],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };

  Data toDataEntity() => Data(
    userId: userId, 
    id: id, 
    title: title, 
    completed: completed);

}
