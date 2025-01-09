import 'package:drift/drift.dart';

enum AnimalSex {
  male,
  female,
}

class Users extends Table {
  // Type declaration alternative 1
  TextColumn get id => text()();
  BoolColumn get active => boolean()();

  // Type declaration alternative 2
  late final name = text()();
  late final sex = intEnum<AnimalSex>()();
  late final createdAt = dateTime().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {id};

}
