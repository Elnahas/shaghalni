import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/constants.dart';
import 'package:shaghalni/core/repositories/user_repository.dart';
import 'package:shaghalni/features/profile/logic/profile_state.dart';

import '../../../core/data/enum/gender.dart';
import '../../../core/data/models/city_model.dart';
import '../../../core/data/models/user_model.dart';
import '../../../core/repositories/city_repository.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._userRepository, this._cityRepository)
      : super(ProfileState.initial());
  // Repositories
  final UserRepository _userRepository;
  final CityRepository _cityRepository;

  var phoneNumber = userModel!.phoneNumber;

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //Controllers
  TextEditingController birthDateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  Gender? selectedGender;

  File? imageFile;
  String _imageUrl = "";

  //City
  int selectedCityIndex = -1;
  List<CityModel> cityList = [];
  CityModel get city => cityList[selectedCityIndex];

  Future<void> updateUserProfile() async {
    try {
      emit(const ProfileLoading());

      final createdAt = Timestamp.fromMillisecondsSinceEpoch(
          DateTime.now().millisecondsSinceEpoch);

      UserModel _userModel = UserModel(
          uid: FirebaseAuth.instance.currentUser!.uid,
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          phoneNumber: phoneNumber,
          birthDate: birthDateController.text,
          gender: selectedGender!.name,
          city: city,
          imageUrl: imageFile!.path != "" ? _imageUrl : userModel!.imageUrl,
          createdAt: createdAt);

       await _userRepository.updateUserProfile(
        uid: FirebaseAuth.instance.currentUser!.uid,
        birthDate: birthDateController.text ,
        city: city ,
        firstName: firstNameController.text,
        gender:  selectedGender!.name,
        lastName: lastNameController.text,
        newImageFile: imageFile


       );
      await _userRepository.saveUserToPreferences(_userModel);
      userModel = _userModel;

      emit(const ProfileSuccess());
    } catch (e) {
      emit(ProfileFailure(error: e.toString()));
    }
  }

  Future<void> getCity() async {
    try {
      emit(const CityLoading());
      var cityList = await _cityRepository.getCities();
      this.cityList = cityList;
      emit(const CitySuccess());
      initializeWithJob(userModel);
    } catch (e) {
      emit(CityFailure(error: e.toString()));
    }
  }

  void initializeWithJob(UserModel? userModel) {

    if (userModel != null) {
      birthDateController.text = userModel.birthDate;
      cityController.text = userModel.city.name;
      firstNameController.text = userModel.firstName;
      lastNameController.text = userModel.lastName;

      selectedGender =  userModel.gender == 'male' ? Gender.male : Gender.female;

      _imageUrl = userModel.imageUrl ?? "";
      imageFile = File(_imageUrl);

      selectedCityIndex =
          cityList.indexWhere((city) => city.id == userModel.city.id);
    }
  }
}
