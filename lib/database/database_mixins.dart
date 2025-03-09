import 'package:drift/drift.dart';
import 'package:drift_test_pagination/app_extensions.dart';

mixin DefaultLocalAndRemotePrimaryKeys on Table {
  late final localId = text()();
  late final remoteId = text().nullable()();

  final initializedDate = DateTime.now().toIso8601StringWithTz();

  late final createdAt =
      text().nullable().clientDefault(() => initializedDate)();
  late final updatedAt =
      text().nullable().clientDefault(() => initializedDate)();

  @override
  Set<Column<Object>>? get primaryKey => {localId};
}
