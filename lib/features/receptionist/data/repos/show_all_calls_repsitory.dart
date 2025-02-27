import '../../../../core/network/dio_helper.dart';
import '../models/show_all_calls_model.dart';

class ShowAllCallsRepository{

  Future<List<ShowAllCallsModel>> getAllCalls() async {
    try {
      final response = await DioHelper.getData(url: '/calls',);

      if (response.data['status'] == 1) {
        List<dynamic> data = response.data['data'];
        return data.map((call) => ShowAllCallsModel.fromJson(call)).toList();
      } else {
        throw Exception("Failed to load calls");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
  Future<List<ShowAllCallsModel>> getFilteredUsers({required String date}) async {
    try {
      final response = await DioHelper.getData(url: '/doctors', query: {'type': date});

      if (response.data['status'] == 1) {
        List<dynamic> data = response.data['data'];
        return data.map((user) => ShowAllCallsModel.fromJson(user)).toList();
      } else {
        throw Exception("Failed to load users");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }


}