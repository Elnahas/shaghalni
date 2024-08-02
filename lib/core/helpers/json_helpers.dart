import 'package:cloud_firestore/cloud_firestore.dart';

import '../data/models/city_model.dart';

CityModel cityModelFromJson(dynamic json) {
  return CityModel.fromJson(json);
}

dynamic cityModelToJson(CityModel city) {
  return city.toJson();
}

int timestampToJson(Timestamp timestamp) => timestamp.millisecondsSinceEpoch;
Timestamp timestampFromJson(dynamic json) {
  if (json is Timestamp) {
    return json;
  } else if (json is int) {
    return Timestamp.fromMillisecondsSinceEpoch(json);
  } else {
    throw Exception("Cannot convert json to Timestamp");
  }
}

DateTime dateTimeFromJson(Timestamp timestamp) => timestamp.toDate();
Timestamp dateTimeToJson(DateTime date) => Timestamp.fromDate(date);

