import 'dart:async';
import 'dart:io';
import 'package:contact_diary_app_bhavin/Utils/mytheam.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:contact_diary_app_bhavin/Provider/contact_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../Model/contact_model.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({super.key});

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  ImagePicker picker = ImagePicker();

  XFile? image;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int initialIndex = 0;
  String firstname = "";
  String lastname = "";
  String phonenumber = "";
  String email = "";
  TextEditingController firstnamec = TextEditingController();
  TextEditingController lastnamec = TextEditingController();
  TextEditingController phonenumberc = TextEditingController();
  TextEditingController emailc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            RotateAnimatedText(
              "Add Contact",
              textStyle: GoogleFonts.getFont("Tilt Prism").merge(
                const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RotateAnimatedText(
              "Here",
              textStyle: GoogleFonts.getFont("Tilt Prism").merge(
                const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                setState(
                  () {
                    Timer(const Duration(seconds: 3), () {
                      Navigator.pop(context);
                    });
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Row(
                          children: [
                            const Icon(Icons.person_pin),
                            Text(
                              "$firstname Added",
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    );
                  },
                );

                Contact c1 = Contact(
                  email: email,
                  firstname: firstname,
                  lastname: lastname,
                  phonenumber: phonenumber,
                );

                Provider.of<ContactProvider>(context, listen: false)
                    .AddContact(add_contact: c1);

                firstnamec.clear();
                lastnamec.clear();
                emailc.clear();
                phonenumberc.clear();

                Navigator.pop(context);
              } else {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    elevation: 5,
                    title: const Text(
                      "Add info to save as a contact.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    content: Row(
                      children: [
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("ok"),
                        ),
                      ],
                    ),
                  ),
                );
              }
            },
            icon: const Icon(Icons.check),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Form(
          key: formKey,
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
                title: const Text("Enter Image"),
                content: Column(
                  children: [
                    (image == null)
                        ? Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: const Center(
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
                              myTheam.imagePath = image!.path;
                            });
                          },
                          icon: const Icon(
                            Icons.photo,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            image = await picker.pickImage(
                              source: ImageSource.gallery,
                            );
                            setState(() {
                              myTheam.imagePath = image!.path;
                            });
                          },
                          icon: const Icon(
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
                title: const Text("First Name"),
                content: TextFormField(
                  controller: firstnamec,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter First Name";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      firstname = val!;
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
                title: const Text("Last Name"),
                content: TextFormField(
                  controller: lastnamec,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Last name";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      lastname = val!;
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
                title: const Text("Phone Number"),
                content: TextFormField(
                  controller: phonenumberc,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Phone Number";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  onSaved: (val) {
                    setState(() {
                      phonenumber = val!;
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
                title: const Text("Email"),
                content: TextFormField(
                  controller: emailc,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Email";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (val) {
                    setState(() {
                      email = val!;
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
