part of 'response_bloc_bloc.dart';

@freezed
class ResponseBlocEvent with _$ResponseBlocEvent {
  const factory ResponseBlocEvent.fetchDataEvent() = FetchDataEvent;
}