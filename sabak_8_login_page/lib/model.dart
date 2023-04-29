import 'package:flutter/material.dart';

class Student  {
 Student( 
  {required  this.id,
    required this.name, 
  required this.surName,
  required this.age,
  this.phone,
  required this.email,
  this.adress,
  required this.group,
  this.gender,
  this.marriege});
  final int id;

  final String name; 
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? adress;
  int group; 
   final String? gender;
  String? marriege;
 }
  final daniar = Student(id: 1,
    name: 'Danir', 
    surName:'Askarov', 
    age: 18, 
    email: 'daniar@mail', 
    group: 1);

    final dinara = Student(id: 2,
    name: 'Danir', 
    surName:'Askarov', 
    age: 18, 
    email: 'daniar@mail', 
    group: 1);

final hanzada = Student(id: 3,
    name: 'Danir', 
    surName:'Askarov', 
    age: 18, 
    email: 'daniar@mail', 
    group: 1);

final mirbek = Student(id: 4,
    name: 'Danir', 
    surName:'Askarov', 
    age: 18, 
    email: 'daniar@mail', 
    group: 1);


final aybek = Student(id: 5,
    name: 'Danir', 
    surName:'Askarov', 
    age: 18, 
    email: 'daniar@mail', 
    group: 1);

    List studentter = <Student>[
    daniar, 
    dinara,
    hanzada, 
    mirbek, 
    aybek,];
