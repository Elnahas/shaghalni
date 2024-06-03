import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/app_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late LoginCubit _cubit;
  late TextEditingController phoneController;

  @override
  void initState() {
    _cubit = context.read<LoginCubit>();

    phoneController = _cubit.phoneNumberController;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _cubit.loginFormKey,
      child: Column(
        children: [
          AppTextFormField(
              hintText: "Phone Number",
              keyboardType: TextInputType.phone,
              suffixIcon: CountryCodePicker(
                onChanged: (value) {
                  _cubit.codeCountry = value.dialCode!;
                },
                initialSelection: 'EG',
                favorite: const ['EG'],
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                alignLeft: false,
              ),
              validator: _validatePhoneNumber,
              controller: phoneController)
        ],
      ),
    );
  }

  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your phone number";
    }

    // Check if the number starts with a zero and remove it
    if (value.startsWith("0")) {
      value = value.substring(1);
    }

    // Check if the number is valid after removing the zero
    if (!value.startsWith("1") || value.length != 10 && value.length != 11) {
      return "Please enter a valid phone number";
    }

    // Save the processed value back to the controller
    phoneController.text = value;

    return null;
  }
}
