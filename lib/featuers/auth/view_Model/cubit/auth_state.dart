part of 'auth_cubit.dart';

@immutable
sealed class AuthCubitState {}

final class AuthCubitInitial extends AuthCubitState {}

final class registerLoading extends AuthCubitState {}

final class registerSucsses extends AuthCubitState {}

final class registerError extends AuthCubitState {
  final String error;

  registerError({required this.error});
}
