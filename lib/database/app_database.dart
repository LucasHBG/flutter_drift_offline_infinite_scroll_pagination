import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:drift_test_pagination/users_dao.dart';
import 'package:path_provider/path_provider.dart';
import '../enums.dart';
import 'connection/connection.dart' as impl;

part 'app_database.g.dart';

@DriftDatabase(
  daos: [UsersDao],
  include: {'create_tables.drift'},
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? e])
      : super(
          e ??
              driftDatabase(
                name: 'repro-app',
                native: const DriftNativeOptions(
                  databaseDirectory: getApplicationSupportDirectory,
                ),
              ),
        );

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        // Make sure that foreign keys are enabled
        await customStatement('PRAGMA foreign_keys = ON');

        if (details.wasCreated) {
          // Create a bunch of default values so the app doesn't look too empty
          // on the first start.
        }

        // This follows the recommendation to validate that the database schema
        // matches what drift expects (https://drift.simonbinder.eu/docs/advanced-features/migrations/#verifying-a-database-schema-at-runtime).
        // It allows catching bugs in the migration logic early.
        await impl.validateDatabaseSchema(this);
      },
    );
  }
}
