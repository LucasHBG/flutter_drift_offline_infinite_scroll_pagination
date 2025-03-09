import 'package:drift/drift.dart';

import 'database/app_database.dart';

part 'users_dao.g.dart';

@DriftAccessor(include: {'database/create_tables.drift'})
class UsersDao extends DatabaseAccessor<AppDatabase> with _$UsersDaoMixin {
  UsersDao(super.db);

  Future<List<User>> getUsers(int offset) async {
    return await select(users).get();
  }

  // A auto-generated User class will be create in order to be used as a type and at the view page
  Future<List<User>> getUsersPaginated(int offset) async {
    return await (select(users)..limit(10, offset: offset)).get();
  }
}
