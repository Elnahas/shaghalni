import 'package:cloud_firestore/cloud_firestore.dart';

import '../data/models/city_model.dart';

CityModel cityModelFromJson(dynamic json) {
  return CityModel.fromJson(json);
}

dynamic cityModelToJson(CityModel city) {
  return city.toJson();
}

Timestamp timestampFromJson(dynamic json) {
  return json is Timestamp
      ? json
      : Timestamp.fromMillisecondsSinceEpoch(json as int);
}

dynamic timestampToJson(Timestamp timestamp) =>
    timestamp.millisecondsSinceEpoch;
