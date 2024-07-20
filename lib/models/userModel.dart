import 'package:flutter/material.dart';

class UserModel{
  final int pk;
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String gender;
  final String password;

    UserModel({
        required this.pk,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.phoneNumber,
        required this.gender,
        required this.password,
        });
      
      

  factory UserModel.fromJson(Map<String, dynamic> jsonData)
  {
    return UserModel(
      pk: jsonData['pk'],
      firstName: jsonData['first_name'],
      lastName: jsonData['last_name'],
      email: jsonData['email'],
      phoneNumber: jsonData['phone_number'],
      gender: jsonData['gender'], 
      password: jsonData['password']
      );}

}