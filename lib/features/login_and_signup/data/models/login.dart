class LoginModel {
  final int status;
  final String message;
  final UserData data;

  LoginModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      status: json['status'],
      message: json['message'],
      data: UserData.fromJson(json['data']),
    );
  }
}

class UserData {
  final int id;
  final String firstName;
  final String lastName;
  final String mobile;
  final String email;
  final String gender;
  final String status;
  final String specialist;
  final String type;
  final String birthday;
  final String address;
  final String createdAt;
  final bool verified;
  final String tokenType;
  final String accessToken;

  UserData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.mobile,
    required this.email,
    required this.gender,
    required this.status,
    required this.specialist,
    required this.type,
    required this.birthday,
    required this.address,
    required this.createdAt,
    required this.verified,
    required this.tokenType,
    required this.accessToken,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      mobile: json['mobile'],
      email: json['email'],
      gender: json['gender'],
      status: json['status'],
      specialist: json['specialist'],
      type: json['type'],
      birthday: json['birthday'],
      address: json['address'],
      createdAt: json['created_at'],
      verified: json['verified'],
      tokenType: json['token_type'],
      accessToken: json['access_token'],
    );
  }
}
