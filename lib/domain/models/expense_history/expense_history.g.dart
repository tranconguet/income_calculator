// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_history.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExpenseHistoryAdapter extends TypeAdapter<ExpenseHistory> {
  @override
  final int typeId = 2;

  @override
  ExpenseHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExpenseHistory(
      expenseItems: (fields[1] as List).cast<ExpenseItem>(),
      lastUpdated: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ExpenseHistory obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.lastUpdated)
      ..writeByte(1)
      ..write(obj.expenseItems);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExpenseHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
