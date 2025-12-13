// import 'dart:developer';

// import 'package:chat_app/models/reply_model.dart';
// import 'package:dio/dio.dart';

// class ChatService {
//   final Dio dio;
//   final String apiKey = 'AIzaSyCcE3sxHftQBYrxhTKC241mKAQGOcg_x4w';
//   final String baseUrl =
//       'https://generativelanguage.googleapis.com/v1beta/models';
//   ChatService({required this.dio});

//   Future<ReplyModel> getReply({required String prompt}) async {
//     try {
//       Response response = await dio.post(
//         '$baseUrl/gemini-2.5-flash:generateContent?key=$apiKey',
//         options: Options(headers: {'Content-Type': 'application/json'}),
//         data: {
//           "contents": [
//             {
//               "parts": [
//                 {"text": prompt},
//               ],
//             },
//           ],
//         },
//       );
//       ReplyModel reply = ReplyModel.fromJson(response.data, prompt);
//       log(reply.aiReply);
//       return reply;
//     } on DioException catch (e) {
//       final String errorMessage =
//           e.response?.data['error']['message'] ??
//           'oops there was an error,try later';
//       throw Exception(errorMessage);
//     } catch (e) {
//       throw Exception('Something went wrong, try again later');
//     }
//   }
// }
