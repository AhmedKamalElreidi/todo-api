abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

final class RegisterLoadingState extends RegisterState {}

final class RegisterSuccessState extends RegisterState {
  final String token;

  RegisterSuccessState({required this.token});
}

final class RegisterErrorState extends RegisterState {
  final String error;
  RegisterErrorState({required this.error});
}
