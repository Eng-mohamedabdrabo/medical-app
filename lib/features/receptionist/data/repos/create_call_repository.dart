import '../../../../core/network/dio_helper.dart';
import '../models/create_call_model.dart';

class CreateCallRepo{

  Future<CreateCallResponseModel> createCall(CreateCallRequestModel callRequest)async{

    try {
      final response = await DioHelper.postData(
        url: '/calls',
        data: callRequest.toJson(),
      );

      return CreateCallResponseModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to create call: ${e.toString()}');
    }
  }
  }