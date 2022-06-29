class user {
  String uname = "";
  String city = "";

//<editor-fold desc="Data Methods">

  user({
    required this.uname,
    required this.city,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is user &&
          runtimeType == other.runtimeType &&
          uname == other.uname &&
          city == other.city);

  @override
  int get hashCode => uname.hashCode ^ city.hashCode;

  @override
  String toString() {
    return 'user{' + ' uname: $uname,' + ' city: $city,' + '}';
  }

  user copyWith({
    String? uname,
    String? city,
  }) {
    return user(
      uname: uname ?? this.uname,
      city: city ?? this.city,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uname': this.uname,
      'city': this.city,
    };
  }

  factory user.fromMap(Map<String, dynamic> map) {
    return user(
      uname: map['uname'] as String,
      city: map['city'] as String,
    );
  }

//</editor-fold>
}
