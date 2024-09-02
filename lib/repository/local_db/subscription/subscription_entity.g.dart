// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubscriptionsEntityAdapter extends TypeAdapter<SubscriptionsEntity> {
  @override
  final int typeId = 1;

  @override
  SubscriptionsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubscriptionsEntity(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String,
      price: fields[3] as String,
      currency: fields[4] as String,
      interval: fields[5] as String,
      status: fields[6] as String,
      createdAt: fields[7] as String,
      logoUrl: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SubscriptionsEntity obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.currency)
      ..writeByte(5)
      ..write(obj.interval)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.logoUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubscriptionsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
