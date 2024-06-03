import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:shaghalni/core/data/models/user_model.dart';
import 'package:shaghalni/core/repositories/city_repository.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_state.dart';

import '../../../../../core/data/models/city_model.dart';
import '../../../../../core/repositories/auth_repository.dart';
import '../../../../../core/repositories/user_repository.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._authRepository, this._userRepository, this._cityRepository)
      : super(const SignupState.initial());

  // Repositories
  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final CityRepository _cityRepository;

  var phoneNumber = GetIt.instance<AuthRepository>().phoneNumber;

  TextEditingController birthDateController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  String? selectedGender;
  final List<String> genders = ["male", "female"];

  DateTime? selectedDate;

  File? imageFile;
  String _imageUrl = "";

  //City
  int selectedCityIndex = -1;
  List<CityModel> cityList = [];
  CityModel get city => cityList[selectedCityIndex];

  Future<void> myShowDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate ?? DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 30)));

    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      birthDateController.text = DateFormat('dd-MM-yyyy').format(selectedDate!);
    }
  }

  Future<void> signUp() async {
    try {
      emit(const SignupLoading());

      if (imageFile != null) {
        _imageUrl = await _userRepository.uploadImage(imageFile!);
      }

      final createdAt = Timestamp.fromMillisecondsSinceEpoch(
          DateTime.now().millisecondsSinceEpoch);

      await _authRepository.signUp(UserModel(
          uid: FirebaseAuth.instance.currentUser!.uid,
          fullName: fullNameController.text,
          phoneNumber: phoneNumber,
          birthDate: birthDateController.text,
          gender: selectedGender!,
          city: cityController.text,
          imageUrl: _imageUrl,
          createdAt: createdAt));
      emit(const SignupSuccess());
    } catch (e) {
      emit(SignupFailure(error: e.toString()));
    }
  }

  Future<void> getCity() async {
    try {
      emit(const CityLoading());
      var cityList = await _cityRepository.getCities();
      this.cityList = cityList;
      emit(const CitySuccess());
    } catch (e) {
      emit(CityFailure(error: e.toString()));
    }
  }
}
