

import '../utils/date_presentation.dart';

class UserActivityModel {
  int? activity_point;
  double? activity_accuracy;
  DateTime? activity_last_date;

  UserActivityModel({
    this.activity_point,
    this.activity_accuracy,
    this.activity_last_date,
  });

  static UserActivityModel fromMap(Map<String, dynamic> map) {
    int? activity_point;
    double? activity_accuracy;
    DateTime? activity_last_date;

    activity_point = map['activity_point'] ?? 0;
    activity_accuracy = map['activity_accuracy']?.toDouble() ?? 0.0;
    activity_last_date = map['activity_last_date'];

    return UserActivityModel(
      activity_point: activity_point,
      activity_accuracy: activity_accuracy,
      activity_last_date: activity_last_date,
    );
  }

  /*static UserActivityModel sembastFromMap(Map<String, dynamic> map) {
    int? activity_point;
    double? activity_accuracy;
    Timestamp? activity_last_date;

    activity_point = map['activity_point'] ?? 0;
    activity_accuracy = map['activity_accuracy'] ?? 0.0;
    activity_last_date = map['activity_last_date'] != null && map['activity_last_date'].isNotEmpty ? Timestamp.fromDate(DateTime.parse(map['activity_last_date'])) : null;

    return UserActivityModel(
      activity_point: activity_point,
      activity_accuracy: activity_accuracy,
      activity_last_date: activity_last_date,
    );
  }*/

  static UserActivityModel elasticFromMap(Map<String, dynamic> map) {
    int? activity_point;
    double? activity_accuracy;
    DateTime? activity_last_date;

    activity_point = map['activity_point'] ?? 0;
    activity_accuracy = map['activity_accuracy']?.toDouble() ?? 0.0;
    activity_last_date = map['activity_last_date'] != null && map['activity_last_date'].isNotEmpty ? DateTime.tryParse(map['activity_last_date']) : null;

    return UserActivityModel(
      activity_point: activity_point,
      activity_accuracy: activity_accuracy,
      activity_last_date: activity_last_date,
    );
  }

  void updateFromMap(Map<String, dynamic> map) {
    activity_point = map['activity_point'] ?? 0;
    activity_accuracy = map['activity_accuracy']?.toDouble() ?? 0.0;
    activity_last_date = map['activity_last_date'];
  }

  Map<String, dynamic> toMap() {
    return {
      "activity_point" : activity_point ?? 0,
      "activity_accuracy" : activity_accuracy?.toDouble() ?? 0.0,
      "activity_last_date" : activity_last_date,
    };
  }

  /*Map<String, dynamic> sembastToMap() {
    return {
      "activity_point" : activity_point ?? 0,
      "activity_accuracy" : activity_accuracy?.toDouble() ?? 0.0,
      "activity_last_date" : activity_last_date != null ? DatePresentation.yyyyMMddHHmmssFormatter(activity_last_date!) : null,
    };
  }*/

  Map<String, dynamic> elasticToMap() {
    return {
      "activity_point" : activity_point ?? 0,
      "activity_accuracy" : activity_accuracy?.toDouble() ?? 0.0,
      "activity_last_date" : activity_last_date != null ? DatePresentation.yyyyMMddHHmmssFormatter(activity_last_date!) : null,
    };
  }

  @override
  String toString() {
    return "activity_point:${activity_point}, activity_accuracy:${activity_accuracy}, activity_last_date:${activity_last_date}";
  }
}