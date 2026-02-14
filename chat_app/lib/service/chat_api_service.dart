import 'package:chat_app/models/ai_response_model.dart';
import 'package:dio/dio.dart';

class ChatApiService {
  final Dio dio;
  final String apiKey = 'AIzaSyBVUFKayWvsk8lVEDhz-tcVf-Vbqkp__lY';
  final String baseUrl =
      'https://generativelanguage.googleapis.com/v1beta/models';

  ChatApiService({required this.dio});

  Future<AiResponseModel> generateTextResponse({required String prompt}) async {
    try {
      Response response = await dio.post(
        '$baseUrl/gemini-2.5-flash:generateContent?key=$apiKey',
        options: Options(headers: {'Content-Type': 'application/json'}),
        data: {
          "contents": [
            {
              "parts": [
                {"text": prompt},
              ],
            },
          ],
        },
      );
      AiResponseModel aiResponseModel = AiResponseModel.fromJson(
        response.data,
        prompt,
      );
      //log(aiResponseModel.aiReply);
      return aiResponseModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ??
          'oops there was an error,try later';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Something went wrong, try again later');
    }
  }
}
