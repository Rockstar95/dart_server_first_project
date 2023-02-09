import 'dart:convert';
import 'dart:core';

import 'package:googleapis/firestore/v1.dart';

import '../utils/date_presentation.dart';

class FirestoreDocument {
  /// The time at which the document was created.
  ///
  /// This value increases monotonically when a document is deleted then
  /// recreated. It can also be compared to values from other documents and the
  /// `read_time` of a query.
  ///
  /// Output only.
  DateTime? createTime, updateTime;
  Map<String, dynamic>? data;

  /// The resource name of the document, for example
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  String? path;

  FirestoreDocument({
    this.data,
    this.path,
    this.createTime,
    this.updateTime,
  });

  FirestoreDocument.fromJson(Map<String, dynamic> _json) {
    data = _json.containsKey('fields') ? (_json['fields'] as Map<String, dynamic>).map((key, item) => MapEntry(key,Value.fromJson(item as Map<String, dynamic>),),): null;
    path = _json['name']?.toString() ?? "";
    createTime = _json.containsKey('createTime') ? DateTime.tryParse(_json['createTime'].toString()) : null;
    updateTime = _json.containsKey('updateTime') ? DateTime.tryParse(_json['updateTime'].toString()) : null;
  }

  FirestoreDocument.fromValueJson(Map<String, Value> _json) {
    data = _json.containsKey('fields')? (_json['fields'] as Map<String, dynamic>).map((key, item) => MapEntry(key,Value.fromJson(item as Map<String, dynamic>),),): null;
    path = _json['name']?.toString() ?? "";
    createTime = _json.containsKey('createTime') ? DateTime.tryParse(_json['createTime'].toString()) : null;
    updateTime = _json.containsKey('updateTime') ? DateTime.tryParse(_json['updateTime'].toString()) : null;
  }

  static dynamic getValueFromValueObject(Value value) {
    if (value.arrayValue != null) {
      List list = [];
      list.addAll((value.arrayValue!.values ?? []).map((e) => FirestoreDocument.getValueFromValueObject(e)).toList());
      return list;
    }
    else if (value.booleanValue != null) {
      return value.booleanValue;
    }
    else if (value.bytesValue != null) {
      return utf8.encode(value.bytesValue ?? "");
    }
    else if (value.doubleValue != null) {
      return value.doubleValue;
    }
    else if (value.geoPointValue != null) {
      return value.geoPointValue;
    }
    else if (value.integerValue != null) {
      return int.tryParse(value.integerValue ?? "");
    }
    else if (value.mapValue != null) {
      Map<String, dynamic> map = {};
      map.addAll((value.mapValue!.fields ?? {}).map((key, value) => MapEntry<String, dynamic>(key, FirestoreDocument.getValueFromValueObject(value))));
      return map;
    }
    else if (value.nullValue != null) {
      return null;
    }
    else if (value.referenceValue != null) {
      return value.referenceValue;
    }
    else if (value.stringValue != null) {
      return value.stringValue;
    }
    else if (value.timestampValue != null) {
      DateTime? dateTime = value.timestampValue!.isNotEmpty ? DateTime.tryParse(value.timestampValue!) : null;
      return dateTime;
    }
  }

  static dynamic getJsonValueFromClassObject(dynamic value) {
    if(value is LatLng) {
      return (value as LatLng).toJson();
    }
    else if(value is DateTime) {
      return DatePresentation.yyyyMMddHHmmssFormatter((value as DateTime));
    }
    else if(value is List) {
      List list = [];
      list.addAll(value.map((e) => getJsonValueFromClassObject(e)).toList());
      return list;
    }
    else if(value is Map) {
      Map map = {};
      map.addAll(value.map((key, value) => MapEntry(key, getJsonValueFromClassObject(value))));
      return map;
    }
    else {
      return value;
    }
  }

  static Map<String, dynamic> fromClassToJson(Map<String, dynamic> map) {
    Map<String, dynamic> json = {};
    map.entries.forEach((element) {
      json[element.key] = getJsonValueFromClassObject(element.value);
    });
    return json;
  }

  Map<String, dynamic> toJson() => {
    'createTime': createTime != null ? DatePresentation.yyyyMMddHHmmssFormatter(createTime!) : null,
    'fields': data ?? {},
    'name': path ?? "",
    'updateTime': updateTime != null ? DatePresentation.yyyyMMddHHmmssFormatter(updateTime!) : null,
  };
}