// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudentMoodelAdapter extends TypeAdapter<StudentMoodel> {
  @override
  final int typeId = 0;

  @override
  StudentMoodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StudentMoodel(
      name: fields[0] as String?,
      age: fields[1] as String?,
      schoolName: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StudentMoodel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.schoolName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentMoodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
