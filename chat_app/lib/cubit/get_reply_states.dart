import 'package:chat_app/models/ai_response_model.dart';

class ChatStates {}

class ChatInitialState extends ChatStates {}

class ChatLoadingState extends ChatStates {}

class ChatSuccessState extends ChatStates {
  final AiResponseModel responseModel;
  ChatSuccessState({required this.responseModel});
}

class ChatFailureState extends ChatStates {
  final String errorMessage;
  ChatFailureState({required this.errorMessage});
}
