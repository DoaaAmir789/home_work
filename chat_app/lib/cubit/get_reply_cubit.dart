import 'package:chat_app/cubit/get_reply_states.dart';
import 'package:chat_app/models/ai_response_model.dart';
import 'package:chat_app/service/chat_api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetReplyCubit extends Cubit<ChatStates> {
  GetReplyCubit() : super(ChatInitialState());
  Future<void> getResponse({required String prompt}) async {
    try {
      AiResponseModel responseModel = await ChatApiService(
        dio: Dio(),
      ).generateTextResponse(prompt: prompt);
      emit(ChatSuccessState(responseModel: responseModel));
    } catch (e) {
      emit(ChatFailureState(errorMessage: e.toString()));
    }
  }
}
