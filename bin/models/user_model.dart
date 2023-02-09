//User Data Model
import '../utils/date_presentation.dart';
import '../utils/my_print.dart';
import 'location_model.dart';
import 'user_activity_model.dart';
import 'user_plan_model.dart';

class UserModel {
  String? id, name, description, gender, mobile, email, loginType, notification_token, web_notification_token, deactivated_message, online_status;
  DateTime? createdtime, dateOfBirth, last_opened, last_online;
  LocationModel? currentLocation, my_last_location;
  List<LocationModel>? my_locations;
  bool? isMyLocationSelected;
  Map<String,double>? interests;
  bool? isProfileComplete, isTotalProfileComplete;
  List<String>? images, blocklist;
  UserPlanModel? user_plan;
  UserActivityModel? user_activity;
  List<String>? my_likes, my_dislikes, me_liked, my_matches, venues;
  bool? isAccountDeactivated, isAccountBlocked, isIncognitoOn;

  UserModel({
    this.id, this.name, this.description, this.gender, this.mobile, this.email, this.loginType, this.notification_token, this.web_notification_token, this.deactivated_message, this.online_status,
    this.createdtime, this.dateOfBirth, this.last_opened, this.last_online,
    this.currentLocation,
    this.my_last_location,
    this.my_locations,
    this.isMyLocationSelected,
    this.interests,
    this.isProfileComplete, this.isTotalProfileComplete,
    this.images, this.blocklist,
    this.user_plan,
    this.user_activity,
    this.me_liked, this.my_dislikes, this.my_likes, this.my_matches, this.venues,
    this.isAccountDeactivated, this.isAccountBlocked, this.isIncognitoOn,
  });

  static UserModel fromMap(Map<String, dynamic> map) {
    //MyPrint.printOnConsole("UserModel.fromMap called");

    String? id, name, description, gender, mobile, email, loginType, notification_token, web_notification_token, deactivated_message, online_status;
    DateTime? createdtime, dateOfBirth, last_opened, last_online;
    LocationModel? currentLocation, my_last_location;
    List<LocationModel>? my_locations;
    bool? isMyLocationSelected;
    // List<String>? interests;
    Map<String,double>? interests;
    bool? isProfileComplete, isTotalProfileComplete;
    List<String>? images, blocklist;
    UserPlanModel user_plan;
    UserActivityModel? user_activity;
    List<String>? my_likes, my_dislikes, me_liked, my_matches, venues;
    bool? isAccountDeactivated, isAccountBlocked, isIncognitoOn;

    id = map['id'] != null ? map['id'] : "";
    name = map['name'] != null ? map['name'] : "";
    description = map['description'] != null ? map['description'] : "";
    gender = map['gender'] != null ? map['gender'] : "";
    mobile = map['mobile'] != null ? map['mobile'] : "";
    email = map['email'] != null ? map['email'] : "";
    loginType = map['loginType'] != null ? map['loginType'] : "";
    notification_token = map['notification_token'] != null ? map['notification_token'] : "";
    web_notification_token = map['web_notification_token'] != null ? map['web_notification_token'] : "";
    deactivated_message = map['deactivated_message'] != null ? map['deactivated_message'] : "";
    online_status = map['online_status'] != null ? map['online_status'] : "";
    createdtime = map['createdtime'];
    dateOfBirth = map['dateOfBirth'];
    last_opened = map['last_opened'];
    last_online = map['last_online'];

    currentLocation = map['currentLocation'] != null && map['currentLocation'].isNotEmpty ? LocationModel.fromMap(map['currentLocation']) : LocationModel.fromMap({});
    my_last_location = map['my_last_location'] != null && map['my_last_location'].isNotEmpty ? LocationModel.fromMap(map['my_last_location']) : LocationModel.fromMap({});

    my_locations = [];
    try {
      List<Map<String, dynamic>> list = List.from(List.castFrom(map['my_locations'] ?? []));
      list.forEach((Map<String, dynamic> map) {
        if(map != null && map.isNotEmpty) {
          my_locations!.add(LocationModel.fromMap(map));
        }
      });
    }
    catch(e) {
      MyPrint.printOnConsole("Error in Parsing My Locations in User Model.fromMap:${e}");
    }
    // days = map['days'] != null ? Map.from(map["days"]) : {};


    isMyLocationSelected = map['isMyLocationSelected'] != null ? map['isMyLocationSelected'] : false;
    // interests = map['interests'] != null ? List.from(map['interests']) : [];
    // interests = map['interests'] != null ? Map.from(map["interests"]) : {};
    interests = {};
    try{
      Map<String,double> interestsMap = Map.from(Map.castFrom(map["interests"] ?? {}));
      interestsMap.forEach((key, value)  {
        if(key != null && key.isNotEmpty){
          interests!.addAll({key: value});
        }
      });
    } catch (e){
      MyPrint.printOnConsole("Error in parsing interests in User Model.fromMap : ${e}");
    }
    isProfileComplete = map['isProfileComplete'] != null ? map['isProfileComplete'] : false;
    isTotalProfileComplete = map['isTotalProfileComplete'] != null ? map['isTotalProfileComplete'] : false;
    images = map['images'] != null ? List.from(map['images']) : [];
    blocklist = map['blocklist'] != null ? List.from(map['blocklist']) : [];

    Map<String, dynamic> user_activity_map = map['user_activity'] != null ? Map.from(Map.castFrom(map['user_activity'])) : {};
    user_activity = UserActivityModel.fromMap(user_activity_map);

    Map<String, dynamic> user_plan_map = map['user_plan'] != null ? Map.from(Map.castFrom(map['user_plan'])) : {};
    user_plan = UserPlanModel.fromMap(user_plan_map);

    my_likes = map['my_likes'] != null ? List.from(map['my_likes']) : [];
    my_dislikes = map['my_dislikes'] != null ? List.from(map['my_dislikes']) : [];
    me_liked = map['me_liked'] != null ? List.from(map['me_liked']) : [];
    my_matches = map['my_matches'] != null ? List.from(map['my_matches']) : [];
    venues = List.from(map['venues'] ?? []);

    isAccountDeactivated = map['isAccountDeactivated'] != null ? map['isAccountDeactivated'] : false;
    isAccountBlocked = map['isAccountBlocked'] != null ? map['isAccountBlocked'] : false;
    isIncognitoOn = map['isIncognitoOn'] != null ? map['isIncognitoOn'] : false;

    return UserModel(
      id: id,
      name: name,
      description: description,
      gender: gender,
      mobile: mobile,
      email: email,
      loginType: loginType,
      notification_token: notification_token,
      web_notification_token: web_notification_token,
      deactivated_message: deactivated_message,
      online_status: online_status,
      createdtime: createdtime,
      dateOfBirth: dateOfBirth,
      last_opened: last_opened,
      last_online: last_online,
      currentLocation: currentLocation,
      my_last_location: my_last_location,
      my_locations: my_locations,
      isMyLocationSelected: isMyLocationSelected,
      interests: interests,
      isProfileComplete: isProfileComplete,
      isTotalProfileComplete: isTotalProfileComplete,
      images: images,
      user_plan: user_plan,
      user_activity: user_activity,
      my_likes: my_likes,
      my_dislikes: my_dislikes,
      me_liked: me_liked,
      my_matches: my_matches,
      venues: venues,
      blocklist: blocklist,
      isAccountDeactivated: isAccountDeactivated,
      isAccountBlocked: isAccountBlocked,
      isIncognitoOn: isIncognitoOn,
    );
  }

  /*static UserModel sembastFromMap(Map<String, dynamic> map) {
    String? id, name, description, gender, mobile, email, loginType, city, state, notification_token;
    Timestamp? createdtime, dateOfBirth, last_opened;
    LocationModel? currentLocation, my_last_location;
    List<LocationModel>? my_locations;
    bool? isMyLocationSelected;
    List<String>? interests;
    bool? isProfileComplete, isTotalProfileComplete;
    List<String>? images;
    UserPlanModel user_plan;
    UserActivityModel? user_activity;
    List<String>? my_likes, my_dislikes, me_liked, my_matches;
    bool? isAccountDeactivated, isAccountBlocked, isIncognitoOn;

    id = map['id'] != null ? map['id'] : "";
    name = map['name'] != null ? map['name'] : "";
    description = map['description'] != null ? map['description'] : "";
    gender = map['gender'] != null ? map['gender'] : "";
    mobile = map['mobile'] != null ? map['mobile'] : "";
    email = map['email'] != null ? map['email'] : "";
    loginType = map['loginType'] != null ? map['loginType'] : "";
    city = map['city'] != null ? map['city'] : "";
    state = map['state'] != null ? map['state'] : "";
    createdtime = map['createdtime'] != null && map['createdtime'].isNotEmpty ? Timestamp.fromDate(DateTime.parse(map['createdtime'])) : null;
    dateOfBirth = map['dateOfBirth'] != null && map['dateOfBirth'].isNotEmpty ? Timestamp.fromDate(DateTime.parse(map['dateOfBirth'])) : null;
    last_opened = map['last_opened'] != null && map['last_opened'].isNotEmpty ? Timestamp.fromDate(DateTime.parse(map['last_opened'])) : null;
    interests = map['interests'] != null ? List.from(map['interests']) : [];
    isProfileComplete = map['isProfileComplete'] != null ? map['isProfileComplete'] : false;
    isTotalProfileComplete = map['isTotalProfileComplete'] != null ? map['isTotalProfileComplete'] : false;
    images = map['images'] != null ? List.from(map['images']) : [];

    Map<String, dynamic> user_activity_map = map['user_activity'] != null ? Map.from(map['user_activity']) : {};
    user_activity = UserActivityModel.sembastFromMap(user_activity_map);

    Map<String, dynamic> user_plan_map = map['user_plan'] != null ? Map.from(map['user_plan']) : {};
    user_plan = UserPlanModel.sembastFromMap(user_plan_map);

    my_likes = map['my_likes'] != null ? List.from(map['my_likes']) : [];
    my_dislikes = map['my_dislikes'] != null ? List.from(map['my_dislikes']) : [];
    me_liked = map['me_liked'] != null ? List.from(map['me_liked']) : [];
    my_matches = map['my_matches'] != null ? List.from(map['my_matches']) : [];

    return UserModel(
      id: id,
      name: name,
      description: description,
      gender: gender,
      mobile: mobile,
      email: email,
      loginType: loginType,
      city: city,
      state: state,
      createdtime: createdtime,
      dateOfBirth: dateOfBirth,
      last_opened: last_opened,
      interests: interests,
      isProfileComplete: isProfileComplete,
      isTotalProfileComplete: isTotalProfileComplete,
      images: images,
      user_plan: user_plan,
      user_activity: user_activity,
      my_likes: my_likes,
      my_dislikes: my_dislikes,
      me_liked: me_liked,
      my_matches: my_matches,
    );
  }*/

  static UserModel elasticFromMap(Map<String, dynamic> map) {
    String? id, name, description, gender, mobile, email, loginType, notification_token, web_notification_token, deactivated_message, online_status;
    DateTime? createdtime, dateOfBirth, last_opened, last_online;
    LocationModel? currentLocation, my_last_location;
    List<LocationModel>? my_locations;
    bool? isMyLocationSelected;
    // List<String>? interests;
    Map<String,double> interests;
    bool? isProfileComplete, isTotalProfileComplete;
    List<String>? images, blocklist;
    UserPlanModel user_plan;
    UserActivityModel? user_activity;
    List<String>? my_likes, my_dislikes, me_liked, my_matches, venues;
    bool? isAccountDeactivated, isAccountBlocked, isIncognitoOn;

    id = map['id'] != null ? map['id'] : "";
    name = map['name'] != null ? map['name'] : "";
    description = map['description'] != null ? map['description'] : "";
    gender = map['gender'] != null ? map['gender'] : "";
    mobile = map['mobile'] != null ? map['mobile'] : "";
    email = map['email'] != null ? map['email'] : "";
    loginType = map['loginType'] != null ? map['loginType'] : "";
    notification_token = map['notification_token'] != null ? map['notification_token'] : "";
    web_notification_token = map['web_notification_token'] != null ? map['web_notification_token'] : "";
    deactivated_message = map['deactivated_message'] != null ? map['deactivated_message'] : "";
    online_status = map['online_status'] != null ? map['online_status'] : "";
    createdtime = map['createdtime'] != null && map['createdtime'].isNotEmpty ? DateTime.tryParse(map['createdtime']) : null;
    dateOfBirth = map['dateOfBirth'] != null && map['dateOfBirth'].isNotEmpty ? DateTime.tryParse(map['dateOfBirth']) : null;
    last_opened = map['last_opened'] != null && map['last_opened'].isNotEmpty ? DateTime.tryParse(map['last_opened']) : null;
    last_online = map['last_online'] != null && map['last_online'].isNotEmpty ? DateTime.tryParse(map['last_online']) : null;

    currentLocation = map['currentLocation'] != null && map['currentLocation'].isNotEmpty ? LocationModel.elasticFromMap(map['currentLocation']) : LocationModel.fromMap({});
    my_last_location = map['my_last_location'] != null && map['my_last_location'].isNotEmpty ? LocationModel.elasticFromMap(map['my_last_location']) : LocationModel.fromMap({});

    my_locations = [];
    try {
      List<Map<String, dynamic>> list = List.from(List.castFrom(map['my_locations'] ?? []));
      list.forEach((Map<String, dynamic> map) {
        if(map != null && map.isNotEmpty) {
          my_locations!.add(LocationModel.elasticFromMap(map));
        }
      });
    }
    catch(e) {
      MyPrint.printOnConsole("Error in Parsing My Locations in User Model.fromMap:${e}");
    }

    isMyLocationSelected = map['isMyLocationSelected'] != null ? map['isMyLocationSelected'] : false;

    interests = {};
    try{
      Map<String,dynamic> interestsMap = Map.from(Map.castFrom(map["interests"] ?? {}));
      interestsMap.forEach((key, value)  {
        if(key != null && key.isNotEmpty){
          interests.addAll({key: value});
        }
      });
    } catch (e){
      MyPrint.printOnConsole("Error in parsing interests in User Model.elasticFromMap : ${e}");
    }
    isProfileComplete = map['isProfileComplete'] != null ? map['isProfileComplete'] : false;
    isTotalProfileComplete = map['isTotalProfileComplete'] != null ? map['isTotalProfileComplete'] : false;
    images = map['images'] != null ? List.from(map['images']) : [];
    blocklist = map['blocklist'] != null ? List.from(map['blocklist']) : [];

    Map<String, dynamic> user_activity_map = map['user_activity'] != null ? Map.from(map['user_activity']) : {};
    user_activity = UserActivityModel.elasticFromMap(user_activity_map);

    Map<String, dynamic> user_plan_map = map['user_plan'] != null ? Map.from(map['user_plan']) : {};
    user_plan = UserPlanModel.elasticFromMap(user_plan_map);

    my_likes = map['my_likes'] != null ? List.from(map['my_likes']) : [];
    my_dislikes = map['my_dislikes'] != null ? List.from(map['my_dislikes']) : [];
    me_liked = map['me_liked'] != null ? List.from(map['me_liked']) : [];
    my_matches = map['my_matches'] != null ? List.from(map['my_matches']) : [];
    venues = List.from(map['venues'] ?? []);

    isAccountDeactivated = map['isAccountDeactivated'] != null ? map['isAccountDeactivated'] : false;
    isAccountBlocked = map['isAccountBlocked'] != null ? map['isAccountBlocked'] : false;
    isIncognitoOn = map['isIncognitoOn'] != null ? map['isIncognitoOn'] : false;

    return UserModel(
      id: id,
      name: name,
      description: description,
      gender: gender,
      mobile: mobile,
      email: email,
      loginType: loginType,
      notification_token: notification_token,
      web_notification_token: web_notification_token,
      deactivated_message: deactivated_message,
      online_status: online_status,
      createdtime: createdtime,
      dateOfBirth: dateOfBirth,
      last_opened: last_opened,
      last_online: last_online,
      currentLocation: currentLocation,
      my_last_location: my_last_location,
      my_locations: my_locations,
      isMyLocationSelected: isMyLocationSelected,
      interests: interests,
      isProfileComplete: isProfileComplete,
      isTotalProfileComplete: isTotalProfileComplete,
      images: images,
      user_plan: user_plan,
      user_activity: user_activity,
      my_likes: my_likes,
      my_dislikes: my_dislikes,
      me_liked: me_liked,
      my_matches: my_matches,
      venues: venues,
      blocklist: blocklist,
      isAccountDeactivated: isAccountDeactivated,
      isAccountBlocked: isAccountBlocked,
      isIncognitoOn: isIncognitoOn,
    );
  }

  void updateFromMap(Map<String, dynamic> map) {
    //MyPrint.printOnConsole("UserModel.updateFromMap called");

    id = map['id'] ?? "";
    name = map['name'] != null ? map['name'] : "";
    description = map['description'] != null ? map['description'] : "";
    gender = map['gender'] != null ? map['gender'] : "";
    mobile = map['mobile'] != null ? map['mobile'] : "";
    email = map['email'] != null ? map['email'] : "";
    loginType = map['loginType'] != null ? map['loginType'] : "";
    notification_token = map['notification_token'] != null ? map['notification_token'] : "";
    web_notification_token = map['web_notification_token'] != null ? map['web_notification_token'] : "";
    deactivated_message = map['deactivated_message'] != null ? map['deactivated_message'] : "";
    online_status = map['online_status'] != null ? map['online_status'] : "";
    createdtime = map['createdtime'];
    dateOfBirth = map['dateOfBirth'];
    last_opened = map['last_opened'];
    last_online = map['last_online'];

    currentLocation = map['currentLocation'] != null && map['currentLocation'].isNotEmpty ? LocationModel.fromMap(map['currentLocation']) : LocationModel.fromMap({});
    my_last_location = map['my_last_location'] != null && map['my_last_location'].isNotEmpty ? LocationModel.fromMap(map['my_last_location']) : LocationModel.fromMap({});

    my_locations = [];
    try {
      List<Map<String, dynamic>> list = List.from(List.castFrom(map['my_locations'] ?? []));
      list.forEach((Map<String, dynamic> map) {
        if(map != null && map.isNotEmpty) {
          my_locations!.add(LocationModel.fromMap(map));
        }
      });
    }
    catch(e) {
      MyPrint.printOnConsole("Error in Parsing My Locations in User Model.fromMap:${e}");
    }

    isMyLocationSelected = map['isMyLocationSelected'] != null ? map['isMyLocationSelected'] : false;

    interests = {};
    try{
      Map<String,dynamic> interestsMap = Map.from(Map.castFrom(map["interests"] ?? {}));
      interestsMap.forEach((key, value)  {
        if(key != null && key.isNotEmpty){
          interests!.addAll({key: value});
        }
      });
    } catch (e){
      MyPrint.printOnConsole("Error in parsing interests in User Model.updateFrom : ${e}");
    }
    isProfileComplete = map['isProfileComplete'] != null ? map['isProfileComplete'] : false;
    isTotalProfileComplete = map['isTotalProfileComplete'] != null ? map['isTotalProfileComplete'] : false;
    images = map['images'] != null ? List.from(map['images']) : [];
    blocklist = map['blocklist'] != null ? List.from(map['blocklist']) : [];

    Map<String, dynamic> user_activity_map = map['user_activity'] != null ? Map.from(Map.castFrom(map['user_activity'])) : {};
    user_activity = UserActivityModel.fromMap(user_activity_map);

    Map<String, dynamic> user_plan_map = map['user_plan'] != null ? Map.from(Map.castFrom(map['user_plan'])) : {};
    user_plan = UserPlanModel.fromMap(user_plan_map);

    my_likes = map['my_likes'] != null ? List.from(map['my_likes']) : [];
    my_dislikes = map['my_dislikes'] != null ? List.from(map['my_dislikes']) : [];
    me_liked = map['me_liked'] != null ? List.from(map['me_liked']) : [];
    my_matches = map['my_matches'] != null ? List.from(map['my_matches']) : [];
    venues = List.from(map['venues'] ?? []);

    isAccountDeactivated = map['isAccountDeactivated'] != null ? map['isAccountDeactivated'] : false;
    isAccountBlocked = map['isAccountBlocked'] != null ? map['isAccountBlocked'] : false;
    isIncognitoOn = map['isIncognitoOn'] != null ? map['isIncognitoOn'] : false;
  }

  void elasticUpdateFromMap(Map<String, dynamic> map) {
    id = map['id'] != null ? map['id'] : "";
    name = map['name'] != null ? map['name'] : "";
    description = map['description'] != null ? map['description'] : "";
    gender = map['gender'] != null ? map['gender'] : "";
    mobile = map['mobile'] != null ? map['mobile'] : "";
    email = map['email'] != null ? map['email'] : "";
    loginType = map['loginType'] != null ? map['loginType'] : "";
    notification_token = map['notification_token'] != null ? map['notification_token'] : "";
    web_notification_token = map['web_notification_token'] != null ? map['web_notification_token'] : "";
    deactivated_message = map['deactivated_message'] != null ? map['deactivated_message'] : "";
    online_status = map['online_status'] != null ? map['online_status'] : "";
    createdtime = map['createdtime'] != null && map['createdtime'].isNotEmpty ? DateTime.tryParse(map['createdtime']) : null;
    dateOfBirth = map['dateOfBirth'] != null && map['dateOfBirth'].isNotEmpty ? DateTime.tryParse(map['dateOfBirth']) : null;
    last_opened = map['last_opened'] != null && map['last_opened'].isNotEmpty ? DateTime.tryParse(map['last_opened']) : null;
    last_online = map['last_online'] != null && map['last_online'].isNotEmpty ? DateTime.tryParse(map['last_online']) : null;

    currentLocation = map['currentLocation'] != null && map['currentLocation'].isNotEmpty ? LocationModel.elasticFromMap(map['currentLocation']) : LocationModel.fromMap({});
    my_last_location = map['my_last_location'] != null && map['my_last_location'].isNotEmpty ? LocationModel.elasticFromMap(map['my_last_location']) : LocationModel.fromMap({});

    my_locations = [];
    try {
      List<Map<String, dynamic>> list = List.from(List.castFrom(map['my_locations'] ?? []));
      list.forEach((Map<String, dynamic> map) {
        if(map != null && map.isNotEmpty) {
          my_locations!.add(LocationModel.elasticFromMap(map));
        }
      });
    }
    catch(e) {
      MyPrint.printOnConsole("Error in Parsing My Locations in User Model.fromMap:${e}");
    }

    isMyLocationSelected = map['isMyLocationSelected'] != null ? map['isMyLocationSelected'] : false;

    interests = {};
    try{
      Map<String,dynamic> interestsMap = Map.from(Map.castFrom(map["interests"] ?? {}));
      interestsMap.forEach((key, value)  {
        if(key != null && key.isNotEmpty){
          interests!.addAll({key: value});
        }
      });
    } catch (e){
      MyPrint.printOnConsole("Error in parsing interests in User Model.elasticUpdateFromMap : ${e}");
    }
    isProfileComplete = map['isProfileComplete'] != null ? map['isProfileComplete'] : false;
    isTotalProfileComplete = map['isTotalProfileComplete'] != null ? map['isTotalProfileComplete'] : false;
    images = map['images'] != null ? List.from(map['images']) : [];
    blocklist = map['blocklist'] != null ? List.from(map['blocklist']) : [];

    Map<String, dynamic> user_activity_map = map['user_activity'] != null ? Map.from(map['user_activity']) : {};
    user_activity = UserActivityModel.elasticFromMap(user_activity_map);

    Map<String, dynamic> user_plan_map = map['user_plan'] != null ? Map.from(map['user_plan']) : {};
    user_plan = UserPlanModel.elasticFromMap(user_plan_map);

    my_likes = map['my_likes'] != null ? List.from(map['my_likes']) : [];
    my_dislikes = map['my_dislikes'] != null ? List.from(map['my_dislikes']) : [];
    me_liked = map['me_liked'] != null ? List.from(map['me_liked']) : [];
    my_matches = map['my_matches'] != null ? List.from(map['my_matches']) : [];
    venues = List.from(map['venues'] ?? []);

    isAccountDeactivated = map['isAccountDeactivated'] ?? false;
    isAccountBlocked = map['isAccountBlocked'] ?? false;
    isIncognitoOn = map['isIncognitoOn'] ?? false;
  }

  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> list = [];
    if(my_locations != null) {
      my_locations!.forEach((LocationModel locationModel) {
        list.add(locationModel.toMap());
      });
    }

    Map<String,dynamic> interestsMap = {};
    if(interests != null){
      interests!.forEach((key, value) {
        interestsMap.addAll({key: value});
      });
    }
    // interestsMap.forEach((key, value) {
    //   if (key != null && key.isNotEmpty) {
    //     interests!.addAll({key: value});
    //   }
    // }

    return {
      "id" : id ?? '',
      'name' : name ?? "",
      'description' : description ?? "",
      'gender' : gender ?? "",
      'mobile' : mobile ?? "",
      'email' : email ?? "",
      'loginType' : loginType ?? "",
      'notification_token' : notification_token ?? "",
      'web_notification_token' : web_notification_token ?? "",
      'deactivated_message' : deactivated_message ?? "",
      'online_status' : online_status ?? "",
      "createdtime" : createdtime,
      "dateOfBirth" : dateOfBirth,
      "last_opened" : last_opened,
      "last_online" : last_online,
      "currentLocation" : currentLocation?.toMap() ?? LocationModel.fromMap({}).toMap(),
      "my_last_location" : my_last_location?.toMap() ?? LocationModel.fromMap({}).toMap(),
      "my_locations" : list,
      "isMyLocationSelected" : isMyLocationSelected ?? true,
      'interests' : interestsMap,
      "isProfileComplete" : isProfileComplete ?? false,
      "user_activity" : user_activity?.toMap() ?? {},
      "user_plan" : user_plan != null ? user_plan!.toMap() : UserPlanModel.fromMap({}).toMap(),
      "isTotalProfileComplete" : isTotalProfileComplete ?? false,
      "images" : images ?? [],
      "blocklist" : blocklist ?? [],
      'my_likes' : my_likes ?? [],
      'my_dislikes' : my_dislikes ?? [],
      'me_liked' : me_liked ?? [],
      'my_matches' : my_matches ?? [],
      'venues' : venues ?? [],
      "isAccountDeactivated": isAccountDeactivated ?? false,
      "isAccountBlocked": isAccountBlocked ?? false,
      "isIncognitoOn": isIncognitoOn ?? false,
    };
  }

  /*Map<String, dynamic> sembastToMap() {
    return {
      "id" : id ?? '',
      'name' : name ?? "",
      'description' : description ?? "",
      'gender' : gender ?? "",
      'mobile' : mobile ?? "",
      'email' : email ?? "",
      'loginType' : loginType ?? "",
      'city' : city ?? "",
      'state' : state ?? "",
      'notification_token' : notification_token ?? "",
      "createdtime" : createdtime != null ? createdtime!.toDate().toString() : null,
      "dateOfBirth" : dateOfBirth != null ? dateOfBirth!.toDate().toString() : null,
      "last_opened" : last_opened != null ? last_opened!.toDate().toString() : null,
      'interests' : interests ?? [],
      "isProfileComplete" : isProfileComplete ?? false,
      "user_activity" : user_activity?.sembastToMap() ?? UserActivityModel.fromMap({}).toMap(),
      "user_plan" : user_plan != null ? user_plan!.sembastToMap() : UserPlanModel.fromMap({}).toMap(),
      "isTotalProfileComplete" : isTotalProfileComplete ?? false,
      "images" : images ?? [],
      'my_likes' : my_likes ?? [],
      'my_dislikes' : my_dislikes ?? [],
      'me_liked' : me_liked ?? [],
      'my_matches' : my_matches ?? [],
      "isAccountDeactivated": isAccountDeactivated ?? false,
      "isAccountBlocked": isAccountBlocked ?? false,
      "isIncognitoOn": isIncognitoOn ?? false,
    };
  }*/

  Map<String, dynamic> elasticToMap() {
    List<Map<String, dynamic>> list = [];
    if(my_locations != null) {
      my_locations!.forEach((LocationModel locationModel) {
        list.add(locationModel.elasticToMap());
      });
    }

    return {
      "id" : id ?? '',
      'name' : name ?? "",
      'description' : description ?? "",
      'gender' : gender ?? "",
      'mobile' : mobile ?? "",
      'email' : email ?? "",
      'loginType' : loginType ?? "",
      'notification_token' : notification_token ?? "",
      'web_notification_token' : web_notification_token ?? "",
      'deactivated_message' : deactivated_message ?? "",
      'online_status' : online_status ?? "",
      "createdtime" : createdtime != null ? DatePresentation.yyyyMMddHHmmssFormatter(createdtime!) : null,
      "dateOfBirth" : dateOfBirth != null ? DatePresentation.yyyyMMddFormatter(dateOfBirth!) : null,
      "last_opened" : last_opened != null ? DatePresentation.yyyyMMddHHmmssFormatter(last_opened!) : null,
      "last_online" : last_online != null ? DatePresentation.yyyyMMddHHmmssFormatter(last_online!) : null,
      "currentLocation" : currentLocation?.elasticToMap() ?? LocationModel.fromMap({}).elasticToMap(),
      "my_last_location" : my_last_location?.elasticToMap() ?? LocationModel.fromMap({}).elasticToMap(),
      "my_locations" : list,
      "isMyLocationSelected" : isMyLocationSelected ?? true,
      //'interests' : interests ?? [],
      "isProfileComplete" : isProfileComplete ?? false,
      "user_activity" : user_activity?.elasticToMap() ?? UserActivityModel.fromMap({}).toMap(),
      "user_plan" : user_plan != null ? user_plan!.elasticToMap() : UserPlanModel.fromMap({}).toMap(),
      "isTotalProfileComplete" : isTotalProfileComplete ?? false,
      "images" : images ?? [],
      "blocklist" : blocklist ?? [],
      'my_likes' : my_likes ?? [],
      'my_dislikes' : my_dislikes ?? [],
      'me_liked' : me_liked ?? [],
      'my_matches' : my_matches ?? [],
      'venues' : venues ?? [],
      "isAccountDeactivated": isAccountDeactivated ?? false,
      "isAccountBlocked": isAccountBlocked ?? false,
      "isIncognitoOn": isIncognitoOn ?? false,
    };
  }

  @override
  String toString() {
    return "Id:${id}, Name:${name}, Description:${description}, Gender:${gender}, Mobile:${mobile},"
        " Email:${email}, LoginType:${loginType}, notification_token:${notification_token}, web_notification_token:${web_notification_token}, "
        "deactivated_message:${deactivated_message}, online_status:${online_status}, CreatedTime:${createdtime}, DOB:${dateOfBirth}, Last Opened:${last_opened}, "
        "last_online:${last_online}, Interests:${interests}, IsProfileComplete:${isProfileComplete}, Images:${images}, blocklist:${blocklist}, "
        "user_plan:${user_plan}, user_activity:${user_activity}, my_likes:${my_likes}, my_dislikes:${my_dislikes}, "
        "me_liked:${me_liked}, my_matches:${my_matches}, venues:${venues}, isAccountDeactivated:${isAccountDeactivated},"
        " isAccountBlocked:${isAccountBlocked}, isIncognitoOn:${isIncognitoOn}";
  }
}