import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubitCubit extends Cubit<AuthCubitState> {
  AuthCubitCubit() : super(AuthCubitInitial());
  Future<void> register() async {
    emit(registerLoading());
    try {
      
    } catch (e) {
      
    }
  }
}
