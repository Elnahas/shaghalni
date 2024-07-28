import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shaghalni/core/theming/app_colors.dart';
import '../../../../../core/widgets/app_circle_avatar.dart';
import '../../../../../generated/l10n.dart';

class ProfilePicture extends StatefulWidget {
  final Function(File?)? onImageSelected;
  final File? initialImageFile;

  const ProfilePicture({
    Key? key,
    this.onImageSelected,
    this.initialImageFile,
  }) : super(key: key);

  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  late final ImagePicker _picker;
  File? _imageFile;

  @override
  void initState() {
    _picker = ImagePicker();
    _imageFile = widget.initialImageFile;
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
              toolbarTitle: S.of(context).cropper,
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
            title: S.of(context).cropper,
          ),
          WebUiSettings(
            context: context,
          ),
        ],
      );
    }

    setState(() {
      if (croppedFile != null) {
        _imageFile = File(croppedFile.path);
        widget.onImageSelected!(_imageFile);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [
          AppCircleAvatar(
            imageUrl:
                _imageFile != null ? FileImage(_imageFile!).file.path : "",
            radius: 50,
            errorWidget:
                Image.asset("assets/images/ic_profile_placeholder.png"),
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
            title: Text(S.of(context).camera),
            onTap: () {
              Navigator.of(context).pop();
              _pickAndCropImage(ImageSource.camera);
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: Text(S.of(context).gallery),
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
