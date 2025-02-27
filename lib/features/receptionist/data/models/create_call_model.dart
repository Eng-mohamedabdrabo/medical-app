class CreateCallRequestModel {
  final String patientName;
  final int doctorId;
  final int age;
  final String phone;
  final String description;

  CreateCallRequestModel({
    required this.patientName,
    required this.doctorId,
    required this.age,
    required this.phone,
    required this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      'patient_name': patientName,
      'doctor_id': doctorId,
      'age': age,
      'phone': phone,
      'description': description,
    };
  }
}
class CreateCallResponseModel {
  final int status;
  final String message;

  CreateCallResponseModel({
    required this.status,
    required this.message,
  });

  factory CreateCallResponseModel.fromJson(Map<String, dynamic> json) {
    return CreateCallResponseModel(
      status: json['status'],
      message: json['message'],
    );
  }
}
