import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:shaghalni/core/data/models/user_model.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/repositories/city_repository.dart';
import 'package:shaghalni/features/auth/signup/logic/cubit/signup_state.dart';

import '../../../../../core/data/enum/gender.dart';
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

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //Controllers
  TextEditingController birthDateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  DateTime? birthDate;

  Gender? selectedGender;

  File? imageFile;
  String _imageUrl = "";

  //City
  int selectedCityIndex = -1;
  List<CityModel> cityList = [];
  CityModel get city => cityList[selectedCityIndex];

  //TermsAndConditions
  bool isAgreed = true;

  Future<void> signUp() async {
    try {
      emit(const SignupLoading());

      if (imageFile != null) {
        _imageUrl = await _userRepository.uploadImage(imageFile!);
      }

      final createdAt = Timestamp.fromMillisecondsSinceEpoch(
          DateTime.now().millisecondsSinceEpoch);

      UserModel _userModel = UserModel(
          uid: FirebaseAuth.instance.currentUser!.uid,
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          phoneNumber: phoneNumber,
          birthDate: Timestamp.fromDate(birthDate!),
          gender: selectedGender!.name,
          city: city,
          imageUrl: _imageUrl,
          createdAt: createdAt);

      await _authRepository.signUp(_userModel);
      await _userRepository.saveUserToPreferences(_userModel);
      userModel = _userModel;

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

  void setAgreement(bool isAgreed) {
    this.isAgreed = isAgreed;
    emit(SignupState.agreementState(isAgreed: isAgreed));
  }
}
