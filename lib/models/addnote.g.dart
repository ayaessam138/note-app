// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addnote.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class addnoteAdapter extends TypeAdapter<addnote> {
  @override
  final int typeId = 0;

  @override
  addnote read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return addnote(
      title: fields[0] as String,
      subtitle: fields[1] as String,
      date: fields[2] as String,
      color: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, addnote obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.subtitle)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is addnoteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
