import '../utils/date_presentation.dart';
import 'membershipplan_model.dart';
import 'quota_model.dart';

class UserPlanModel {
  MembershipPlanModel? my_plan, advanced_plan;
  bool? isActive;
  QuotaModel? my_quota, advanced_quota;
  DateTime? activated_date, expiry_date, advanced_activated_date, advanced_expiry_date, last_quota_updated;

  UserPlanModel({
    this.my_plan, this.advanced_plan,
    this.isActive,
    this.my_quota, this.advanced_quota, 
    this.activated_date, this.expiry_date, this.advanced_activated_date, this.advanced_expiry_date, this.last_quota_updated,
  });

  static UserPlanModel fromMap(Map<String, dynamic> map) {
    MembershipPlanModel? my_plan, advanced_plan;
    bool? isActive;
    QuotaModel? my_quota, advanced_quota;
    DateTime? activated_date, expiry_date, advanced_activated_date, advanced_expiry_date, last_quota_updated;

    my_plan = MembershipPlanModel.fromMap(Map.castFrom(map['my_plan'] ?? {}));
    advanced_plan = MembershipPlanModel.fromMap(Map.castFrom(map['advanced_plan'] ?? {}));
    isActive = map['isActive'] != null ? map['isActive'] : false;
    my_quota = QuotaModel.fromMap(Map.castFrom(map['my_quota'] ?? {}));
    advanced_quota = QuotaModel.fromMap(Map.castFrom(map['advanced_quota'] ?? {}));
    activated_date = map['activated_date'];
    expiry_date = map['expiry_date'];
    advanced_activated_date = map['advanced_activated_date'];
    advanced_expiry_date = map['advanced_expiry_date'];
    last_quota_updated = map['last_quota_updated'];

    return UserPlanModel(
      my_plan: my_plan,
      advanced_plan: advanced_plan,
      isActive: isActive,
      my_quota: my_quota,
      advanced_quota: advanced_quota,
      activated_date: activated_date,
      expiry_date: expiry_date,
      advanced_activated_date: advanced_activated_date,
      advanced_expiry_date: advanced_expiry_date,
      last_quota_updated: last_quota_updated,
    );
  }

  /*static UserPlanModel sembastFromMap(Map<String, dynamic> map) {
    MembershipPlanModel? my_plan, advanced_plan;
    bool? isActive;
    QuotaModel? my_quota, advanced_quota;
    Timestamp? activated_date, expiry_date, advanced_activated_date, advanced_expiry_date, last_quota_updated;

    my_plan = MembershipPlanModel.fromMap(map['my_plan'] ?? {});
    advanced_plan = MembershipPlanModel.fromMap(map['advanced_plan'] ?? {});
    isActive = map['isActive'] != null ? map['isActive'] : false;
    my_quota = QuotaModel.fromMap(map['my_quota'] ?? {});
    advanced_quota = QuotaModel.fromMap(map['advanced_quota'] ?? {});
    activated_date = map['activated_date'];
    expiry_date = map['expiry_date'];
    advanced_activated_date = map['advanced_activated_date'];
    advanced_expiry_date = map['advanced_expiry_date'];
    last_quota_updated = map['last_quota_updated'];

    activated_date = map['activated_date'] != null && map['activated_date'].isNotEmpty ? Timestamp.fromDate(DateTime.parse(map['activated_date'])) : null;
    expiry_date = map['expiry_date'] != null && map['expiry_date'].isNotEmpty ? Timestamp.fromDate(DateTime.parse(map['expiry_date'])) : null;
    advanced_activated_date = map['advanced_activated_date'] != null && map['advanced_activated_date'].isNotEmpty ? Timestamp.fromDate(DateTime.parse(map['advanced_activated_date'])) : null;
    advanced_expiry_date = map['advanced_expiry_date'] != null && map['advanced_expiry_date'].isNotEmpty ? Timestamp.fromDate(DateTime.parse(map['advanced_expiry_date'])) : null;
    last_quota_updated = map['last_quota_updated'] != null && map['last_quota_updated'].isNotEmpty ? Timestamp.fromDate(DateTime.parse(map['last_quota_updated'])) : null;

    return UserPlanModel(
      my_plan: my_plan,
      advanced_plan: advanced_plan,
      my_quota: my_quota,
      advanced_quota: advanced_quota,
      isActive: isActive,
      activated_date: activated_date,
      expiry_date: expiry_date,
      advanced_activated_date: advanced_activated_date,
      advanced_expiry_date: advanced_expiry_date,
      last_quota_updated: last_quota_updated,
    );
  }*/

  static UserPlanModel elasticFromMap(Map<String, dynamic> map) {
    MembershipPlanModel? my_plan, advanced_plan;
    bool? isActive;
    QuotaModel? my_quota, advanced_quota;
    DateTime? activated_date, expiry_date, advanced_activated_date, advanced_expiry_date, last_quota_updated;

    my_plan = MembershipPlanModel.fromMap(Map.castFrom(map['my_plan'] ?? {}));
    advanced_plan = MembershipPlanModel.fromMap(Map.castFrom(map['advanced_plan'] ?? {}));
    isActive = map['isActive'] != null ? map['isActive'] : false;
    my_quota = QuotaModel.fromMap(Map.castFrom(map['my_quota'] ?? {}));
    advanced_quota = QuotaModel.fromMap(Map.castFrom(map['advanced_quota'] ?? {}));

    activated_date = map['activated_date'] != null && map['activated_date'].isNotEmpty ? DateTime.tryParse(map['activated_date']) : null;
    expiry_date = map['expiry_date'] != null && map['expiry_date'].isNotEmpty ? DateTime.tryParse(map['expiry_date']) : null;
    advanced_activated_date = map['advanced_activated_date'] != null && map['advanced_activated_date'].isNotEmpty ? DateTime.tryParse(map['advanced_activated_date']) : null;
    advanced_expiry_date = map['advanced_expiry_date'] != null && map['advanced_expiry_date'].isNotEmpty ? DateTime.tryParse(map['advanced_expiry_date']) : null;
    last_quota_updated = map['last_quota_updated'] != null && map['last_quota_updated'].isNotEmpty ? DateTime.tryParse(map['last_quota_updated']) : null;

    return UserPlanModel(
      my_plan: my_plan,
      advanced_plan: advanced_plan,
      my_quota: my_quota,
      advanced_quota: advanced_quota,
      isActive: isActive,
      activated_date: activated_date,
      expiry_date: expiry_date,
      advanced_activated_date: advanced_activated_date,
      advanced_expiry_date: advanced_expiry_date,
      last_quota_updated: last_quota_updated,
    );
  }

  void updateFromMap(Map<String, dynamic> map) {
    my_plan = MembershipPlanModel.fromMap(map['my_plan'] ?? {});
    advanced_plan = MembershipPlanModel.fromMap(map['advanced_plan'] ?? {});
    isActive = map['isActive'] != null ? map['isActive'] : false;
    my_quota = QuotaModel.fromMap(map['my_quota'] ?? {});
    advanced_quota = QuotaModel.fromMap(map['advanced_quota'] ?? {});
    activated_date = map['activated_date'];
    expiry_date = map['expiry_date'];
    advanced_activated_date = map['advanced_activated_date'];
    advanced_expiry_date = map['advanced_expiry_date'];
    last_quota_updated = map['last_quota_updated'];
  }

  Map<String, dynamic> toMap() {
    return {
      "my_plan" : my_plan?.toMap() ?? {},
      "advanced_plan" : advanced_plan?.toMap() ?? {},
      "isActive" : isActive ?? false,
      "my_quota" : my_quota?.toMap() ?? {},
      "advanced_quota" : advanced_quota?.toMap() ?? {},
      "activated_date" : activated_date,
      "expiry_date" : expiry_date,
      "advanced_activated_date" : advanced_activated_date,
      "advanced_expiry_date" : advanced_expiry_date,
      "last_quota_updated" : last_quota_updated,
    };
  }

  /*Map<String, dynamic> sembastToMap() {
    return {
      "my_plan" : my_plan?.toMap() ?? {},
      "advanced_plan" : advanced_plan?.toMap() ?? {},
      "isActive" : isActive ?? false,
      "my_quota" : my_quota?.toMap() ?? {},
      "advanced_quota" : advanced_quota?.toMap() ?? {},
      "activated_date" : activated_date != null ? DatePresentation.yyyyMMddFormatter(activated_date!) : null,
      "expiry_date" : expiry_date != null ? DatePresentation.yyyyMMddFormatter(expiry_date!) : null,
      "advanced_activated_date" : advanced_activated_date != null ? DatePresentation.yyyyMMddFormatter(advanced_activated_date!) : null,
      "advanced_expiry_date" : advanced_expiry_date != null ? DatePresentation.yyyyMMddFormatter(advanced_expiry_date!) : null,
      "last_quota_updated" : last_quota_updated != null ? DatePresentation.yyyyMMddFormatter(last_quota_updated!) : null,
    };
  }*/

  Map<String, dynamic> elasticToMap() {
    return {
      "my_plan" : my_plan?.toMap() ?? {},
      "advanced_plan" : advanced_plan?.toMap() ?? {},
      "isActive" : isActive ?? false,
      "my_quota" : my_quota?.toMap() ?? {},
      "advanced_quota" : advanced_quota?.toMap() ?? {},
      "activated_date" : activated_date != null ? DatePresentation.yyyyMMddFormatter(activated_date!) : null,
      "expiry_date" : expiry_date != null ? DatePresentation.yyyyMMddFormatter(expiry_date!) : null,
      "advanced_activated_date" : advanced_activated_date != null ? DatePresentation.yyyyMMddFormatter(advanced_activated_date!) : null,
      "advanced_expiry_date" : advanced_expiry_date != null ? DatePresentation.yyyyMMddFormatter(advanced_expiry_date!) : null,
      "last_quota_updated" : last_quota_updated != null ? DatePresentation.yyyyMMddFormatter(last_quota_updated!) : null,
    };
  }

  @override
  String toString() {
    return "my_plan:${my_plan}, advanced_plan:${advanced_plan}, isActive:${isActive}, my_quota:${my_quota}, advanced_quota:${advanced_quota}, "
        "activated_date:${activated_date}, expiry_date:${expiry_date}, advanced_activated_date:${advanced_activated_date}, "
        "advanced_expiry_date:${advanced_expiry_date}, last_quota_updated:${last_quota_updated}";
  }
}