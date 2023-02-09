class QuotaModel {
  int? locationport_remaining, locationport_total, rightswipe_remaining, rightswipe_total, superlike_remaining, superlike_total;

  QuotaModel({
    this.locationport_total,
    this.locationport_remaining,
    this.rightswipe_remaining,
    this.rightswipe_total,
    this.superlike_remaining,
    this.superlike_total,
  });

  static QuotaModel fromMap(Map<String, dynamic> map) {
    int? locationport_remaining, locationport_total, rightswipe_remaining, rightswipe_total, superlike_remaining, superlike_total;

    locationport_remaining = map['locationport_remaining'] ?? 0;
    locationport_total = map['locationport_total'] ?? 0;
    rightswipe_remaining = map['rightswipe_remaining'] ?? 0;
    rightswipe_total = map['rightswipe_total'] ?? 0;
    superlike_remaining = map['superlike_remaining'] ?? 0;
    superlike_total = map['superlike_total'] ?? 0;

    return QuotaModel(
      locationport_remaining: locationport_remaining,
      locationport_total: locationport_total,
      rightswipe_remaining: rightswipe_remaining,
      rightswipe_total: rightswipe_total,
      superlike_remaining: superlike_remaining,
      superlike_total: superlike_total,
    );
  }

  void updateFromMap(Map<String, dynamic> map) {
    locationport_remaining = map['locationport_remaining'] ?? 0;
    locationport_total = map['locationport_total'] ?? 0;
    rightswipe_remaining = map['rightswipe_remaining'] ?? 0;
    rightswipe_total = map['rightswipe_total'] ?? 0;
    superlike_remaining = map['superlike_remaining'] ?? 0;
    superlike_total = map['superlike_total'] ?? 0;
  }

  Map<String, dynamic> toMap() {
    return {
      "locationport_remaining" : locationport_remaining,
      "locationport_total" : locationport_total,
      "rightswipe_remaining" : rightswipe_remaining,
      "rightswipe_total" : rightswipe_total,
      "superlike_remaining" : superlike_remaining,
      "superlike_total" : superlike_total,
    };
  }
}