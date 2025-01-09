import 'package:drift_test_pagination/app_database.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name),
      subtitle: Text("${user.sex.name} - Ativo: ${user.active}"),
    );
  }
}
