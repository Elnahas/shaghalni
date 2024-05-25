import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:shaghalni/features/auth/signup/data/model/user_model.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_state.dart';

import '../../../auth_repository.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepository _authRepository;
  var phoneNumber = GetIt.instance<AuthRepository>().phoneNumber;
  TextEditingController dateController = TextEditingController();

  DateTime? selectedDate;
  Future<void> myShowDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate ?? DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 30)));

    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      dateController.text = DateFormat('dd-MM-yyyy').format(selectedDate!);
    }
  }

  SignupCubit(this._authRepository) : super(const SignupState.initial());

  Future<void> signUp(UserModel user) async {
    try {
      emit(const SignupLoading());
      await _authRepository.signUp(user);
      emit(const SignupSuccess());
    } catch (e) {
      emit(SignupFailure(error: e.toString()));
    }
  }
}
