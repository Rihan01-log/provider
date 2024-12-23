import 'package:hive/hive.dart';
  part 'model.g.dart';
@HiveType(typeId: 0)
  
class StudentMoodel {

  @HiveField(0)
  String?name;
  @HiveField(1)
  String? age;
  @HiveField(2)
  String?schoolName;
  String ? image;
  StudentMoodel({
    required this.name,required this.age,required this.schoolName,this.image
  });
}