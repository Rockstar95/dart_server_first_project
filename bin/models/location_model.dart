

import 'package:googleapis/firestore/v1.dart';

import '../utils/date_presentation.dart';

class LocationModel {
  LatLng? geoPoint;
  String? address, city, state;
  DateTime? timestamp;
  bool isLocationSelected = false;
  LocationModel({
    this.geoPoint,
    this.address,
    this.city,
    this.isLocationSelected = false,
    this.state,
    this.timestamp,
  });

  static LocationModel fromMap(Map<String, dynamic> map) {
    LatLng? geoPoint;
    String? address, city, state;
    DateTime? timestamp;
    

    geoPoint = map['geoPoint'];
    address = map['address'] != null ? map['address'].toString() : "";
    city = map['city'] != null ? map['city'].toString() : "";
    state = map['state'] != null ? map['state'].toString() : "";
    timestamp = map['timestamp'];

    return LocationModel(
      geoPoint: geoPoint,
      address: address,
      city: city,
      state: state,
      timestamp: timestamp,
    );
  }

  static LocationModel elasticFromMap(Map<String, dynamic> map) {
    LatLng? geoPoint;
    String? address, city, state;
    DateTime? timestamp;

    geoPoint = map['geoPoint']?['lat'] != null && map['geoPoint']?['lon'] != null ? LatLng(latitude: map['geoPoint']['lat'], longitude: map['geoPoint']['lon']) : null;

    address = map['address'] != null ? map['address'].toString() : "";
    city = map['city'] != null ? map['city'].toString() : "";
    state = map['state'] != null ? map['state'].toString() : "";
    timestamp = map['timestamp'] != null && map['timestamp'].isNotEmpty ? DateTime.tryParse(map['timestamp']) : null;

    return LocationModel(
      geoPoint: geoPoint,
      address: address,
      city: city,
      state: state,
      timestamp: timestamp,
    );
  }

  void updateFromMap(Map<String, dynamic> map) {
    geoPoint = map['geoPoint'];
    address = map['address'] != null ? map['address'].toString() : "";
    city = map['city'] != null ? map['city'].toString() : "";
    state = map['state'] != null ? map['state'].toString() : "";
    timestamp = map['timestamp'];
  }

  void elasticUpdateFromMap(Map<String, dynamic> map) {
    geoPoint = map['geoPoint']?['lat'] != null && map['geoPoint']?['lon'] != null ? LatLng(latitude: map['geoPoint']['lat'], longitude: map['geoPoint']['lon']) : null;

    address = map['address'] != null ? map['address'].toString() : "";
    city = map['city'] != null ? map['city'].toString() : "";
    state = map['state'] != null ? map['state'].toString() : "";
    timestamp = map['timestamp'] != null && map['timestamp'].isNotEmpty ? DateTime.tryParse(map['timestamp']) : null;
  }

  Map<String, dynamic> toMap() {
    return {
      "geoPoint": geoPoint,
      "address": address ?? "",
      "city": city ?? "",
      "state": state ?? "",
      "timestamp": timestamp,
    };
  }

  Map<String, dynamic> elasticToMap() {
    return {
      "geoPoint": geoPoint != null ? {"lat": geoPoint!.latitude, "lon": geoPoint!.longitude} : null,
      "address": address ?? "",
      "city": city ?? "",
      "state": state ?? "",
      "timestamp": timestamp != null ? DatePresentation.yyyyMMddHHmmssFormatter(timestamp!) : null,
    };
  }
  static bool compareLocation(LocationModel l1,LocationModel l2) {
    if (l1.address! == l2.address && l1.city! == l2.city && l1.state! == l2.state && l1.geoPoint!.latitude == l2.geoPoint!.latitude && l1.geoPoint!.longitude == l2.geoPoint!.longitude) {
      return true;
    }
    else {
      return false;
    }
  }

  @override
  String toString() {
    return "Address:${address}, City:${city}, State:${state}, TimeStamp:${timestamp}";
  }
}
