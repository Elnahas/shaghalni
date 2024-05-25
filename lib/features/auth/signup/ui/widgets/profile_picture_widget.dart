import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
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
            backgroundImage: _imageFile != null
                ? FileImage(_imageFile!)
                : const AssetImage("assets/images/ic_profile_placeholder.png") ,
          ),
          Positioned(
            bottom: -5,
            right: 0,
            child: IconButton(
              onPressed: () async {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => BottomSheet(
                    onClosing: () {},
                    builder: (context) => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: const Icon(Icons.camera),
                          title:const Text('Camera'),
                          onTap: () {
                            Navigator.of(context).pop();
                            _pickImage(ImageSource.camera);
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.photo_library),
                          title: const Text('Gallery'),
                          onTap: () {
                            Navigator.of(context).pop();
                            _pickImage(ImageSource.gallery);
                          },
                        ),
                      ],
                    ),
                  ),
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



}
