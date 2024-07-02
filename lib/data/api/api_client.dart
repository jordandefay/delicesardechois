import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  String? token; // Make token nullable or set a default value
  final String appBaseUrl;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;
  }

  // Use a method or getter to ensure headers are created with the current token
  Map<String, String> get mainHeaders {
    return {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization':
          'Bearer $token', // Ensure token is set before accessing headers
    };
  }

  Future<Response> getData(String uri) async {
    try {
      Response response =
          await get(uri, headers: mainHeaders); // Use headers here
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  // Provide a method to set the token when it is available
  void setToken(String newToken) {
    token = newToken;
  }
}
