import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shaghalni/core/theming/app_colors.dart';

import '../../logic/cubit/signup_cubit.dart';

// !! this class need to refactor to can be reusable
class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  late final SignupCubit _cubit;
  late final ImagePicker _picker;

  @override
  void initState() {
    _cubit = context.read<SignupCubit>();
    _picker = ImagePicker();
    super.initState();
  }

  Future<void> _pickAndCropImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    late final CroppedFile? croppedFile;

    if (pickedFile != null) {
      croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: AppColors.primaryColor,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false,
              aspectRatioPresets: [
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio16x9
              ]),
          IOSUiSettings(
            title: 'Cropper',
          ),
          WebUiSettings(
            context: context,
          ),
        ],
      );
    }

    setState(() {
      if (croppedFile != null) {
        _cubit.imageFile = File(croppedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: _cubit.imageFile != null
                ? FileImage(_cubit.imageFile!)
                : const AssetImage("assets/images/ic_profile_placeholder.png"),
          ),
          Positioned(
            bottom: -5,
            right: 0,
            child: IconButton(
              onPressed: () async {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => _buildBottomSheet(),
                );
              },
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.camera),
            title: const Text('Camera'),
            onTap: () {
              Navigator.of(context).pop();
              _pickAndCropImage(ImageSource.camera);
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Gallery'),
            onTap: () {
              Navigator.of(context).pop();
              _pickAndCropImage(ImageSource.gallery);
            },
          ),
        ],
      ),
    );
  }
}
