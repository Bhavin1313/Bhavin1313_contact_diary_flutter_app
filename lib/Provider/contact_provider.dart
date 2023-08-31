import 'package:flutter/cupertino.dart';

import '../Model/contact_model.dart';

class ContactProvider extends ChangeNotifier {
  static List<Contact> ContactList = [
    Contact(
        email: "Chirag@gmail.com",
        phonenumber: "8140482838",
        firstname: "Chirag",
        lastname: "Dudhat"),
    Contact(
        email: "Chirag@gmail.com",
        phonenumber: "9157070833",
        firstname: "Vaibhav",
        lastname: "Bhalala"),
    Contact(
        email: "Chirag@gmail.com",
        phonenumber: "7567346037",
        firstname: "Bhavin",
        lastname: "Bhalala"),
    Contact(
        email: "Chirag@gmail.com",
        phonenumber: "7778031666",
        firstname: "Umang",
        lastname: "Takoliya"),
    Contact(
        email: "Chirag@gmail.com",
        phonenumber: "9638982824",
        firstname: "Naimish",
        lastname: "Kanani"),
    Contact(
        email: "Chirag@gmail.com",
        phonenumber: "7359056062",
        firstname: "Harshit",
        lastname: "Kanani"),
    Contact(
        email: "Chirag@gmail.com",
        phonenumber: "7567935431",
        firstname: "Abhishek",
        lastname: "Bhalala"),
    Contact(
        email: "Chirag@gmail.com",
        phonenumber: "8238215052",
        firstname: "Parth",
        lastname: "Sardhara"),
    Contact(
      email: "Aarav@gmail.com",
      phonenumber: "9876543210",
      firstname: "Aarav",
      lastname: "Sharma",
    ),
    Contact(
      email: "Aditi@yahoo.com",
      phonenumber: "8765432109",
      firstname: "Aditi",
      lastname: "Verma",
    ),
    Contact(
      email: "Akshay@hotmail.com",
      phonenumber: "7654321098",
      firstname: "Akshay",
      lastname: "Gupta",
    ),
    Contact(
      email: "Ananya@gmail.com",
      phonenumber: "6543210987",
      firstname: "Ananya",
      lastname: "Patel",
    ),
    Contact(
      email: "Ankit@gmail.com",
      phonenumber: "5432109876",
      firstname: "Ankit",
      lastname: "Singh",
    ),
    Contact(
      email: "Arjun@yahoo.com",
      phonenumber: "4321098765",
      firstname: "Arjun",
      lastname: "Kumar",
    ),
    Contact(
      email: "Aryan@hotmail.com",
      phonenumber: "3210987654",
      firstname: "Aryan",
      lastname: "Shah",
    ),
    Contact(
      email: "Ayush@gmail.com",
      phonenumber: "2109876543",
      firstname: "Ayush",
      lastname: "Jain",
    ),
    Contact(
      email: "Bhavna@yahoo.com",
      phonenumber: "1098765432",
      firstname: "Bhavna",
      lastname: "Das",
    ),
    Contact(
      email: "Chetan@hotmail.com",
      phonenumber: "0987654321",
      firstname: "Chetan",
      lastname: "Mishra",
    ),
    Contact(
      email: "Deepika@gmail.com",
      phonenumber: "9876543210",
      firstname: "Deepika",
      lastname: "Rao",
    ),
    Contact(
      email: "Devansh@yahoo.com",
      phonenumber: "8765432109",
      firstname: "Devansh",
      lastname: "Reddy",
    ),
    Contact(
      email: "Divya@hotmail.com",
      phonenumber: "7654321098",
      firstname: "Divya",
      lastname: "Gandhi",
    ),
    Contact(
      email: "Esha@gmail.com",
      phonenumber: "6543210987",
      firstname: "Esha",
      lastname: "Nair",
    ),
    Contact(
      email: "Gaurav@gmail.com",
      phonenumber: "5432109876",
      firstname: "Gaurav",
      lastname: "Saxena",
    ),
    Contact(
      email: "Isha@yahoo.com",
      phonenumber: "4321098765",
      firstname: "Isha",
      lastname: "Rajput",
    ),
    Contact(
      email: "Kavya@hotmail.com",
      phonenumber: "3210987654",
      firstname: "Kavya",
      lastname: "Chauhan",
    ),
    Contact(
      email: "Kunal@gmail.com",
      phonenumber: "2109876543",
      firstname: "Kunal",
      lastname: "Malik",
    ),
    Contact(
      email: "Madhav@yahoo.com",
      phonenumber: "1098765432",
      firstname: "Madhav",
      lastname: "Rawat",
    ),
    Contact(
      email: "Manish@hotmail.com",
      phonenumber: "0987654321",
      firstname: "Manish",
      lastname: "Bose",
    ),
    Contact(
      email: "Mira@gmail.com",
      phonenumber: "9876543210",
      firstname: "Mira",
      lastname: "Chopra",
    ),
    Contact(
      email: "Neha@yahoo.com",
      phonenumber: "8765432109",
      firstname: "Neha",
      lastname: "Iyer",
    ),
    Contact(
      email: "Nikhil@hotmail.com",
      phonenumber: "7654321098",
      firstname: "Nikhil",
      lastname: "Venkatesh",
    ),
    Contact(
      email: "Nisha@gmail.com",
      phonenumber: "6543210987",
      firstname: "Nisha",
      lastname: "Bhat",
    ),
    Contact(
      email: "Pooja@gmail.com",
      phonenumber: "5432109876",
      firstname: "Pooja",
      lastname: "Mishra",
    ),
    Contact(
      email: "Pranav@yahoo.com",
      phonenumber: "4321098765",
      firstname: "Pranav",
      lastname: "Sharma",
    ),
    Contact(
      email: "Rahul@hotmail.com",
      phonenumber: "3210987654",
      firstname: "Rahul",
      lastname: "Yadav",
    ),
    Contact(
      email: "Riya@gmail.com",
      phonenumber: "2109876543",
      firstname: "Riya",
      lastname: "Kapoor",
    ),
    Contact(
      email: "Rohan@yahoo.com",
      phonenumber: "1098765432",
      firstname: "Rohan",
      lastname: "Agarwal",
    ),
    Contact(
      email: "Ruchi@hotmail.com",
      phonenumber: "0987654321",
      firstname: "Ruchi",
      lastname: "Gupta",
    ),
    Contact(
      email: "Sakshi@gmail.com",
      phonenumber: "9876543210",
      firstname: "Sakshi",
      lastname: "Shukla",
    ),
    Contact(
      email: "Samir@yahoo.com",
      phonenumber: "8765432109",
      firstname: "Samir",
      lastname: "Choudhary",
    ),
    Contact(
      email: "Sanya@hotmail.com",
      phonenumber: "7654321098",
      firstname: "Sanya",
      lastname: "Biswas",
    ),
    Contact(
      email: "Shreya@gmail.com",
      phonenumber: "6543210987",
      firstname: "Shreya",
      lastname: "Mehta",
    ),
    Contact(
      email: "Siddharth@gmail.com",
      phonenumber: "5432109876",
      firstname: "Siddharth",
      lastname: "Nair",
    ),
    Contact(
      email: "Simran@yahoo.com",
      phonenumber: "4321098765",
      firstname: "Simran",
      lastname: "Menon",
    ),
    Contact(
      email: "Sneha@hotmail.com",
      phonenumber: "3210987654",
      firstname: "Sneha",
      lastname: "Seth",
    ),
    Contact(
      email: "Soham@gmail.com",
      phonenumber: "2109876543",
      firstname: "Soham",
      lastname: "Rastogi",
    ),
    Contact(
      email: "Swati@yahoo.com",
      phonenumber: "1098765432",
      firstname: "Swati",
      lastname: "Pandey",
    ),
    Contact(
      email: "Tanya@hotmail.com",
      phonenumber: "0987654321",
      firstname: "Tanya",
      lastname: "Kumar",
    ),
    Contact(
      email: "Utkarsh@gmail.com",
      phonenumber: "9876543210",
      firstname: "Utkarsh",
      lastname: "Deshpande",
    ),
    Contact(
      email: "Vishal@yahoo.com",
      phonenumber: "8765432109",
      firstname: "Vishal",
      lastname: "Shetty",
    ),
    Contact(
      email: "Yashasvi@hotmail.com",
      phonenumber: "7654321098",
      firstname: "Yashasvi",
      lastname: "Menon",
    ),
    Contact(
      email: "Zoya@gmail.com",
      phonenumber: "6543210987",
      firstname: "Zoya",
      lastname: "Singhania",
    ),
  ];

  void AddContact({required Contact add_contact}) {
    ContactList.add(add_contact);
    notifyListeners();
  }
}
