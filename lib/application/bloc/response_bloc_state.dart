part of 'response_bloc_bloc.dart';

@freezed
class ResponseBlocState with _$ResponseBlocState {
  const factory ResponseBlocState.initial({

 String? movieTitle,
 String? errorMsg,

  }) = _Initial;
}
