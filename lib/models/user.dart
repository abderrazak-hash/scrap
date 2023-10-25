class User {
  final String name, email, password, phone, state, region;
  final bool visiblePhoneNum;

  User({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.state,
    required this.region,
    required this.visiblePhoneNum,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json['name'],
        phone: json['phone'],
        email: json['email'],
        password: json['password'],
        state: json['governorateName'],
        region: json['region'],
        visiblePhoneNum: json['is_phone_visible'],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "governorateName": state,
        "region": region,
        "is_phone_visible": '$visiblePhoneNum',
      };
}
