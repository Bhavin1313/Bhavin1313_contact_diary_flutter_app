import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({super.key});

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  ImagePicker picker = ImagePicker();
  String? imagePath = "";
  XFile? image;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  int initialIndex = 0;
  String? firstname;
  String? lastname;
  String? phonenumber;
  String? email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            RotateAnimatedText("Add Contact"),
            RotateAnimatedText("Here"),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Saved Successfully..."),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Plase Enter Full Detail..."),
                  ),
                );
              }
            },
            icon: Icon(Icons.check),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Form(
          key: formkey,
          child: Stepper(
            currentStep: initialIndex,
            onStepContinue: () {
              setState(() {
                if (initialIndex != 4) {
                  ++initialIndex;
                }
              });
            },
            onStepCancel: () {
              setState(() {
                if (initialIndex != 0) {
                  --initialIndex;
                }
              });
            },
            steps: <Step>[
              Step(
                state:
                    (initialIndex == 0) ? StepState.editing : StepState.indexed,
                isActive: (initialIndex == 0) ? true : false,
                title: Text("Enter Image"),
                content: Column(
                  children: [
                    (image == null)
                        ? Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: Center(
                              child: Text(
                                "Add",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          )
                        : Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: FileImage(
                                  File("${image?.path}"),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () async {
                            image = await picker.pickImage(
                              source: ImageSource.camera,
                            );
                            setState(() {
                              imagePath = image!.path;
                            });
                          },
                          icon: Icon(
                            Icons.photo,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            image = await picker.pickImage(
                              source: ImageSource.gallery,
                            );
                            setState(() {
                              imagePath = image!.path;
                            });
                          },
                          icon: Icon(
                            Icons.camera_alt_outlined,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Step(
                state:
                    (initialIndex == 1) ? StepState.editing : StepState.indexed,
                isActive: (initialIndex == 1) ? true : false,
                title: Text("First Name"),
                content: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter First Name";
                    }
                  },
                  onSaved: (val) {
                    setState(() {
                      firstname = val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Bhavin",
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Step(
                state:
                    (initialIndex == 2) ? StepState.editing : StepState.indexed,
                isActive: (initialIndex == 2) ? true : false,
                title: Text("Last Name"),
                content: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Last name";
                    }
                  },
                  onSaved: (val) {
                    setState(() {
                      lastname = val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Bhalala",
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Step(
                state:
                    (initialIndex == 3) ? StepState.editing : StepState.indexed,
                isActive: (initialIndex == 3) ? true : false,
                title: Text("Phone Number"),
                content: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Phone Number";
                    }
                  },
                  keyboardType: TextInputType.phone,
                  onSaved: (val) {
                    setState(() {
                      phonenumber = val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "75673 46037",
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Step(
                state:
                    (initialIndex == 4) ? StepState.editing : StepState.indexed,
                isActive: (initialIndex == 4) ? true : false,
                title: Text("Email"),
                content: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Email";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Bhavin1313bhalala@gmail.com",
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
