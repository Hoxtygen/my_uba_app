// ignore_for_file: avoid_print
import "dart:io";
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_uba_app/shared/home_background_image/dialog_button.dart';
import 'package:my_uba_app/shared/home_background_image/dialog_text.dart';
import 'package:my_uba_app/shared/more_menu.dart';
import 'package:permission_handler/permission_handler.dart';


class HomeTopRight extends StatefulWidget {
  const HomeTopRight({super.key});

  @override
  State<HomeTopRight> createState() => _HomeTopRightState();
}

class _HomeTopRightState extends State<HomeTopRight> {
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  getPermissionStatus() async {
    await Permission.camera.request();
    var status = await Permission.camera.status;
    if (status.isGranted) {
      print("Camera permission granted");
    } else {
      print("Permission denied");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 25,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              backgroundColor: Colors.transparent,
              elevation: 0,
              padding: const EdgeInsets.all(0),
            ),
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      child: SizedBox(
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30.0, horizontal: 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    child: const Icon(
                                      Icons.clear,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              ),
                              const DialogText(),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  children: [
                                    BackgroundDialogButton(
                                      text: "Camera",
                                      onPress: (() => pickImage(ImageSource.camera)),
                                    ),
                                    BackgroundDialogButton(
                                      text: "Gallery",
                                      onPress: (() => pickImage(ImageSource.gallery)),
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: const Icon(
              Icons.photo_camera_outlined,
              size: 30,
            ),
          ),
        ),
        GestureDetector(
          child: const Icon(
            Icons.more_vert_outlined,
            color: Colors.white,
            size: 45,
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const MoreMenu();
            }));
          },
        ),
      ],
    );
  }
}

// TODO: Make camera align with bottom of vertical icon
/*
*
* */
