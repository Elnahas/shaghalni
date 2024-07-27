// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Shaghalni`
  String get appName {
    return Intl.message(
      'Shaghalni',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_ {
    return Intl.message(
      'Continue',
      name: 'continue_',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get select_language {
    return Intl.message(
      'Select Language',
      name: 'select_language',
      desc: '',
      args: [],
    );
  }

  /// `You can change the language at any time`
  String get You_can_change_the_language_at_any_time {
    return Intl.message(
      'You can change the language at any time',
      name: 'You_can_change_the_language_at_any_time',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please select gender`
  String get pleaseSelectGender {
    return Intl.message(
      'Please select gender',
      name: 'pleaseSelectGender',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Help Center`
  String get helpCenter {
    return Intl.message(
      'Help Center',
      name: 'helpCenter',
      desc: '',
      args: [],
    );
  }

  /// `Terms And Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms And Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `What is your phone number?`
  String get what_is_your_phone_number {
    return Intl.message(
      'What is your phone number?',
      name: 'what_is_your_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get please_enter_your_phone_number {
    return Intl.message(
      'Please enter your phone number',
      name: 'please_enter_your_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get please_enter_valid_phone_number {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'please_enter_valid_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number to verify your account`
  String get please_enter_your_phone_number_to_verify {
    return Intl.message(
      'Please enter your phone number to verify your account',
      name: 'please_enter_your_phone_number_to_verify',
      desc: '',
      args: [],
    );
  }

  /// `EG`
  String get EG {
    return Intl.message(
      'EG',
      name: 'EG',
      desc: '',
      args: [],
    );
  }

  /// `OTP sent successfully`
  String get otp_sent_successfully {
    return Intl.message(
      'OTP sent successfully',
      name: 'otp_sent_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Verify your phone number`
  String get verify_phone_number {
    return Intl.message(
      'Verify your phone number',
      name: 'verify_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter your 6 digit code sent to `
  String get enter_otp_code {
    return Intl.message(
      'Enter your 6 digit code sent to ',
      name: 'enter_otp_code',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Cropper`
  String get cropper {
    return Intl.message(
      'Cropper',
      name: 'cropper',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your first name`
  String get please_enter_first_name {
    return Intl.message(
      'Please enter your first name',
      name: 'please_enter_first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your last name`
  String get please_enter_last_name {
    return Intl.message(
      'Please enter your last name',
      name: 'please_enter_last_name',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Select City`
  String get select_city {
    return Intl.message(
      'Select City',
      name: 'select_city',
      desc: '',
      args: [],
    );
  }

  /// `Please select your city`
  String get please_select_city {
    return Intl.message(
      'Please select your city',
      name: 'please_select_city',
      desc: '',
      args: [],
    );
  }

  /// `Birth Date`
  String get birthDate {
    return Intl.message(
      'Birth Date',
      name: 'birthDate',
      desc: '',
      args: [],
    );
  }

  /// `Please select your birth date`
  String get please_select_birth_date {
    return Intl.message(
      'Please select your birth date',
      name: 'please_select_birth_date',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `I agree with the Terms and Conditions`
  String get agree_terms_conditions {
    return Intl.message(
      'I agree with the Terms and Conditions',
      name: 'agree_terms_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Please accept the terms and conditions`
  String get accept_terms_conditions {
    return Intl.message(
      'Please accept the terms and conditions',
      name: 'accept_terms_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get create_an_account {
    return Intl.message(
      'Create an account',
      name: 'create_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Shaghalni`
  String get onboarding_title1 {
    return Intl.message(
      'Welcome to Shaghalni',
      name: 'onboarding_title1',
      desc: '',
      args: [],
    );
  }

  /// `Shaghalni app connects employers and job seekers\n directly to achieve the best possible result.`
  String get onboarding_subtitle1 {
    return Intl.message(
      'Shaghalni app connects employers and job seekers\n directly to achieve the best possible result.',
      name: 'onboarding_subtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Looking for your dream job`
  String get onboarding_title2 {
    return Intl.message(
      'Looking for your dream job',
      name: 'onboarding_title2',
      desc: '',
      args: [],
    );
  }

  /// `You can search and communicate with\n advertisers easily without having to wait`
  String get onboarding_subtitle2 {
    return Intl.message(
      'You can search and communicate with\n advertisers easily without having to wait',
      name: 'onboarding_subtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Looking for the ideal employee`
  String get onboarding_title3 {
    return Intl.message(
      'Looking for the ideal employee',
      name: 'onboarding_title3',
      desc: '',
      args: [],
    );
  }

  /// `Post your ad and receive applications quickly\n and easily without the need for a third party`
  String get onboarding_subtitle3 {
    return Intl.message(
      'Post your ad and receive applications quickly\n and easily without the need for a third party',
      name: 'onboarding_subtitle3',
      desc: '',
      args: [],
    );
  }

  /// `Register and start now`
  String get onboarding_title4 {
    return Intl.message(
      'Register and start now',
      name: 'onboarding_title4',
      desc: '',
      args: [],
    );
  }

  /// `Start now and get the best talents\n or secure your dream opportunity`
  String get onboarding_subtitle4 {
    return Intl.message(
      'Start now and get the best talents\n or secure your dream opportunity',
      name: 'onboarding_subtitle4',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Request`
  String get request {
    return Intl.message(
      'Request',
      name: 'request',
      desc: '',
      args: [],
    );
  }

  /// `Blog`
  String get blog {
    return Intl.message(
      'Blog',
      name: 'blog',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Recently added jobs`
  String get recently_added_jobs {
    return Intl.message(
      'Recently added jobs',
      name: 'recently_added_jobs',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get EGP {
    return Intl.message(
      'EGP',
      name: 'EGP',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `How are you today?`
  String get how_are_you_today {
    return Intl.message(
      'How are you today?',
      name: 'how_are_you_today',
      desc: '',
      args: [],
    );
  }

  /// `Explore nearby job\nvacancies\neffortlessly`
  String get explore_nearby_jobs {
    return Intl.message(
      'Explore nearby job\nvacancies\neffortlessly',
      name: 'explore_nearby_jobs',
      desc: '',
      args: [],
    );
  }

  /// `Find Nearby`
  String get find_nearby {
    return Intl.message(
      'Find Nearby',
      name: 'find_nearby',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Job Details`
  String get job_details {
    return Intl.message(
      'Job Details',
      name: 'job_details',
      desc: '',
      args: [],
    );
  }

  /// `View Job`
  String get view_job {
    return Intl.message(
      'View Job',
      name: 'view_job',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Call Now`
  String get call_now {
    return Intl.message(
      'Call Now',
      name: 'call_now',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp`
  String get whatsapp {
    return Intl.message(
      'WhatsApp',
      name: 'whatsapp',
      desc: '',
      args: [],
    );
  }

  /// `Salary`
  String get salary {
    return Intl.message(
      'Salary',
      name: 'salary',
      desc: '',
      args: [],
    );
  }

  /// `Job Type`
  String get job_type {
    return Intl.message(
      'Job Type',
      name: 'job_type',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get experience {
    return Intl.message(
      'Experience',
      name: 'experience',
      desc: '',
      args: [],
    );
  }

  /// `Requirements`
  String get requirements {
    return Intl.message(
      'Requirements',
      name: 'requirements',
      desc: '',
      args: [],
    );
  }

  /// `{experienceRange} of experience`
  String experience_label(Object experienceRange) {
    return Intl.message(
      '$experienceRange of experience',
      name: 'experience_label',
      desc: '',
      args: [experienceRange],
    );
  }

  /// `Position open to {genderLabel} {genderSuffix}`
  String gender_label(Object genderLabel, Object genderSuffix) {
    return Intl.message(
      'Position open to $genderLabel $genderSuffix',
      name: 'gender_label',
      desc: '',
      args: [genderLabel, genderSuffix],
    );
  }

  /// `Select Category`
  String get select_category {
    return Intl.message(
      'Select Category',
      name: 'select_category',
      desc: '',
      args: [],
    );
  }

  /// `Only`
  String get only {
    return Intl.message(
      'Only',
      name: 'only',
      desc: '',
      args: [],
    );
  }

  /// `Please select Category`
  String get please_select_category {
    return Intl.message(
      'Please select Category',
      name: 'please_select_category',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to exit?`
  String get exit_confirmation {
    return Intl.message(
      'Are you sure you want to exit?',
      name: 'exit_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Experience level`
  String get experience_level {
    return Intl.message(
      'Experience level',
      name: 'experience_level',
      desc: '',
      args: [],
    );
  }

  /// `Job Vacancy Announcement`
  String get job_vacancy_announcement {
    return Intl.message(
      'Job Vacancy Announcement',
      name: 'job_vacancy_announcement',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next_step {
    return Intl.message(
      'Next',
      name: 'next_step',
      desc: '',
      args: [],
    );
  }

  /// `Please Select Gender`
  String get please_select_gender {
    return Intl.message(
      'Please Select Gender',
      name: 'please_select_gender',
      desc: '',
      args: [],
    );
  }

  /// `Please Select Job Type`
  String get please_select_job_type {
    return Intl.message(
      'Please Select Job Type',
      name: 'please_select_job_type',
      desc: '',
      args: [],
    );
  }

  /// `Title of the job`
  String get job_title {
    return Intl.message(
      'Title of the job',
      name: 'job_title',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the title of the job`
  String get enter_job_title {
    return Intl.message(
      'Please enter the title of the job',
      name: 'enter_job_title',
      desc: '',
      args: [],
    );
  }

  /// `Description of the job`
  String get job_description {
    return Intl.message(
      'Description of the job',
      name: 'job_description',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the description of the job`
  String get enter_job_description {
    return Intl.message(
      'Please enter the description of the job',
      name: 'enter_job_description',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the salary`
  String get enter_salary {
    return Intl.message(
      'Please enter the salary',
      name: 'enter_salary',
      desc: '',
      args: [],
    );
  }

  /// `Hide the salary`
  String get hide_salary {
    return Intl.message(
      'Hide the salary',
      name: 'hide_salary',
      desc: '',
      args: [],
    );
  }

  /// `Select type`
  String get select_type {
    return Intl.message(
      'Select type',
      name: 'select_type',
      desc: '',
      args: [],
    );
  }

  /// `Job Requests`
  String get job_requests {
    return Intl.message(
      'Job Requests',
      name: 'job_requests',
      desc: '',
      args: [],
    );
  }

  /// `No Job Requests`
  String get no_job_requests {
    return Intl.message(
      'No Job Requests',
      name: 'no_job_requests',
      desc: '',
      args: [],
    );
  }

  /// `You haven't submitted any job requests yet`
  String get no_submitted_requests {
    return Intl.message(
      'You haven\'t submitted any job requests yet',
      name: 'no_submitted_requests',
      desc: '',
      args: [],
    );
  }

  /// `Jobs`
  String get jobs {
    return Intl.message(
      'Jobs',
      name: 'jobs',
      desc: '',
      args: [],
    );
  }

  /// `Try using different search terms`
  String get try_different_search_terms {
    return Intl.message(
      'Try using different search terms',
      name: 'try_different_search_terms',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get no_results_found {
    return Intl.message(
      'No results found',
      name: 'no_results_found',
      desc: '',
      args: [],
    );
  }

  /// `Search by title job`
  String get search_by_job_title {
    return Intl.message(
      'Search by title job',
      name: 'search_by_job_title',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `What language do you prefer?`
  String get what_language_do_you_prefer {
    return Intl.message(
      'What language do you prefer?',
      name: 'what_language_do_you_prefer',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get log_out {
    return Intl.message(
      'Log Out',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
