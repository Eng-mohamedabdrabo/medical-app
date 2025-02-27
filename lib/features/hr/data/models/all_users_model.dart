class AllUsersModel {
  final int id;
  final String firstName;
  final String type;
  final String avatar;

  AllUsersModel({
    required this.id,
    required this.firstName,
    required this.type,
    required this.avatar,
  });

  factory AllUsersModel.fromJson(Map<String, dynamic> json) {
    return AllUsersModel(
      id: json['id'],
      firstName: json['first_name'],
      type: json['type'],
      avatar: json['avatar'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'type': type,
      'avatar': avatar,
    };
  }
}

class AllUsersResponseModel {
  final int status;
  final String message;
  final List<AllUsersModel> data;

  AllUsersResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory AllUsersResponseModel.fromJson(Map<String, dynamic> json) {
    return AllUsersResponseModel(
      status: json['status'],
      message: json['message'],
      data: (json['data'] as List).map((e) => AllUsersModel.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'data': data.map((e) => e.toJson()).toList(),
    };
  }
}
