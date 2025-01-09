import 'package:drift/drift.dart';
import 'package:drift_test_pagination/app_database.dart';
import 'package:drift_test_pagination/users.dart';

part 'users_dao.g.dart';

@DriftAccessor(tables: [Users])
class UsersDao extends DatabaseAccessor<AppDatabase> with _$UsersDaoMixin {
  UsersDao(super.db);

  // A auto-generated User class will be create in order to be used as a type and at the view page
  Future<List<User>> getUsersPaginated(int offset) async {
    return await (select(users)..limit(10, offset: offset)).get();
  }
}
