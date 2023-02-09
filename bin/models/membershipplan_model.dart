class MembershipPlanModel {
  String? id, name, color;
  int? rightswipe_count, locationport_count, superlikes_count, days, rank;
  double? price;

  MembershipPlanModel({
    this.id,
    this.name,
    this.color,
    this.rightswipe_count,
    this.locationport_count,
    this.superlikes_count,
    this.days,
    this.rank,
    this.price,
  });

  static MembershipPlanModel fromMap(Map<String, dynamic> map) {
    String? id, name, color;
    int? rightswipe_count, locationport_count, superlikes_count, days, rank;
    double? price;

    id = map['id'] != null ? map['id'] : "";
    name = map['name'] != null ? map['name'] : "";
    color = map['color'] != null ? map['color'] : "";
    rightswipe_count = map['rightswipe_count'] != null ? map['rightswipe_count'] : 0;
    locationport_count = map['locationport_count'] != null ? map['locationport_count'] : 0;
    superlikes_count = map['superlikes_count'] != null ? map['superlikes_count'] : 0;
    days = map['days'] != null ? map['days'] : 0;
    rank = map['rank'] != null ? map['rank'] : 0;
    price = map['price'] != null ? map['price'].toDouble() : 0.0;

    return MembershipPlanModel(
      id: id,
      name: name,
      color: color,
      locationport_count: locationport_count,
      rightswipe_count: rightswipe_count,
      superlikes_count: superlikes_count,
      days: days,
      rank: rank,
      price: price,
    );
  }

  void updateFromMap(Map<String, dynamic> map) {
    id = map['id'] != null ? map['id'] : "";
    name = map['name'] != null ? map['name'] : "";
    color = map['color'] != null ? map['color'] : "";
    rightswipe_count = map['rightswipe_count'] != null ? map['rightswipe_count'] : 0;
    locationport_count = map['locationport_count'] != null ? map['locationport_count'] : 0;
    superlikes_count = map['superlikes_count'] != null ? map['superlikes_count'] : 0;
    days = map['days'] != null ? map['days'] : 0;
    rank = map['rank'] != null ? map['rank'] : 0;
    price = map['price'] != null ? map['price'].toDouble() : 0.0;
  }

  Map<String, dynamic> toMap() {
    return {
      "id" : id ?? "",
      "name": name ?? '',
      "color": color ?? '',
      "rightswipe_count": rightswipe_count ?? 0,
      "locationport_count": locationport_count ?? 0,
      "superlikes_count": superlikes_count ?? 0,
      "days": days ?? 0,
      "rank": rank ?? 0,
      "price": price ?? 0.0,
    };
  }

  @override
  String toString() {
    return "id:${id}, name:${name},color:${color},rightswipe_count:${rightswipe_count},locationport_count:${locationport_count},"
        "superlikes_count:${superlikes_count}, days:${days}, rank:${rank}, price:${price}";
  }
}
