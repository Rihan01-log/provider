import 'package:crud/model/model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Crudapps extends ChangeNotifier{

List<StudentMoodel> storedData=[];

Future addStudent(StudentMoodel value)async{
  final studentDb=await Hive.openBox<StudentMoodel>('data base');
  studentDb.addAll(studentDb.values);
  studentDb.add(value);
  notifyListeners();
}

Future getStudent()async{
  final studentDb=await Hive.openBox<StudentMoodel>('data base');
  studentDb.clear();
  studentDb.addAll(studentDb.values);
  notifyListeners();
}

Future editStudent(int index,value)async{
  final studentDb=await Hive.openBox<StudentMoodel>('data base');
  studentDb.putAt(index, value);
  getStudent();
  notifyListeners();
}

}