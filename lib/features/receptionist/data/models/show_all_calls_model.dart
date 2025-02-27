class ShowAllCallsRequestModel {
  final int status;
  final String message;
  final List<ShowAllCallsModel> data;

  ShowAllCallsRequestModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ShowAllCallsRequestModel.fromJson(Map<String, dynamic> json) {
    return ShowAllCallsRequestModel(
      status: json['status'],
      message: json['message'],
      data: (json['data'] as List)
          .map((item) => ShowAllCallsModel.fromJson(item))
          .toList(),
    );
  }
}

class ShowAllCallsModel {
  final int id;
  final String patientName;
  final String createdAt;
  final String status;

  ShowAllCallsModel({
    required this.id,
    required this.patientName,
    required this.createdAt,
    required this.status,
  });

  factory ShowAllCallsModel.fromJson(Map<String, dynamic> json) {
    return ShowAllCallsModel(
      id: json['id'],
      patientName: json['patient_name'],
      createdAt: json['created_at'],
      status: json['status'],
    );
  }
}
