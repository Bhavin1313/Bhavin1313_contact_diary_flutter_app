import 'package:flutter/material.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({super.key});

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
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
        title: Text("Add Contact Hear..."),
        actions: [
          IconButton(
            onPressed: () {
              formkey.currentState!.save();
            },
            icon: Icon(Icons.check),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Form(
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
                  Container(
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.photo,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
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
                onSaved: (val) {
                  setState(() {
                    firstname = val;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Bhavin",
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
                onSaved: (val) {
                  setState(() {
                    lastname = val;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Bhalala",
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
                keyboardType: TextInputType.phone,
                onSaved: (val) {
                  setState(() {
                    phonenumber = val;
                  });
                },
                decoration: InputDecoration(
                  hintText: "75673 46037",
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
                keyboardType: TextInputType.emailAddress,
                onSaved: (val) {
                  setState(() {
                    email = val;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Bhavin1313bhalala@gmail.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
