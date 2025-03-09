// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class Users extends Table with TableInfo<Users, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Users(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta =
      const VerificationMeta('localId');
  late final GeneratedColumn<String> localId = GeneratedColumn<String>(
      'local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _firebaseUidMeta =
      const VerificationMeta('firebaseUid');
  late final GeneratedColumn<String> firebaseUid = GeneratedColumn<String>(
      'firebase_uid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL UNIQUE');
  static const VerificationMeta _firebaseEmailMeta =
      const VerificationMeta('firebaseEmail');
  late final GeneratedColumn<String> firebaseEmail = GeneratedColumn<String>(
      'firebase_email', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL UNIQUE');
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns =>
      [localId, remoteId, firebaseUid, firebaseEmail, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(_localIdMeta,
          localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta));
    } else if (isInserting) {
      context.missing(_localIdMeta);
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    }
    if (data.containsKey('firebase_uid')) {
      context.handle(
          _firebaseUidMeta,
          firebaseUid.isAcceptableOrUnknown(
              data['firebase_uid']!, _firebaseUidMeta));
    } else if (isInserting) {
      context.missing(_firebaseUidMeta);
    }
    if (data.containsKey('firebase_email')) {
      context.handle(
          _firebaseEmailMeta,
          firebaseEmail.isAcceptableOrUnknown(
              data['firebase_email']!, _firebaseEmailMeta));
    } else if (isInserting) {
      context.missing(_firebaseEmailMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id']),
      firebaseUid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}firebase_uid'])!,
      firebaseEmail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}firebase_email'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  Users createAlias(String alias) {
    return Users(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class User extends DataClass implements Insertable<User> {
  final String localId;
  final String? remoteId;
  final String firebaseUid;
  final String firebaseEmail;
  final String createdAt;
  final String updatedAt;
  const User(
      {required this.localId,
      this.remoteId,
      required this.firebaseUid,
      required this.firebaseEmail,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<String>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['firebase_uid'] = Variable<String>(firebaseUid);
    map['firebase_email'] = Variable<String>(firebaseEmail);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      localId: Value(localId),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
      firebaseUid: Value(firebaseUid),
      firebaseEmail: Value(firebaseEmail),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      localId: serializer.fromJson<String>(json['local_id']),
      remoteId: serializer.fromJson<String?>(json['remote_id']),
      firebaseUid: serializer.fromJson<String>(json['firebase_uid']),
      firebaseEmail: serializer.fromJson<String>(json['firebase_email']),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'local_id': serializer.toJson<String>(localId),
      'remote_id': serializer.toJson<String?>(remoteId),
      'firebase_uid': serializer.toJson<String>(firebaseUid),
      'firebase_email': serializer.toJson<String>(firebaseEmail),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  User copyWith(
          {String? localId,
          Value<String?> remoteId = const Value.absent(),
          String? firebaseUid,
          String? firebaseEmail,
          String? createdAt,
          String? updatedAt}) =>
      User(
        localId: localId ?? this.localId,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
        firebaseUid: firebaseUid ?? this.firebaseUid,
        firebaseEmail: firebaseEmail ?? this.firebaseEmail,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      firebaseUid:
          data.firebaseUid.present ? data.firebaseUid.value : this.firebaseUid,
      firebaseEmail: data.firebaseEmail.present
          ? data.firebaseEmail.value
          : this.firebaseEmail,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('firebaseUid: $firebaseUid, ')
          ..write('firebaseEmail: $firebaseEmail, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      localId, remoteId, firebaseUid, firebaseEmail, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.firebaseUid == this.firebaseUid &&
          other.firebaseEmail == this.firebaseEmail &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> localId;
  final Value<String?> remoteId;
  final Value<String> firebaseUid;
  final Value<String> firebaseEmail;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const UsersCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.firebaseUid = const Value.absent(),
    this.firebaseEmail = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String localId,
    this.remoteId = const Value.absent(),
    required String firebaseUid,
    required String firebaseEmail,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : localId = Value(localId),
        firebaseUid = Value(firebaseUid),
        firebaseEmail = Value(firebaseEmail);
  static Insertable<User> custom({
    Expression<String>? localId,
    Expression<String>? remoteId,
    Expression<String>? firebaseUid,
    Expression<String>? firebaseEmail,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (firebaseUid != null) 'firebase_uid': firebaseUid,
      if (firebaseEmail != null) 'firebase_email': firebaseEmail,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? localId,
      Value<String?>? remoteId,
      Value<String>? firebaseUid,
      Value<String>? firebaseEmail,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return UsersCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      firebaseUid: firebaseUid ?? this.firebaseUid,
      firebaseEmail: firebaseEmail ?? this.firebaseEmail,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<String>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (firebaseUid.present) {
      map['firebase_uid'] = Variable<String>(firebaseUid.value);
    }
    if (firebaseEmail.present) {
      map['firebase_email'] = Variable<String>(firebaseEmail.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('firebaseUid: $firebaseUid, ')
          ..write('firebaseEmail: $firebaseEmail, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class Accounts extends Table with TableInfo<Accounts, Account> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Accounts(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta =
      const VerificationMeta('localId');
  late final GeneratedColumn<String> localId = GeneratedColumn<String>(
      'local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns =>
      [localId, remoteId, createdBy, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'accounts';
  @override
  VerificationContext validateIntegrity(Insertable<Account> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(_localIdMeta,
          localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta));
    } else if (isInserting) {
      context.missing(_localIdMeta);
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    } else if (isInserting) {
      context.missing(_createdByMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  Account map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Account(
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  Accounts createAlias(String alias) {
    return Accounts(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints =>
      const ['FOREIGN KEY(created_by)REFERENCES users(local_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class Account extends DataClass implements Insertable<Account> {
  final String localId;
  final String? remoteId;
  final String createdBy;
  final String createdAt;
  final String updatedAt;
  const Account(
      {required this.localId,
      this.remoteId,
      required this.createdBy,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<String>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['created_by'] = Variable<String>(createdBy);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  AccountsCompanion toCompanion(bool nullToAbsent) {
    return AccountsCompanion(
      localId: Value(localId),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
      createdBy: Value(createdBy),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Account.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Account(
      localId: serializer.fromJson<String>(json['local_id']),
      remoteId: serializer.fromJson<String?>(json['remote_id']),
      createdBy: serializer.fromJson<String>(json['created_by']),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'local_id': serializer.toJson<String>(localId),
      'remote_id': serializer.toJson<String?>(remoteId),
      'created_by': serializer.toJson<String>(createdBy),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  Account copyWith(
          {String? localId,
          Value<String?> remoteId = const Value.absent(),
          String? createdBy,
          String? createdAt,
          String? updatedAt}) =>
      Account(
        localId: localId ?? this.localId,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
        createdBy: createdBy ?? this.createdBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Account copyWithCompanion(AccountsCompanion data) {
    return Account(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Account(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(localId, remoteId, createdBy, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Account &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.createdBy == this.createdBy &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AccountsCompanion extends UpdateCompanion<Account> {
  final Value<String> localId;
  final Value<String?> remoteId;
  final Value<String> createdBy;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const AccountsCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AccountsCompanion.insert({
    required String localId,
    this.remoteId = const Value.absent(),
    required String createdBy,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : localId = Value(localId),
        createdBy = Value(createdBy);
  static Insertable<Account> custom({
    Expression<String>? localId,
    Expression<String>? remoteId,
    Expression<String>? createdBy,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (createdBy != null) 'created_by': createdBy,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AccountsCompanion copyWith(
      {Value<String>? localId,
      Value<String?>? remoteId,
      Value<String>? createdBy,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return AccountsCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      createdBy: createdBy ?? this.createdBy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<String>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountsCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('createdBy: $createdBy, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class AnimalBreeds extends Table with TableInfo<AnimalBreeds, AnimalBreed> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  AnimalBreeds(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta =
      const VerificationMeta('localId');
  late final GeneratedColumn<String> localId = GeneratedColumn<String>(
      'local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _acronymMeta =
      const VerificationMeta('acronym');
  late final GeneratedColumn<String> acronym = GeneratedColumn<String>(
      'acronym', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _popularityMeta =
      const VerificationMeta('popularity');
  late final GeneratedColumn<int> popularity = GeneratedColumn<int>(
      'popularity', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 999',
      defaultValue: const CustomExpression('999'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns =>
      [localId, remoteId, acronym, name, popularity, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'animal_breeds';
  @override
  VerificationContext validateIntegrity(Insertable<AnimalBreed> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(_localIdMeta,
          localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta));
    } else if (isInserting) {
      context.missing(_localIdMeta);
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    }
    if (data.containsKey('acronym')) {
      context.handle(_acronymMeta,
          acronym.isAcceptableOrUnknown(data['acronym']!, _acronymMeta));
    } else if (isInserting) {
      context.missing(_acronymMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('popularity')) {
      context.handle(
          _popularityMeta,
          popularity.isAcceptableOrUnknown(
              data['popularity']!, _popularityMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {name, acronym},
      ];
  @override
  AnimalBreed map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimalBreed(
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id']),
      acronym: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}acronym'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      popularity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}popularity'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  AnimalBreeds createAlias(String alias) {
    return AnimalBreeds(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['UNIQUE(name, acronym)'];
  @override
  bool get dontWriteConstraints => true;
}

class AnimalBreed extends DataClass implements Insertable<AnimalBreed> {
  final String localId;
  final String? remoteId;
  final String acronym;
  final String name;
  final int popularity;
  final String createdAt;
  final String updatedAt;
  const AnimalBreed(
      {required this.localId,
      this.remoteId,
      required this.acronym,
      required this.name,
      required this.popularity,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<String>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['acronym'] = Variable<String>(acronym);
    map['name'] = Variable<String>(name);
    map['popularity'] = Variable<int>(popularity);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  AnimalBreedsCompanion toCompanion(bool nullToAbsent) {
    return AnimalBreedsCompanion(
      localId: Value(localId),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
      acronym: Value(acronym),
      name: Value(name),
      popularity: Value(popularity),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory AnimalBreed.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimalBreed(
      localId: serializer.fromJson<String>(json['local_id']),
      remoteId: serializer.fromJson<String?>(json['remote_id']),
      acronym: serializer.fromJson<String>(json['acronym']),
      name: serializer.fromJson<String>(json['name']),
      popularity: serializer.fromJson<int>(json['popularity']),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'local_id': serializer.toJson<String>(localId),
      'remote_id': serializer.toJson<String?>(remoteId),
      'acronym': serializer.toJson<String>(acronym),
      'name': serializer.toJson<String>(name),
      'popularity': serializer.toJson<int>(popularity),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  AnimalBreed copyWith(
          {String? localId,
          Value<String?> remoteId = const Value.absent(),
          String? acronym,
          String? name,
          int? popularity,
          String? createdAt,
          String? updatedAt}) =>
      AnimalBreed(
        localId: localId ?? this.localId,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
        acronym: acronym ?? this.acronym,
        name: name ?? this.name,
        popularity: popularity ?? this.popularity,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  AnimalBreed copyWithCompanion(AnimalBreedsCompanion data) {
    return AnimalBreed(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      acronym: data.acronym.present ? data.acronym.value : this.acronym,
      name: data.name.present ? data.name.value : this.name,
      popularity:
          data.popularity.present ? data.popularity.value : this.popularity,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AnimalBreed(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('acronym: $acronym, ')
          ..write('name: $name, ')
          ..write('popularity: $popularity, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      localId, remoteId, acronym, name, popularity, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimalBreed &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.acronym == this.acronym &&
          other.name == this.name &&
          other.popularity == this.popularity &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AnimalBreedsCompanion extends UpdateCompanion<AnimalBreed> {
  final Value<String> localId;
  final Value<String?> remoteId;
  final Value<String> acronym;
  final Value<String> name;
  final Value<int> popularity;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const AnimalBreedsCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.acronym = const Value.absent(),
    this.name = const Value.absent(),
    this.popularity = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AnimalBreedsCompanion.insert({
    required String localId,
    this.remoteId = const Value.absent(),
    required String acronym,
    required String name,
    this.popularity = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : localId = Value(localId),
        acronym = Value(acronym),
        name = Value(name);
  static Insertable<AnimalBreed> custom({
    Expression<String>? localId,
    Expression<String>? remoteId,
    Expression<String>? acronym,
    Expression<String>? name,
    Expression<int>? popularity,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (acronym != null) 'acronym': acronym,
      if (name != null) 'name': name,
      if (popularity != null) 'popularity': popularity,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AnimalBreedsCompanion copyWith(
      {Value<String>? localId,
      Value<String?>? remoteId,
      Value<String>? acronym,
      Value<String>? name,
      Value<int>? popularity,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return AnimalBreedsCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      acronym: acronym ?? this.acronym,
      name: name ?? this.name,
      popularity: popularity ?? this.popularity,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<String>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (acronym.present) {
      map['acronym'] = Variable<String>(acronym.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (popularity.present) {
      map['popularity'] = Variable<int>(popularity.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimalBreedsCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('acronym: $acronym, ')
          ..write('name: $name, ')
          ..write('popularity: $popularity, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class AnimalCoats extends Table with TableInfo<AnimalCoats, AnimalCoat> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  AnimalCoats(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta =
      const VerificationMeta('localId');
  late final GeneratedColumn<String> localId = GeneratedColumn<String>(
      'local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _acronymMeta =
      const VerificationMeta('acronym');
  late final GeneratedColumn<String> acronym = GeneratedColumn<String>(
      'acronym', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns =>
      [localId, remoteId, acronym, name, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'animal_coats';
  @override
  VerificationContext validateIntegrity(Insertable<AnimalCoat> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(_localIdMeta,
          localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta));
    } else if (isInserting) {
      context.missing(_localIdMeta);
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    }
    if (data.containsKey('acronym')) {
      context.handle(_acronymMeta,
          acronym.isAcceptableOrUnknown(data['acronym']!, _acronymMeta));
    } else if (isInserting) {
      context.missing(_acronymMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {name, acronym},
      ];
  @override
  AnimalCoat map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimalCoat(
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id']),
      acronym: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}acronym'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  AnimalCoats createAlias(String alias) {
    return AnimalCoats(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const ['UNIQUE(name, acronym)'];
  @override
  bool get dontWriteConstraints => true;
}

class AnimalCoat extends DataClass implements Insertable<AnimalCoat> {
  final String localId;
  final String? remoteId;
  final String acronym;
  final String name;
  final String createdAt;
  final String updatedAt;
  const AnimalCoat(
      {required this.localId,
      this.remoteId,
      required this.acronym,
      required this.name,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<String>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['acronym'] = Variable<String>(acronym);
    map['name'] = Variable<String>(name);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  AnimalCoatsCompanion toCompanion(bool nullToAbsent) {
    return AnimalCoatsCompanion(
      localId: Value(localId),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
      acronym: Value(acronym),
      name: Value(name),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory AnimalCoat.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimalCoat(
      localId: serializer.fromJson<String>(json['local_id']),
      remoteId: serializer.fromJson<String?>(json['remote_id']),
      acronym: serializer.fromJson<String>(json['acronym']),
      name: serializer.fromJson<String>(json['name']),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'local_id': serializer.toJson<String>(localId),
      'remote_id': serializer.toJson<String?>(remoteId),
      'acronym': serializer.toJson<String>(acronym),
      'name': serializer.toJson<String>(name),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  AnimalCoat copyWith(
          {String? localId,
          Value<String?> remoteId = const Value.absent(),
          String? acronym,
          String? name,
          String? createdAt,
          String? updatedAt}) =>
      AnimalCoat(
        localId: localId ?? this.localId,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
        acronym: acronym ?? this.acronym,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  AnimalCoat copyWithCompanion(AnimalCoatsCompanion data) {
    return AnimalCoat(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      acronym: data.acronym.present ? data.acronym.value : this.acronym,
      name: data.name.present ? data.name.value : this.name,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AnimalCoat(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('acronym: $acronym, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(localId, remoteId, acronym, name, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimalCoat &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.acronym == this.acronym &&
          other.name == this.name &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AnimalCoatsCompanion extends UpdateCompanion<AnimalCoat> {
  final Value<String> localId;
  final Value<String?> remoteId;
  final Value<String> acronym;
  final Value<String> name;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const AnimalCoatsCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.acronym = const Value.absent(),
    this.name = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AnimalCoatsCompanion.insert({
    required String localId,
    this.remoteId = const Value.absent(),
    required String acronym,
    required String name,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : localId = Value(localId),
        acronym = Value(acronym),
        name = Value(name);
  static Insertable<AnimalCoat> custom({
    Expression<String>? localId,
    Expression<String>? remoteId,
    Expression<String>? acronym,
    Expression<String>? name,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (acronym != null) 'acronym': acronym,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AnimalCoatsCompanion copyWith(
      {Value<String>? localId,
      Value<String?>? remoteId,
      Value<String>? acronym,
      Value<String>? name,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return AnimalCoatsCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      acronym: acronym ?? this.acronym,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<String>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (acronym.present) {
      map['acronym'] = Variable<String>(acronym.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimalCoatsCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('acronym: $acronym, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class AnimalCategories extends Table
    with TableInfo<AnimalCategories, AnimalCategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  AnimalCategories(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta =
      const VerificationMeta('localId');
  late final GeneratedColumn<String> localId = GeneratedColumn<String>(
      'local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL UNIQUE');
  static const VerificationMeta _sexMeta = const VerificationMeta('sex');
  late final GeneratedColumnWithTypeConverter<AnimalSexEnum, int> sex =
      GeneratedColumn<int>('sex', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<AnimalSexEnum>(AnimalCategories.$convertersex);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns =>
      [localId, remoteId, name, sex, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'animal_categories';
  @override
  VerificationContext validateIntegrity(Insertable<AnimalCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(_localIdMeta,
          localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta));
    } else if (isInserting) {
      context.missing(_localIdMeta);
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_sexMeta, const VerificationResult.success());
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  AnimalCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimalCategory(
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      sex: AnimalCategories.$convertersex.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sex'])!),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  AnimalCategories createAlias(String alias) {
    return AnimalCategories(attachedDatabase, alias);
  }

  static JsonTypeConverter2<AnimalSexEnum, int, int> $convertersex =
      const EnumIndexConverter<AnimalSexEnum>(AnimalSexEnum.values);
  @override
  bool get dontWriteConstraints => true;
}

class AnimalCategory extends DataClass implements Insertable<AnimalCategory> {
  final String localId;
  final String? remoteId;
  final String name;
  final AnimalSexEnum sex;
  final String createdAt;
  final String updatedAt;
  const AnimalCategory(
      {required this.localId,
      this.remoteId,
      required this.name,
      required this.sex,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<String>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['name'] = Variable<String>(name);
    {
      map['sex'] = Variable<int>(AnimalCategories.$convertersex.toSql(sex));
    }
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  AnimalCategoriesCompanion toCompanion(bool nullToAbsent) {
    return AnimalCategoriesCompanion(
      localId: Value(localId),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
      name: Value(name),
      sex: Value(sex),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory AnimalCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimalCategory(
      localId: serializer.fromJson<String>(json['local_id']),
      remoteId: serializer.fromJson<String?>(json['remote_id']),
      name: serializer.fromJson<String>(json['name']),
      sex: AnimalCategories.$convertersex
          .fromJson(serializer.fromJson<int>(json['sex'])),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'local_id': serializer.toJson<String>(localId),
      'remote_id': serializer.toJson<String?>(remoteId),
      'name': serializer.toJson<String>(name),
      'sex': serializer.toJson<int>(AnimalCategories.$convertersex.toJson(sex)),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  AnimalCategory copyWith(
          {String? localId,
          Value<String?> remoteId = const Value.absent(),
          String? name,
          AnimalSexEnum? sex,
          String? createdAt,
          String? updatedAt}) =>
      AnimalCategory(
        localId: localId ?? this.localId,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
        name: name ?? this.name,
        sex: sex ?? this.sex,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  AnimalCategory copyWithCompanion(AnimalCategoriesCompanion data) {
    return AnimalCategory(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      name: data.name.present ? data.name.value : this.name,
      sex: data.sex.present ? data.sex.value : this.sex,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AnimalCategory(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('name: $name, ')
          ..write('sex: $sex, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(localId, remoteId, name, sex, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimalCategory &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.name == this.name &&
          other.sex == this.sex &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AnimalCategoriesCompanion extends UpdateCompanion<AnimalCategory> {
  final Value<String> localId;
  final Value<String?> remoteId;
  final Value<String> name;
  final Value<AnimalSexEnum> sex;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const AnimalCategoriesCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.name = const Value.absent(),
    this.sex = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AnimalCategoriesCompanion.insert({
    required String localId,
    this.remoteId = const Value.absent(),
    required String name,
    required AnimalSexEnum sex,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : localId = Value(localId),
        name = Value(name),
        sex = Value(sex);
  static Insertable<AnimalCategory> custom({
    Expression<String>? localId,
    Expression<String>? remoteId,
    Expression<String>? name,
    Expression<int>? sex,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (name != null) 'name': name,
      if (sex != null) 'sex': sex,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AnimalCategoriesCompanion copyWith(
      {Value<String>? localId,
      Value<String?>? remoteId,
      Value<String>? name,
      Value<AnimalSexEnum>? sex,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return AnimalCategoriesCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      name: name ?? this.name,
      sex: sex ?? this.sex,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<String>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (sex.present) {
      map['sex'] =
          Variable<int>(AnimalCategories.$convertersex.toSql(sex.value));
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimalCategoriesCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('name: $name, ')
          ..write('sex: $sex, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class Animals extends Table with TableInfo<Animals, Animal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Animals(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta =
      const VerificationMeta('localId');
  late final GeneratedColumn<String> localId = GeneratedColumn<String>(
      'local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _ageInMonthsMeta =
      const VerificationMeta('ageInMonths');
  late final GeneratedColumn<int> ageInMonths = GeneratedColumn<int>(
      'age_in_months', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL CHECK (age_in_months >= 0)');
  static const VerificationMeta _breedIdMeta =
      const VerificationMeta('breedId');
  late final GeneratedColumn<String> breedId = GeneratedColumn<String>(
      'breed_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
      'category_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _sexMeta = const VerificationMeta('sex');
  late final GeneratedColumnWithTypeConverter<AnimalSexEnum, int> sex =
      GeneratedColumn<int>('sex', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<AnimalSexEnum>(Animals.$convertersex);
  static const VerificationMeta _birthDateMeta =
      const VerificationMeta('birthDate');
  late final GeneratedColumn<String> birthDate = GeneratedColumn<String>(
      'birth_date', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'DEFAULT NULL',
      defaultValue: const CustomExpression('NULL'));
  static const VerificationMeta _coatIdMeta = const VerificationMeta('coatId');
  late final GeneratedColumn<String> coatId = GeneratedColumn<String>(
      'coat_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'DEFAULT NULL',
      defaultValue: const CustomExpression('NULL'));
  static const VerificationMeta _bloodDegreeMeta =
      const VerificationMeta('bloodDegree');
  late final GeneratedColumn<double> bloodDegree = GeneratedColumn<double>(
      'blood_degree', aliasedName, true,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      $customConstraints:
          'DEFAULT NULL CHECK (blood_degree >= 0 AND blood_degree <= 100)',
      defaultValue: const CustomExpression('NULL'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns => [
        localId,
        remoteId,
        ageInMonths,
        breedId,
        categoryId,
        sex,
        birthDate,
        coatId,
        bloodDegree,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'animals';
  @override
  VerificationContext validateIntegrity(Insertable<Animal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(_localIdMeta,
          localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta));
    } else if (isInserting) {
      context.missing(_localIdMeta);
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    }
    if (data.containsKey('age_in_months')) {
      context.handle(
          _ageInMonthsMeta,
          ageInMonths.isAcceptableOrUnknown(
              data['age_in_months']!, _ageInMonthsMeta));
    } else if (isInserting) {
      context.missing(_ageInMonthsMeta);
    }
    if (data.containsKey('breed_id')) {
      context.handle(_breedIdMeta,
          breedId.isAcceptableOrUnknown(data['breed_id']!, _breedIdMeta));
    } else if (isInserting) {
      context.missing(_breedIdMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    context.handle(_sexMeta, const VerificationResult.success());
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta));
    }
    if (data.containsKey('coat_id')) {
      context.handle(_coatIdMeta,
          coatId.isAcceptableOrUnknown(data['coat_id']!, _coatIdMeta));
    }
    if (data.containsKey('blood_degree')) {
      context.handle(
          _bloodDegreeMeta,
          bloodDegree.isAcceptableOrUnknown(
              data['blood_degree']!, _bloodDegreeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  Animal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Animal(
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id']),
      ageInMonths: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}age_in_months'])!,
      breedId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}breed_id'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_id'])!,
      sex: Animals.$convertersex.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sex'])!),
      birthDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}birth_date']),
      coatId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}coat_id']),
      bloodDegree: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}blood_degree']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  Animals createAlias(String alias) {
    return Animals(attachedDatabase, alias);
  }

  static JsonTypeConverter2<AnimalSexEnum, int, int> $convertersex =
      const EnumIndexConverter<AnimalSexEnum>(AnimalSexEnum.values);
  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY(breed_id)REFERENCES animal_breeds(local_id)',
        'FOREIGN KEY(category_id)REFERENCES animal_categories(local_id)',
        'FOREIGN KEY(coat_id)REFERENCES animal_coats(local_id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Animal extends DataClass implements Insertable<Animal> {
  final String localId;
  final String? remoteId;
  final int ageInMonths;
  final String breedId;
  final String categoryId;
  final AnimalSexEnum sex;
  final String? birthDate;
  final String? coatId;
  final double? bloodDegree;
  final String createdAt;
  final String updatedAt;
  const Animal(
      {required this.localId,
      this.remoteId,
      required this.ageInMonths,
      required this.breedId,
      required this.categoryId,
      required this.sex,
      this.birthDate,
      this.coatId,
      this.bloodDegree,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<String>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['age_in_months'] = Variable<int>(ageInMonths);
    map['breed_id'] = Variable<String>(breedId);
    map['category_id'] = Variable<String>(categoryId);
    {
      map['sex'] = Variable<int>(Animals.$convertersex.toSql(sex));
    }
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<String>(birthDate);
    }
    if (!nullToAbsent || coatId != null) {
      map['coat_id'] = Variable<String>(coatId);
    }
    if (!nullToAbsent || bloodDegree != null) {
      map['blood_degree'] = Variable<double>(bloodDegree);
    }
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  AnimalsCompanion toCompanion(bool nullToAbsent) {
    return AnimalsCompanion(
      localId: Value(localId),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
      ageInMonths: Value(ageInMonths),
      breedId: Value(breedId),
      categoryId: Value(categoryId),
      sex: Value(sex),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      coatId:
          coatId == null && nullToAbsent ? const Value.absent() : Value(coatId),
      bloodDegree: bloodDegree == null && nullToAbsent
          ? const Value.absent()
          : Value(bloodDegree),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Animal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Animal(
      localId: serializer.fromJson<String>(json['local_id']),
      remoteId: serializer.fromJson<String?>(json['remote_id']),
      ageInMonths: serializer.fromJson<int>(json['age_in_months']),
      breedId: serializer.fromJson<String>(json['breed_id']),
      categoryId: serializer.fromJson<String>(json['category_id']),
      sex:
          Animals.$convertersex.fromJson(serializer.fromJson<int>(json['sex'])),
      birthDate: serializer.fromJson<String?>(json['birth_date']),
      coatId: serializer.fromJson<String?>(json['coat_id']),
      bloodDegree: serializer.fromJson<double?>(json['blood_degree']),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'local_id': serializer.toJson<String>(localId),
      'remote_id': serializer.toJson<String?>(remoteId),
      'age_in_months': serializer.toJson<int>(ageInMonths),
      'breed_id': serializer.toJson<String>(breedId),
      'category_id': serializer.toJson<String>(categoryId),
      'sex': serializer.toJson<int>(Animals.$convertersex.toJson(sex)),
      'birth_date': serializer.toJson<String?>(birthDate),
      'coat_id': serializer.toJson<String?>(coatId),
      'blood_degree': serializer.toJson<double?>(bloodDegree),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  Animal copyWith(
          {String? localId,
          Value<String?> remoteId = const Value.absent(),
          int? ageInMonths,
          String? breedId,
          String? categoryId,
          AnimalSexEnum? sex,
          Value<String?> birthDate = const Value.absent(),
          Value<String?> coatId = const Value.absent(),
          Value<double?> bloodDegree = const Value.absent(),
          String? createdAt,
          String? updatedAt}) =>
      Animal(
        localId: localId ?? this.localId,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
        ageInMonths: ageInMonths ?? this.ageInMonths,
        breedId: breedId ?? this.breedId,
        categoryId: categoryId ?? this.categoryId,
        sex: sex ?? this.sex,
        birthDate: birthDate.present ? birthDate.value : this.birthDate,
        coatId: coatId.present ? coatId.value : this.coatId,
        bloodDegree: bloodDegree.present ? bloodDegree.value : this.bloodDegree,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Animal copyWithCompanion(AnimalsCompanion data) {
    return Animal(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      ageInMonths:
          data.ageInMonths.present ? data.ageInMonths.value : this.ageInMonths,
      breedId: data.breedId.present ? data.breedId.value : this.breedId,
      categoryId:
          data.categoryId.present ? data.categoryId.value : this.categoryId,
      sex: data.sex.present ? data.sex.value : this.sex,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      coatId: data.coatId.present ? data.coatId.value : this.coatId,
      bloodDegree:
          data.bloodDegree.present ? data.bloodDegree.value : this.bloodDegree,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Animal(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('ageInMonths: $ageInMonths, ')
          ..write('breedId: $breedId, ')
          ..write('categoryId: $categoryId, ')
          ..write('sex: $sex, ')
          ..write('birthDate: $birthDate, ')
          ..write('coatId: $coatId, ')
          ..write('bloodDegree: $bloodDegree, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(localId, remoteId, ageInMonths, breedId,
      categoryId, sex, birthDate, coatId, bloodDegree, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Animal &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.ageInMonths == this.ageInMonths &&
          other.breedId == this.breedId &&
          other.categoryId == this.categoryId &&
          other.sex == this.sex &&
          other.birthDate == this.birthDate &&
          other.coatId == this.coatId &&
          other.bloodDegree == this.bloodDegree &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AnimalsCompanion extends UpdateCompanion<Animal> {
  final Value<String> localId;
  final Value<String?> remoteId;
  final Value<int> ageInMonths;
  final Value<String> breedId;
  final Value<String> categoryId;
  final Value<AnimalSexEnum> sex;
  final Value<String?> birthDate;
  final Value<String?> coatId;
  final Value<double?> bloodDegree;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const AnimalsCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.ageInMonths = const Value.absent(),
    this.breedId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.sex = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.coatId = const Value.absent(),
    this.bloodDegree = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AnimalsCompanion.insert({
    required String localId,
    this.remoteId = const Value.absent(),
    required int ageInMonths,
    required String breedId,
    required String categoryId,
    required AnimalSexEnum sex,
    this.birthDate = const Value.absent(),
    this.coatId = const Value.absent(),
    this.bloodDegree = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : localId = Value(localId),
        ageInMonths = Value(ageInMonths),
        breedId = Value(breedId),
        categoryId = Value(categoryId),
        sex = Value(sex);
  static Insertable<Animal> custom({
    Expression<String>? localId,
    Expression<String>? remoteId,
    Expression<int>? ageInMonths,
    Expression<String>? breedId,
    Expression<String>? categoryId,
    Expression<int>? sex,
    Expression<String>? birthDate,
    Expression<String>? coatId,
    Expression<double>? bloodDegree,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (ageInMonths != null) 'age_in_months': ageInMonths,
      if (breedId != null) 'breed_id': breedId,
      if (categoryId != null) 'category_id': categoryId,
      if (sex != null) 'sex': sex,
      if (birthDate != null) 'birth_date': birthDate,
      if (coatId != null) 'coat_id': coatId,
      if (bloodDegree != null) 'blood_degree': bloodDegree,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AnimalsCompanion copyWith(
      {Value<String>? localId,
      Value<String?>? remoteId,
      Value<int>? ageInMonths,
      Value<String>? breedId,
      Value<String>? categoryId,
      Value<AnimalSexEnum>? sex,
      Value<String?>? birthDate,
      Value<String?>? coatId,
      Value<double?>? bloodDegree,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return AnimalsCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      ageInMonths: ageInMonths ?? this.ageInMonths,
      breedId: breedId ?? this.breedId,
      categoryId: categoryId ?? this.categoryId,
      sex: sex ?? this.sex,
      birthDate: birthDate ?? this.birthDate,
      coatId: coatId ?? this.coatId,
      bloodDegree: bloodDegree ?? this.bloodDegree,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<String>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (ageInMonths.present) {
      map['age_in_months'] = Variable<int>(ageInMonths.value);
    }
    if (breedId.present) {
      map['breed_id'] = Variable<String>(breedId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (sex.present) {
      map['sex'] = Variable<int>(Animals.$convertersex.toSql(sex.value));
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<String>(birthDate.value);
    }
    if (coatId.present) {
      map['coat_id'] = Variable<String>(coatId.value);
    }
    if (bloodDegree.present) {
      map['blood_degree'] = Variable<double>(bloodDegree.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimalsCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('ageInMonths: $ageInMonths, ')
          ..write('breedId: $breedId, ')
          ..write('categoryId: $categoryId, ')
          ..write('sex: $sex, ')
          ..write('birthDate: $birthDate, ')
          ..write('coatId: $coatId, ')
          ..write('bloodDegree: $bloodDegree, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class AnimalIdentifiers extends Table
    with TableInfo<AnimalIdentifiers, AnimalIdentifier> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  AnimalIdentifiers(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _animalLocalIdMeta =
      const VerificationMeta('animalLocalId');
  late final GeneratedColumn<String> animalLocalId = GeneratedColumn<String>(
      'animal_local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumnWithTypeConverter<AnimalIdentifierEnum, int> type =
      GeneratedColumn<int>('type', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: true,
              $customConstraints: 'NOT NULL')
          .withConverter<AnimalIdentifierEnum>(
              AnimalIdentifiers.$convertertype);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns =>
      [animalLocalId, type, value, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'animal_identifiers';
  @override
  VerificationContext validateIntegrity(Insertable<AnimalIdentifier> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('animal_local_id')) {
      context.handle(
          _animalLocalIdMeta,
          animalLocalId.isAcceptableOrUnknown(
              data['animal_local_id']!, _animalLocalIdMeta));
    } else if (isInserting) {
      context.missing(_animalLocalIdMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {animalLocalId, type};
  @override
  AnimalIdentifier map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimalIdentifier(
      animalLocalId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}animal_local_id'])!,
      type: AnimalIdentifiers.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  AnimalIdentifiers createAlias(String alias) {
    return AnimalIdentifiers(attachedDatabase, alias);
  }

  static JsonTypeConverter2<AnimalIdentifierEnum, int, int> $convertertype =
      const EnumIndexConverter<AnimalIdentifierEnum>(
          AnimalIdentifierEnum.values);
  @override
  List<String> get customConstraints => const [
        'PRIMARY KEY(animal_local_id, type)',
        'FOREIGN KEY(animal_local_id)REFERENCES animals(local_id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class AnimalIdentifier extends DataClass
    implements Insertable<AnimalIdentifier> {
  final String animalLocalId;
  final AnimalIdentifierEnum type;
  final String value;
  final String createdAt;
  final String updatedAt;
  const AnimalIdentifier(
      {required this.animalLocalId,
      required this.type,
      required this.value,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['animal_local_id'] = Variable<String>(animalLocalId);
    {
      map['type'] = Variable<int>(AnimalIdentifiers.$convertertype.toSql(type));
    }
    map['value'] = Variable<String>(value);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  AnimalIdentifiersCompanion toCompanion(bool nullToAbsent) {
    return AnimalIdentifiersCompanion(
      animalLocalId: Value(animalLocalId),
      type: Value(type),
      value: Value(value),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory AnimalIdentifier.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimalIdentifier(
      animalLocalId: serializer.fromJson<String>(json['animal_local_id']),
      type: AnimalIdentifiers.$convertertype
          .fromJson(serializer.fromJson<int>(json['type'])),
      value: serializer.fromJson<String>(json['value']),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'animal_local_id': serializer.toJson<String>(animalLocalId),
      'type':
          serializer.toJson<int>(AnimalIdentifiers.$convertertype.toJson(type)),
      'value': serializer.toJson<String>(value),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  AnimalIdentifier copyWith(
          {String? animalLocalId,
          AnimalIdentifierEnum? type,
          String? value,
          String? createdAt,
          String? updatedAt}) =>
      AnimalIdentifier(
        animalLocalId: animalLocalId ?? this.animalLocalId,
        type: type ?? this.type,
        value: value ?? this.value,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  AnimalIdentifier copyWithCompanion(AnimalIdentifiersCompanion data) {
    return AnimalIdentifier(
      animalLocalId: data.animalLocalId.present
          ? data.animalLocalId.value
          : this.animalLocalId,
      type: data.type.present ? data.type.value : this.type,
      value: data.value.present ? data.value.value : this.value,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AnimalIdentifier(')
          ..write('animalLocalId: $animalLocalId, ')
          ..write('type: $type, ')
          ..write('value: $value, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(animalLocalId, type, value, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimalIdentifier &&
          other.animalLocalId == this.animalLocalId &&
          other.type == this.type &&
          other.value == this.value &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AnimalIdentifiersCompanion extends UpdateCompanion<AnimalIdentifier> {
  final Value<String> animalLocalId;
  final Value<AnimalIdentifierEnum> type;
  final Value<String> value;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const AnimalIdentifiersCompanion({
    this.animalLocalId = const Value.absent(),
    this.type = const Value.absent(),
    this.value = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AnimalIdentifiersCompanion.insert({
    required String animalLocalId,
    required AnimalIdentifierEnum type,
    required String value,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : animalLocalId = Value(animalLocalId),
        type = Value(type),
        value = Value(value);
  static Insertable<AnimalIdentifier> custom({
    Expression<String>? animalLocalId,
    Expression<int>? type,
    Expression<String>? value,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (animalLocalId != null) 'animal_local_id': animalLocalId,
      if (type != null) 'type': type,
      if (value != null) 'value': value,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AnimalIdentifiersCompanion copyWith(
      {Value<String>? animalLocalId,
      Value<AnimalIdentifierEnum>? type,
      Value<String>? value,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return AnimalIdentifiersCompanion(
      animalLocalId: animalLocalId ?? this.animalLocalId,
      type: type ?? this.type,
      value: value ?? this.value,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (animalLocalId.present) {
      map['animal_local_id'] = Variable<String>(animalLocalId.value);
    }
    if (type.present) {
      map['type'] =
          Variable<int>(AnimalIdentifiers.$convertertype.toSql(type.value));
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimalIdentifiersCompanion(')
          ..write('animalLocalId: $animalLocalId, ')
          ..write('type: $type, ')
          ..write('value: $value, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class Contacts extends Table with TableInfo<Contacts, Contact> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Contacts(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta =
      const VerificationMeta('localId');
  late final GeneratedColumn<String> localId = GeneratedColumn<String>(
      'local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  late final GeneratedColumnWithTypeConverter<RoleEnum, int> role =
      GeneratedColumn<int>('role', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              $customConstraints: 'NOT NULL DEFAULT \'None\'',
              defaultValue: const CustomExpression('\'None\''))
          .withConverter<RoleEnum>(Contacts.$converterrole);
  static const VerificationMeta _jobsMeta = const VerificationMeta('jobs');
  late final GeneratedColumnWithTypeConverter<JobEnum?, int> jobs =
      GeneratedColumn<int>('jobs', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              $customConstraints: '')
          .withConverter<JobEnum?>(Contacts.$converterjobsn);
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  late final GeneratedColumn<int> isActive = GeneratedColumn<int>(
      'is_active', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 1',
      defaultValue: const CustomExpression('1'));
  static const VerificationMeta _accountLocalIdMeta =
      const VerificationMeta('accountLocalId');
  late final GeneratedColumn<String> accountLocalId = GeneratedColumn<String>(
      'account_local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns => [
        localId,
        remoteId,
        role,
        jobs,
        isActive,
        accountLocalId,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'contacts';
  @override
  VerificationContext validateIntegrity(Insertable<Contact> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(_localIdMeta,
          localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta));
    } else if (isInserting) {
      context.missing(_localIdMeta);
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    }
    context.handle(_roleMeta, const VerificationResult.success());
    context.handle(_jobsMeta, const VerificationResult.success());
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('account_local_id')) {
      context.handle(
          _accountLocalIdMeta,
          accountLocalId.isAcceptableOrUnknown(
              data['account_local_id']!, _accountLocalIdMeta));
    } else if (isInserting) {
      context.missing(_accountLocalIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {localId, accountLocalId},
      ];
  @override
  Contact map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Contact(
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id']),
      role: Contacts.$converterrole.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}role'])!),
      jobs: Contacts.$converterjobsn.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}jobs'])),
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}is_active'])!,
      accountLocalId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}account_local_id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  Contacts createAlias(String alias) {
    return Contacts(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RoleEnum, int, int> $converterrole =
      const EnumIndexConverter<RoleEnum>(RoleEnum.values);
  static JsonTypeConverter2<JobEnum, int, int> $converterjobs =
      const EnumIndexConverter<JobEnum>(JobEnum.values);
  static JsonTypeConverter2<JobEnum?, int?, int?> $converterjobsn =
      JsonTypeConverter2.asNullable($converterjobs);
  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY(account_local_id)REFERENCES accounts(local_id)',
        'UNIQUE(local_id, account_local_id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Contact extends DataClass implements Insertable<Contact> {
  final String localId;
  final String? remoteId;
  final RoleEnum role;
  final JobEnum? jobs;
  final int isActive;
  final String accountLocalId;
  final String createdAt;
  final String updatedAt;
  const Contact(
      {required this.localId,
      this.remoteId,
      required this.role,
      this.jobs,
      required this.isActive,
      required this.accountLocalId,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<String>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    {
      map['role'] = Variable<int>(Contacts.$converterrole.toSql(role));
    }
    if (!nullToAbsent || jobs != null) {
      map['jobs'] = Variable<int>(Contacts.$converterjobsn.toSql(jobs));
    }
    map['is_active'] = Variable<int>(isActive);
    map['account_local_id'] = Variable<String>(accountLocalId);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  ContactsCompanion toCompanion(bool nullToAbsent) {
    return ContactsCompanion(
      localId: Value(localId),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
      role: Value(role),
      jobs: jobs == null && nullToAbsent ? const Value.absent() : Value(jobs),
      isActive: Value(isActive),
      accountLocalId: Value(accountLocalId),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Contact.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Contact(
      localId: serializer.fromJson<String>(json['local_id']),
      remoteId: serializer.fromJson<String?>(json['remote_id']),
      role: Contacts.$converterrole
          .fromJson(serializer.fromJson<int>(json['role'])),
      jobs: Contacts.$converterjobsn
          .fromJson(serializer.fromJson<int?>(json['jobs'])),
      isActive: serializer.fromJson<int>(json['is_active']),
      accountLocalId: serializer.fromJson<String>(json['account_local_id']),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'local_id': serializer.toJson<String>(localId),
      'remote_id': serializer.toJson<String?>(remoteId),
      'role': serializer.toJson<int>(Contacts.$converterrole.toJson(role)),
      'jobs': serializer.toJson<int?>(Contacts.$converterjobsn.toJson(jobs)),
      'is_active': serializer.toJson<int>(isActive),
      'account_local_id': serializer.toJson<String>(accountLocalId),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  Contact copyWith(
          {String? localId,
          Value<String?> remoteId = const Value.absent(),
          RoleEnum? role,
          Value<JobEnum?> jobs = const Value.absent(),
          int? isActive,
          String? accountLocalId,
          String? createdAt,
          String? updatedAt}) =>
      Contact(
        localId: localId ?? this.localId,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
        role: role ?? this.role,
        jobs: jobs.present ? jobs.value : this.jobs,
        isActive: isActive ?? this.isActive,
        accountLocalId: accountLocalId ?? this.accountLocalId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Contact copyWithCompanion(ContactsCompanion data) {
    return Contact(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      role: data.role.present ? data.role.value : this.role,
      jobs: data.jobs.present ? data.jobs.value : this.jobs,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      accountLocalId: data.accountLocalId.present
          ? data.accountLocalId.value
          : this.accountLocalId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Contact(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('role: $role, ')
          ..write('jobs: $jobs, ')
          ..write('isActive: $isActive, ')
          ..write('accountLocalId: $accountLocalId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(localId, remoteId, role, jobs, isActive,
      accountLocalId, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Contact &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.role == this.role &&
          other.jobs == this.jobs &&
          other.isActive == this.isActive &&
          other.accountLocalId == this.accountLocalId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ContactsCompanion extends UpdateCompanion<Contact> {
  final Value<String> localId;
  final Value<String?> remoteId;
  final Value<RoleEnum> role;
  final Value<JobEnum?> jobs;
  final Value<int> isActive;
  final Value<String> accountLocalId;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const ContactsCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.role = const Value.absent(),
    this.jobs = const Value.absent(),
    this.isActive = const Value.absent(),
    this.accountLocalId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ContactsCompanion.insert({
    required String localId,
    this.remoteId = const Value.absent(),
    this.role = const Value.absent(),
    this.jobs = const Value.absent(),
    this.isActive = const Value.absent(),
    required String accountLocalId,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : localId = Value(localId),
        accountLocalId = Value(accountLocalId);
  static Insertable<Contact> custom({
    Expression<String>? localId,
    Expression<String>? remoteId,
    Expression<int>? role,
    Expression<int>? jobs,
    Expression<int>? isActive,
    Expression<String>? accountLocalId,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (role != null) 'role': role,
      if (jobs != null) 'jobs': jobs,
      if (isActive != null) 'is_active': isActive,
      if (accountLocalId != null) 'account_local_id': accountLocalId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ContactsCompanion copyWith(
      {Value<String>? localId,
      Value<String?>? remoteId,
      Value<RoleEnum>? role,
      Value<JobEnum?>? jobs,
      Value<int>? isActive,
      Value<String>? accountLocalId,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return ContactsCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      role: role ?? this.role,
      jobs: jobs ?? this.jobs,
      isActive: isActive ?? this.isActive,
      accountLocalId: accountLocalId ?? this.accountLocalId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<String>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (role.present) {
      map['role'] = Variable<int>(Contacts.$converterrole.toSql(role.value));
    }
    if (jobs.present) {
      map['jobs'] = Variable<int>(Contacts.$converterjobsn.toSql(jobs.value));
    }
    if (isActive.present) {
      map['is_active'] = Variable<int>(isActive.value);
    }
    if (accountLocalId.present) {
      map['account_local_id'] = Variable<String>(accountLocalId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContactsCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('role: $role, ')
          ..write('jobs: $jobs, ')
          ..write('isActive: $isActive, ')
          ..write('accountLocalId: $accountLocalId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class Customers extends Table with TableInfo<Customers, Customer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Customers(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta =
      const VerificationMeta('localId');
  late final GeneratedColumn<String> localId = GeneratedColumn<String>(
      'local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _contactLocalIdMeta =
      const VerificationMeta('contactLocalId');
  late final GeneratedColumn<String> contactLocalId = GeneratedColumn<String>(
      'contact_local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _accountLocalIdMeta =
      const VerificationMeta('accountLocalId');
  late final GeneratedColumn<String> accountLocalId = GeneratedColumn<String>(
      'account_local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns =>
      [localId, remoteId, contactLocalId, accountLocalId, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customers';
  @override
  VerificationContext validateIntegrity(Insertable<Customer> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(_localIdMeta,
          localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta));
    } else if (isInserting) {
      context.missing(_localIdMeta);
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    }
    if (data.containsKey('contact_local_id')) {
      context.handle(
          _contactLocalIdMeta,
          contactLocalId.isAcceptableOrUnknown(
              data['contact_local_id']!, _contactLocalIdMeta));
    } else if (isInserting) {
      context.missing(_contactLocalIdMeta);
    }
    if (data.containsKey('account_local_id')) {
      context.handle(
          _accountLocalIdMeta,
          accountLocalId.isAcceptableOrUnknown(
              data['account_local_id']!, _accountLocalIdMeta));
    } else if (isInserting) {
      context.missing(_accountLocalIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {localId, accountLocalId},
      ];
  @override
  Customer map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Customer(
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id']),
      contactLocalId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}contact_local_id'])!,
      accountLocalId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}account_local_id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  Customers createAlias(String alias) {
    return Customers(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY(contact_local_id, account_local_id)REFERENCES contacts(local_id, account_local_id)',
        'UNIQUE(local_id, account_local_id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Customer extends DataClass implements Insertable<Customer> {
  final String localId;
  final String? remoteId;
  final String contactLocalId;
  final String accountLocalId;
  final String createdAt;
  final String updatedAt;
  const Customer(
      {required this.localId,
      this.remoteId,
      required this.contactLocalId,
      required this.accountLocalId,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<String>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['contact_local_id'] = Variable<String>(contactLocalId);
    map['account_local_id'] = Variable<String>(accountLocalId);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  CustomersCompanion toCompanion(bool nullToAbsent) {
    return CustomersCompanion(
      localId: Value(localId),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
      contactLocalId: Value(contactLocalId),
      accountLocalId: Value(accountLocalId),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Customer.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Customer(
      localId: serializer.fromJson<String>(json['local_id']),
      remoteId: serializer.fromJson<String?>(json['remote_id']),
      contactLocalId: serializer.fromJson<String>(json['contact_local_id']),
      accountLocalId: serializer.fromJson<String>(json['account_local_id']),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'local_id': serializer.toJson<String>(localId),
      'remote_id': serializer.toJson<String?>(remoteId),
      'contact_local_id': serializer.toJson<String>(contactLocalId),
      'account_local_id': serializer.toJson<String>(accountLocalId),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  Customer copyWith(
          {String? localId,
          Value<String?> remoteId = const Value.absent(),
          String? contactLocalId,
          String? accountLocalId,
          String? createdAt,
          String? updatedAt}) =>
      Customer(
        localId: localId ?? this.localId,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
        contactLocalId: contactLocalId ?? this.contactLocalId,
        accountLocalId: accountLocalId ?? this.accountLocalId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Customer copyWithCompanion(CustomersCompanion data) {
    return Customer(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      contactLocalId: data.contactLocalId.present
          ? data.contactLocalId.value
          : this.contactLocalId,
      accountLocalId: data.accountLocalId.present
          ? data.accountLocalId.value
          : this.accountLocalId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Customer(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('contactLocalId: $contactLocalId, ')
          ..write('accountLocalId: $accountLocalId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      localId, remoteId, contactLocalId, accountLocalId, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Customer &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.contactLocalId == this.contactLocalId &&
          other.accountLocalId == this.accountLocalId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CustomersCompanion extends UpdateCompanion<Customer> {
  final Value<String> localId;
  final Value<String?> remoteId;
  final Value<String> contactLocalId;
  final Value<String> accountLocalId;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const CustomersCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.contactLocalId = const Value.absent(),
    this.accountLocalId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CustomersCompanion.insert({
    required String localId,
    this.remoteId = const Value.absent(),
    required String contactLocalId,
    required String accountLocalId,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : localId = Value(localId),
        contactLocalId = Value(contactLocalId),
        accountLocalId = Value(accountLocalId);
  static Insertable<Customer> custom({
    Expression<String>? localId,
    Expression<String>? remoteId,
    Expression<String>? contactLocalId,
    Expression<String>? accountLocalId,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (contactLocalId != null) 'contact_local_id': contactLocalId,
      if (accountLocalId != null) 'account_local_id': accountLocalId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CustomersCompanion copyWith(
      {Value<String>? localId,
      Value<String?>? remoteId,
      Value<String>? contactLocalId,
      Value<String>? accountLocalId,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return CustomersCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      contactLocalId: contactLocalId ?? this.contactLocalId,
      accountLocalId: accountLocalId ?? this.accountLocalId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<String>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (contactLocalId.present) {
      map['contact_local_id'] = Variable<String>(contactLocalId.value);
    }
    if (accountLocalId.present) {
      map['account_local_id'] = Variable<String>(accountLocalId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomersCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('contactLocalId: $contactLocalId, ')
          ..write('accountLocalId: $accountLocalId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class Allotments extends Table with TableInfo<Allotments, Allotment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Allotments(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta =
      const VerificationMeta('localId');
  late final GeneratedColumn<String> localId = GeneratedColumn<String>(
      'local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _customerLocalIdMeta =
      const VerificationMeta('customerLocalId');
  late final GeneratedColumn<String> customerLocalId = GeneratedColumn<String>(
      'customer_local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _accountLocalIdMeta =
      const VerificationMeta('accountLocalId');
  late final GeneratedColumn<String> accountLocalId = GeneratedColumn<String>(
      'account_local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _abbreviationMeta =
      const VerificationMeta('abbreviation');
  late final GeneratedColumn<String> abbreviation = GeneratedColumn<String>(
      'abbreviation', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _creationDateMeta =
      const VerificationMeta('creationDate');
  late final GeneratedColumn<String> creationDate = GeneratedColumn<String>(
      'creation_date', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns => [
        localId,
        remoteId,
        customerLocalId,
        accountLocalId,
        name,
        abbreviation,
        creationDate,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'allotments';
  @override
  VerificationContext validateIntegrity(Insertable<Allotment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(_localIdMeta,
          localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta));
    } else if (isInserting) {
      context.missing(_localIdMeta);
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    }
    if (data.containsKey('customer_local_id')) {
      context.handle(
          _customerLocalIdMeta,
          customerLocalId.isAcceptableOrUnknown(
              data['customer_local_id']!, _customerLocalIdMeta));
    } else if (isInserting) {
      context.missing(_customerLocalIdMeta);
    }
    if (data.containsKey('account_local_id')) {
      context.handle(
          _accountLocalIdMeta,
          accountLocalId.isAcceptableOrUnknown(
              data['account_local_id']!, _accountLocalIdMeta));
    } else if (isInserting) {
      context.missing(_accountLocalIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('abbreviation')) {
      context.handle(
          _abbreviationMeta,
          abbreviation.isAcceptableOrUnknown(
              data['abbreviation']!, _abbreviationMeta));
    } else if (isInserting) {
      context.missing(_abbreviationMeta);
    }
    if (data.containsKey('creation_date')) {
      context.handle(
          _creationDateMeta,
          creationDate.isAcceptableOrUnknown(
              data['creation_date']!, _creationDateMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {localId, customerLocalId},
      ];
  @override
  Allotment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Allotment(
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id']),
      customerLocalId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}customer_local_id'])!,
      accountLocalId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}account_local_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      abbreviation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}abbreviation'])!,
      creationDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}creation_date'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  Allotments createAlias(String alias) {
    return Allotments(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY(customer_local_id, account_local_id)REFERENCES customers(local_id, account_local_id)',
        'UNIQUE(local_id, customer_local_id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Allotment extends DataClass implements Insertable<Allotment> {
  final String localId;
  final String? remoteId;
  final String customerLocalId;
  final String accountLocalId;
  final String name;
  final String abbreviation;
  final String creationDate;
  final String createdAt;
  final String updatedAt;
  const Allotment(
      {required this.localId,
      this.remoteId,
      required this.customerLocalId,
      required this.accountLocalId,
      required this.name,
      required this.abbreviation,
      required this.creationDate,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<String>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['customer_local_id'] = Variable<String>(customerLocalId);
    map['account_local_id'] = Variable<String>(accountLocalId);
    map['name'] = Variable<String>(name);
    map['abbreviation'] = Variable<String>(abbreviation);
    map['creation_date'] = Variable<String>(creationDate);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  AllotmentsCompanion toCompanion(bool nullToAbsent) {
    return AllotmentsCompanion(
      localId: Value(localId),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
      customerLocalId: Value(customerLocalId),
      accountLocalId: Value(accountLocalId),
      name: Value(name),
      abbreviation: Value(abbreviation),
      creationDate: Value(creationDate),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Allotment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Allotment(
      localId: serializer.fromJson<String>(json['local_id']),
      remoteId: serializer.fromJson<String?>(json['remote_id']),
      customerLocalId: serializer.fromJson<String>(json['customer_local_id']),
      accountLocalId: serializer.fromJson<String>(json['account_local_id']),
      name: serializer.fromJson<String>(json['name']),
      abbreviation: serializer.fromJson<String>(json['abbreviation']),
      creationDate: serializer.fromJson<String>(json['creation_date']),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'local_id': serializer.toJson<String>(localId),
      'remote_id': serializer.toJson<String?>(remoteId),
      'customer_local_id': serializer.toJson<String>(customerLocalId),
      'account_local_id': serializer.toJson<String>(accountLocalId),
      'name': serializer.toJson<String>(name),
      'abbreviation': serializer.toJson<String>(abbreviation),
      'creation_date': serializer.toJson<String>(creationDate),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  Allotment copyWith(
          {String? localId,
          Value<String?> remoteId = const Value.absent(),
          String? customerLocalId,
          String? accountLocalId,
          String? name,
          String? abbreviation,
          String? creationDate,
          String? createdAt,
          String? updatedAt}) =>
      Allotment(
        localId: localId ?? this.localId,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
        customerLocalId: customerLocalId ?? this.customerLocalId,
        accountLocalId: accountLocalId ?? this.accountLocalId,
        name: name ?? this.name,
        abbreviation: abbreviation ?? this.abbreviation,
        creationDate: creationDate ?? this.creationDate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Allotment copyWithCompanion(AllotmentsCompanion data) {
    return Allotment(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      customerLocalId: data.customerLocalId.present
          ? data.customerLocalId.value
          : this.customerLocalId,
      accountLocalId: data.accountLocalId.present
          ? data.accountLocalId.value
          : this.accountLocalId,
      name: data.name.present ? data.name.value : this.name,
      abbreviation: data.abbreviation.present
          ? data.abbreviation.value
          : this.abbreviation,
      creationDate: data.creationDate.present
          ? data.creationDate.value
          : this.creationDate,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Allotment(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('customerLocalId: $customerLocalId, ')
          ..write('accountLocalId: $accountLocalId, ')
          ..write('name: $name, ')
          ..write('abbreviation: $abbreviation, ')
          ..write('creationDate: $creationDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(localId, remoteId, customerLocalId,
      accountLocalId, name, abbreviation, creationDate, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Allotment &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.customerLocalId == this.customerLocalId &&
          other.accountLocalId == this.accountLocalId &&
          other.name == this.name &&
          other.abbreviation == this.abbreviation &&
          other.creationDate == this.creationDate &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AllotmentsCompanion extends UpdateCompanion<Allotment> {
  final Value<String> localId;
  final Value<String?> remoteId;
  final Value<String> customerLocalId;
  final Value<String> accountLocalId;
  final Value<String> name;
  final Value<String> abbreviation;
  final Value<String> creationDate;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const AllotmentsCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.customerLocalId = const Value.absent(),
    this.accountLocalId = const Value.absent(),
    this.name = const Value.absent(),
    this.abbreviation = const Value.absent(),
    this.creationDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AllotmentsCompanion.insert({
    required String localId,
    this.remoteId = const Value.absent(),
    required String customerLocalId,
    required String accountLocalId,
    required String name,
    required String abbreviation,
    this.creationDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : localId = Value(localId),
        customerLocalId = Value(customerLocalId),
        accountLocalId = Value(accountLocalId),
        name = Value(name),
        abbreviation = Value(abbreviation);
  static Insertable<Allotment> custom({
    Expression<String>? localId,
    Expression<String>? remoteId,
    Expression<String>? customerLocalId,
    Expression<String>? accountLocalId,
    Expression<String>? name,
    Expression<String>? abbreviation,
    Expression<String>? creationDate,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (customerLocalId != null) 'customer_local_id': customerLocalId,
      if (accountLocalId != null) 'account_local_id': accountLocalId,
      if (name != null) 'name': name,
      if (abbreviation != null) 'abbreviation': abbreviation,
      if (creationDate != null) 'creation_date': creationDate,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AllotmentsCompanion copyWith(
      {Value<String>? localId,
      Value<String?>? remoteId,
      Value<String>? customerLocalId,
      Value<String>? accountLocalId,
      Value<String>? name,
      Value<String>? abbreviation,
      Value<String>? creationDate,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return AllotmentsCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      customerLocalId: customerLocalId ?? this.customerLocalId,
      accountLocalId: accountLocalId ?? this.accountLocalId,
      name: name ?? this.name,
      abbreviation: abbreviation ?? this.abbreviation,
      creationDate: creationDate ?? this.creationDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<String>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (customerLocalId.present) {
      map['customer_local_id'] = Variable<String>(customerLocalId.value);
    }
    if (accountLocalId.present) {
      map['account_local_id'] = Variable<String>(accountLocalId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (abbreviation.present) {
      map['abbreviation'] = Variable<String>(abbreviation.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<String>(creationDate.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AllotmentsCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('customerLocalId: $customerLocalId, ')
          ..write('accountLocalId: $accountLocalId, ')
          ..write('name: $name, ')
          ..write('abbreviation: $abbreviation, ')
          ..write('creationDate: $creationDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class Ranches extends Table with TableInfo<Ranches, Ranch> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Ranches(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta =
      const VerificationMeta('localId');
  late final GeneratedColumn<String> localId = GeneratedColumn<String>(
      'local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _customerLocalIdMeta =
      const VerificationMeta('customerLocalId');
  late final GeneratedColumn<String> customerLocalId = GeneratedColumn<String>(
      'customer_local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _accountLocalIdMeta =
      const VerificationMeta('accountLocalId');
  late final GeneratedColumn<String> accountLocalId = GeneratedColumn<String>(
      'account_local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  late final GeneratedColumn<int> country = GeneratedColumn<int>(
      'country', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _districtMeta =
      const VerificationMeta('district');
  late final GeneratedColumn<int> district = GeneratedColumn<int>(
      'district', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _municipalityMeta =
      const VerificationMeta('municipality');
  late final GeneratedColumn<int> municipality = GeneratedColumn<int>(
      'municipality', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 1',
      defaultValue: const CustomExpression('1'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns => [
        localId,
        remoteId,
        customerLocalId,
        accountLocalId,
        name,
        country,
        district,
        municipality,
        isActive,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ranches';
  @override
  VerificationContext validateIntegrity(Insertable<Ranch> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(_localIdMeta,
          localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta));
    } else if (isInserting) {
      context.missing(_localIdMeta);
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    }
    if (data.containsKey('customer_local_id')) {
      context.handle(
          _customerLocalIdMeta,
          customerLocalId.isAcceptableOrUnknown(
              data['customer_local_id']!, _customerLocalIdMeta));
    } else if (isInserting) {
      context.missing(_customerLocalIdMeta);
    }
    if (data.containsKey('account_local_id')) {
      context.handle(
          _accountLocalIdMeta,
          accountLocalId.isAcceptableOrUnknown(
              data['account_local_id']!, _accountLocalIdMeta));
    } else if (isInserting) {
      context.missing(_accountLocalIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('district')) {
      context.handle(_districtMeta,
          district.isAcceptableOrUnknown(data['district']!, _districtMeta));
    } else if (isInserting) {
      context.missing(_districtMeta);
    }
    if (data.containsKey('municipality')) {
      context.handle(
          _municipalityMeta,
          municipality.isAcceptableOrUnknown(
              data['municipality']!, _municipalityMeta));
    } else if (isInserting) {
      context.missing(_municipalityMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {localId, customerLocalId},
      ];
  @override
  Ranch map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Ranch(
      localId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id']),
      customerLocalId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}customer_local_id'])!,
      accountLocalId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}account_local_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}country'])!,
      district: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}district'])!,
      municipality: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}municipality'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  Ranches createAlias(String alias) {
    return Ranches(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY(customer_local_id, account_local_id)REFERENCES customers(local_id, account_local_id)',
        'UNIQUE(local_id, customer_local_id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class Ranch extends DataClass implements Insertable<Ranch> {
  final String localId;
  final String? remoteId;
  final String customerLocalId;
  final String accountLocalId;
  final String name;
  final int country;
  final int district;
  final int municipality;
  final bool isActive;
  final String createdAt;
  final String updatedAt;
  const Ranch(
      {required this.localId,
      this.remoteId,
      required this.customerLocalId,
      required this.accountLocalId,
      required this.name,
      required this.country,
      required this.district,
      required this.municipality,
      required this.isActive,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<String>(localId);
    if (!nullToAbsent || remoteId != null) {
      map['remote_id'] = Variable<String>(remoteId);
    }
    map['customer_local_id'] = Variable<String>(customerLocalId);
    map['account_local_id'] = Variable<String>(accountLocalId);
    map['name'] = Variable<String>(name);
    map['country'] = Variable<int>(country);
    map['district'] = Variable<int>(district);
    map['municipality'] = Variable<int>(municipality);
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  RanchesCompanion toCompanion(bool nullToAbsent) {
    return RanchesCompanion(
      localId: Value(localId),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
      customerLocalId: Value(customerLocalId),
      accountLocalId: Value(accountLocalId),
      name: Value(name),
      country: Value(country),
      district: Value(district),
      municipality: Value(municipality),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Ranch.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Ranch(
      localId: serializer.fromJson<String>(json['local_id']),
      remoteId: serializer.fromJson<String?>(json['remote_id']),
      customerLocalId: serializer.fromJson<String>(json['customer_local_id']),
      accountLocalId: serializer.fromJson<String>(json['account_local_id']),
      name: serializer.fromJson<String>(json['name']),
      country: serializer.fromJson<int>(json['country']),
      district: serializer.fromJson<int>(json['district']),
      municipality: serializer.fromJson<int>(json['municipality']),
      isActive: serializer.fromJson<bool>(json['is_active']),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'local_id': serializer.toJson<String>(localId),
      'remote_id': serializer.toJson<String?>(remoteId),
      'customer_local_id': serializer.toJson<String>(customerLocalId),
      'account_local_id': serializer.toJson<String>(accountLocalId),
      'name': serializer.toJson<String>(name),
      'country': serializer.toJson<int>(country),
      'district': serializer.toJson<int>(district),
      'municipality': serializer.toJson<int>(municipality),
      'is_active': serializer.toJson<bool>(isActive),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  Ranch copyWith(
          {String? localId,
          Value<String?> remoteId = const Value.absent(),
          String? customerLocalId,
          String? accountLocalId,
          String? name,
          int? country,
          int? district,
          int? municipality,
          bool? isActive,
          String? createdAt,
          String? updatedAt}) =>
      Ranch(
        localId: localId ?? this.localId,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
        customerLocalId: customerLocalId ?? this.customerLocalId,
        accountLocalId: accountLocalId ?? this.accountLocalId,
        name: name ?? this.name,
        country: country ?? this.country,
        district: district ?? this.district,
        municipality: municipality ?? this.municipality,
        isActive: isActive ?? this.isActive,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Ranch copyWithCompanion(RanchesCompanion data) {
    return Ranch(
      localId: data.localId.present ? data.localId.value : this.localId,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      customerLocalId: data.customerLocalId.present
          ? data.customerLocalId.value
          : this.customerLocalId,
      accountLocalId: data.accountLocalId.present
          ? data.accountLocalId.value
          : this.accountLocalId,
      name: data.name.present ? data.name.value : this.name,
      country: data.country.present ? data.country.value : this.country,
      district: data.district.present ? data.district.value : this.district,
      municipality: data.municipality.present
          ? data.municipality.value
          : this.municipality,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Ranch(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('customerLocalId: $customerLocalId, ')
          ..write('accountLocalId: $accountLocalId, ')
          ..write('name: $name, ')
          ..write('country: $country, ')
          ..write('district: $district, ')
          ..write('municipality: $municipality, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      localId,
      remoteId,
      customerLocalId,
      accountLocalId,
      name,
      country,
      district,
      municipality,
      isActive,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Ranch &&
          other.localId == this.localId &&
          other.remoteId == this.remoteId &&
          other.customerLocalId == this.customerLocalId &&
          other.accountLocalId == this.accountLocalId &&
          other.name == this.name &&
          other.country == this.country &&
          other.district == this.district &&
          other.municipality == this.municipality &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class RanchesCompanion extends UpdateCompanion<Ranch> {
  final Value<String> localId;
  final Value<String?> remoteId;
  final Value<String> customerLocalId;
  final Value<String> accountLocalId;
  final Value<String> name;
  final Value<int> country;
  final Value<int> district;
  final Value<int> municipality;
  final Value<bool> isActive;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const RanchesCompanion({
    this.localId = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.customerLocalId = const Value.absent(),
    this.accountLocalId = const Value.absent(),
    this.name = const Value.absent(),
    this.country = const Value.absent(),
    this.district = const Value.absent(),
    this.municipality = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RanchesCompanion.insert({
    required String localId,
    this.remoteId = const Value.absent(),
    required String customerLocalId,
    required String accountLocalId,
    required String name,
    required int country,
    required int district,
    required int municipality,
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : localId = Value(localId),
        customerLocalId = Value(customerLocalId),
        accountLocalId = Value(accountLocalId),
        name = Value(name),
        country = Value(country),
        district = Value(district),
        municipality = Value(municipality);
  static Insertable<Ranch> custom({
    Expression<String>? localId,
    Expression<String>? remoteId,
    Expression<String>? customerLocalId,
    Expression<String>? accountLocalId,
    Expression<String>? name,
    Expression<int>? country,
    Expression<int>? district,
    Expression<int>? municipality,
    Expression<bool>? isActive,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (remoteId != null) 'remote_id': remoteId,
      if (customerLocalId != null) 'customer_local_id': customerLocalId,
      if (accountLocalId != null) 'account_local_id': accountLocalId,
      if (name != null) 'name': name,
      if (country != null) 'country': country,
      if (district != null) 'district': district,
      if (municipality != null) 'municipality': municipality,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RanchesCompanion copyWith(
      {Value<String>? localId,
      Value<String?>? remoteId,
      Value<String>? customerLocalId,
      Value<String>? accountLocalId,
      Value<String>? name,
      Value<int>? country,
      Value<int>? district,
      Value<int>? municipality,
      Value<bool>? isActive,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return RanchesCompanion(
      localId: localId ?? this.localId,
      remoteId: remoteId ?? this.remoteId,
      customerLocalId: customerLocalId ?? this.customerLocalId,
      accountLocalId: accountLocalId ?? this.accountLocalId,
      name: name ?? this.name,
      country: country ?? this.country,
      district: district ?? this.district,
      municipality: municipality ?? this.municipality,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<String>(localId.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (customerLocalId.present) {
      map['customer_local_id'] = Variable<String>(customerLocalId.value);
    }
    if (accountLocalId.present) {
      map['account_local_id'] = Variable<String>(accountLocalId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (country.present) {
      map['country'] = Variable<int>(country.value);
    }
    if (district.present) {
      map['district'] = Variable<int>(district.value);
    }
    if (municipality.present) {
      map['municipality'] = Variable<int>(municipality.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RanchesCompanion(')
          ..write('localId: $localId, ')
          ..write('remoteId: $remoteId, ')
          ..write('customerLocalId: $customerLocalId, ')
          ..write('accountLocalId: $accountLocalId, ')
          ..write('name: $name, ')
          ..write('country: $country, ')
          ..write('district: $district, ')
          ..write('municipality: $municipality, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class CustomerAnimals extends Table
    with TableInfo<CustomerAnimals, CustomerAnimal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  CustomerAnimals(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _customerLocalIdMeta =
      const VerificationMeta('customerLocalId');
  late final GeneratedColumn<String> customerLocalId = GeneratedColumn<String>(
      'customer_local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _animalLocalIdMeta =
      const VerificationMeta('animalLocalId');
  late final GeneratedColumn<String> animalLocalId = GeneratedColumn<String>(
      'animal_local_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _allotmentIdMeta =
      const VerificationMeta('allotmentId');
  late final GeneratedColumn<String> allotmentId = GeneratedColumn<String>(
      'allotment_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'DEFAULT NULL',
      defaultValue: const CustomExpression('NULL'));
  static const VerificationMeta _ranchIdMeta =
      const VerificationMeta('ranchId');
  late final GeneratedColumn<String> ranchId = GeneratedColumn<String>(
      'ranch_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'DEFAULT NULL',
      defaultValue: const CustomExpression('NULL'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT CURRENT_TIMESTAMP',
      defaultValue: const CustomExpression('CURRENT_TIMESTAMP'));
  @override
  List<GeneratedColumn> get $columns => [
        customerLocalId,
        animalLocalId,
        allotmentId,
        ranchId,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customer_animals';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerAnimal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('customer_local_id')) {
      context.handle(
          _customerLocalIdMeta,
          customerLocalId.isAcceptableOrUnknown(
              data['customer_local_id']!, _customerLocalIdMeta));
    } else if (isInserting) {
      context.missing(_customerLocalIdMeta);
    }
    if (data.containsKey('animal_local_id')) {
      context.handle(
          _animalLocalIdMeta,
          animalLocalId.isAcceptableOrUnknown(
              data['animal_local_id']!, _animalLocalIdMeta));
    } else if (isInserting) {
      context.missing(_animalLocalIdMeta);
    }
    if (data.containsKey('allotment_id')) {
      context.handle(
          _allotmentIdMeta,
          allotmentId.isAcceptableOrUnknown(
              data['allotment_id']!, _allotmentIdMeta));
    }
    if (data.containsKey('ranch_id')) {
      context.handle(_ranchIdMeta,
          ranchId.isAcceptableOrUnknown(data['ranch_id']!, _ranchIdMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerLocalId, animalLocalId};
  @override
  CustomerAnimal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerAnimal(
      customerLocalId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}customer_local_id'])!,
      animalLocalId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}animal_local_id'])!,
      allotmentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}allotment_id']),
      ranchId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ranch_id']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  CustomerAnimals createAlias(String alias) {
    return CustomerAnimals(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
        'PRIMARY KEY(customer_local_id, animal_local_id)',
        'FOREIGN KEY(customer_local_id)REFERENCES customers(local_id)',
        'FOREIGN KEY(animal_local_id)REFERENCES animals(local_id)',
        'FOREIGN KEY(customer_local_id, allotment_id)REFERENCES allotments(customer_local_id, local_id)',
        'FOREIGN KEY(customer_local_id, ranch_id)REFERENCES ranches(customer_local_id, local_id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class CustomerAnimal extends DataClass implements Insertable<CustomerAnimal> {
  final String customerLocalId;
  final String animalLocalId;
  final String? allotmentId;
  final String? ranchId;
  final String createdAt;
  final String updatedAt;
  const CustomerAnimal(
      {required this.customerLocalId,
      required this.animalLocalId,
      this.allotmentId,
      this.ranchId,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['customer_local_id'] = Variable<String>(customerLocalId);
    map['animal_local_id'] = Variable<String>(animalLocalId);
    if (!nullToAbsent || allotmentId != null) {
      map['allotment_id'] = Variable<String>(allotmentId);
    }
    if (!nullToAbsent || ranchId != null) {
      map['ranch_id'] = Variable<String>(ranchId);
    }
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  CustomerAnimalsCompanion toCompanion(bool nullToAbsent) {
    return CustomerAnimalsCompanion(
      customerLocalId: Value(customerLocalId),
      animalLocalId: Value(animalLocalId),
      allotmentId: allotmentId == null && nullToAbsent
          ? const Value.absent()
          : Value(allotmentId),
      ranchId: ranchId == null && nullToAbsent
          ? const Value.absent()
          : Value(ranchId),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory CustomerAnimal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CustomerAnimal(
      customerLocalId: serializer.fromJson<String>(json['customer_local_id']),
      animalLocalId: serializer.fromJson<String>(json['animal_local_id']),
      allotmentId: serializer.fromJson<String?>(json['allotment_id']),
      ranchId: serializer.fromJson<String?>(json['ranch_id']),
      createdAt: serializer.fromJson<String>(json['created_at']),
      updatedAt: serializer.fromJson<String>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'customer_local_id': serializer.toJson<String>(customerLocalId),
      'animal_local_id': serializer.toJson<String>(animalLocalId),
      'allotment_id': serializer.toJson<String?>(allotmentId),
      'ranch_id': serializer.toJson<String?>(ranchId),
      'created_at': serializer.toJson<String>(createdAt),
      'updated_at': serializer.toJson<String>(updatedAt),
    };
  }

  CustomerAnimal copyWith(
          {String? customerLocalId,
          String? animalLocalId,
          Value<String?> allotmentId = const Value.absent(),
          Value<String?> ranchId = const Value.absent(),
          String? createdAt,
          String? updatedAt}) =>
      CustomerAnimal(
        customerLocalId: customerLocalId ?? this.customerLocalId,
        animalLocalId: animalLocalId ?? this.animalLocalId,
        allotmentId: allotmentId.present ? allotmentId.value : this.allotmentId,
        ranchId: ranchId.present ? ranchId.value : this.ranchId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  CustomerAnimal copyWithCompanion(CustomerAnimalsCompanion data) {
    return CustomerAnimal(
      customerLocalId: data.customerLocalId.present
          ? data.customerLocalId.value
          : this.customerLocalId,
      animalLocalId: data.animalLocalId.present
          ? data.animalLocalId.value
          : this.animalLocalId,
      allotmentId:
          data.allotmentId.present ? data.allotmentId.value : this.allotmentId,
      ranchId: data.ranchId.present ? data.ranchId.value : this.ranchId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CustomerAnimal(')
          ..write('customerLocalId: $customerLocalId, ')
          ..write('animalLocalId: $animalLocalId, ')
          ..write('allotmentId: $allotmentId, ')
          ..write('ranchId: $ranchId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(customerLocalId, animalLocalId, allotmentId,
      ranchId, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CustomerAnimal &&
          other.customerLocalId == this.customerLocalId &&
          other.animalLocalId == this.animalLocalId &&
          other.allotmentId == this.allotmentId &&
          other.ranchId == this.ranchId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CustomerAnimalsCompanion extends UpdateCompanion<CustomerAnimal> {
  final Value<String> customerLocalId;
  final Value<String> animalLocalId;
  final Value<String?> allotmentId;
  final Value<String?> ranchId;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const CustomerAnimalsCompanion({
    this.customerLocalId = const Value.absent(),
    this.animalLocalId = const Value.absent(),
    this.allotmentId = const Value.absent(),
    this.ranchId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CustomerAnimalsCompanion.insert({
    required String customerLocalId,
    required String animalLocalId,
    this.allotmentId = const Value.absent(),
    this.ranchId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : customerLocalId = Value(customerLocalId),
        animalLocalId = Value(animalLocalId);
  static Insertable<CustomerAnimal> custom({
    Expression<String>? customerLocalId,
    Expression<String>? animalLocalId,
    Expression<String>? allotmentId,
    Expression<String>? ranchId,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (customerLocalId != null) 'customer_local_id': customerLocalId,
      if (animalLocalId != null) 'animal_local_id': animalLocalId,
      if (allotmentId != null) 'allotment_id': allotmentId,
      if (ranchId != null) 'ranch_id': ranchId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CustomerAnimalsCompanion copyWith(
      {Value<String>? customerLocalId,
      Value<String>? animalLocalId,
      Value<String?>? allotmentId,
      Value<String?>? ranchId,
      Value<String>? createdAt,
      Value<String>? updatedAt,
      Value<int>? rowid}) {
    return CustomerAnimalsCompanion(
      customerLocalId: customerLocalId ?? this.customerLocalId,
      animalLocalId: animalLocalId ?? this.animalLocalId,
      allotmentId: allotmentId ?? this.allotmentId,
      ranchId: ranchId ?? this.ranchId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerLocalId.present) {
      map['customer_local_id'] = Variable<String>(customerLocalId.value);
    }
    if (animalLocalId.present) {
      map['animal_local_id'] = Variable<String>(animalLocalId.value);
    }
    if (allotmentId.present) {
      map['allotment_id'] = Variable<String>(allotmentId.value);
    }
    if (ranchId.present) {
      map['ranch_id'] = Variable<String>(ranchId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerAnimalsCompanion(')
          ..write('customerLocalId: $customerLocalId, ')
          ..write('animalLocalId: $animalLocalId, ')
          ..write('allotmentId: $allotmentId, ')
          ..write('ranchId: $ranchId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final Users users = Users(this);
  late final Accounts accounts = Accounts(this);
  late final AnimalBreeds animalBreeds = AnimalBreeds(this);
  late final AnimalCoats animalCoats = AnimalCoats(this);
  late final AnimalCategories animalCategories = AnimalCategories(this);
  late final Animals animals = Animals(this);
  late final AnimalIdentifiers animalIdentifiers = AnimalIdentifiers(this);
  late final Contacts contacts = Contacts(this);
  late final Customers customers = Customers(this);
  late final Allotments allotments = Allotments(this);
  late final Ranches ranches = Ranches(this);
  late final CustomerAnimals customerAnimals = CustomerAnimals(this);
  late final Index animalsCategoryIdIndex = Index('animals_category_id_index',
      'CREATE INDEX animals_category_id_index ON animals (category_id)');
  late final Index animalIdentifiersAnimalIdIndex = Index(
      'animal_identifiers_animal_id_index',
      'CREATE INDEX animal_identifiers_animal_id_index ON animal_identifiers (animal_local_id)');
  late final Index allotmentsCustomerIdNameUindex = Index(
      'allotments_customer_id_name_uindex',
      'CREATE UNIQUE INDEX allotments_customer_id_name_uindex ON allotments (customer_local_id, LOWER(name))');
  late final Index allotmentsCustomerIdAbbreviationUindex = Index(
      'allotments_customer_id_abbreviation_uindex',
      'CREATE UNIQUE INDEX allotments_customer_id_abbreviation_uindex ON allotments (customer_local_id, LOWER(abbreviation))');
  late final Index idxAllotmentsCustomerId = Index('idx_allotments_customer_id',
      'CREATE INDEX idx_allotments_customer_id ON allotments (customer_local_id)');
  late final UsersDao usersDao = UsersDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        users,
        accounts,
        animalBreeds,
        animalCoats,
        animalCategories,
        animals,
        animalIdentifiers,
        contacts,
        customers,
        allotments,
        ranches,
        customerAnimals,
        animalsCategoryIdIndex,
        animalIdentifiersAnimalIdIndex,
        allotmentsCustomerIdNameUindex,
        allotmentsCustomerIdAbbreviationUindex,
        idxAllotmentsCustomerId
      ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $UsersCreateCompanionBuilder = UsersCompanion Function({
  required String localId,
  Value<String?> remoteId,
  required String firebaseUid,
  required String firebaseEmail,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $UsersUpdateCompanionBuilder = UsersCompanion Function({
  Value<String> localId,
  Value<String?> remoteId,
  Value<String> firebaseUid,
  Value<String> firebaseEmail,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $UsersFilterComposer extends Composer<_$AppDatabase, Users> {
  $UsersFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firebaseUid => $composableBuilder(
      column: $table.firebaseUid, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firebaseEmail => $composableBuilder(
      column: $table.firebaseEmail, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $UsersOrderingComposer extends Composer<_$AppDatabase, Users> {
  $UsersOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firebaseUid => $composableBuilder(
      column: $table.firebaseUid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firebaseEmail => $composableBuilder(
      column: $table.firebaseEmail,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $UsersAnnotationComposer extends Composer<_$AppDatabase, Users> {
  $UsersAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<String> get firebaseUid => $composableBuilder(
      column: $table.firebaseUid, builder: (column) => column);

  GeneratedColumn<String> get firebaseEmail => $composableBuilder(
      column: $table.firebaseEmail, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $UsersTableManager extends RootTableManager<
    _$AppDatabase,
    Users,
    User,
    $UsersFilterComposer,
    $UsersOrderingComposer,
    $UsersAnnotationComposer,
    $UsersCreateCompanionBuilder,
    $UsersUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, Users, User>),
    User,
    PrefetchHooks Function()> {
  $UsersTableManager(_$AppDatabase db, Users table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $UsersFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $UsersOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $UsersAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> localId = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            Value<String> firebaseUid = const Value.absent(),
            Value<String> firebaseEmail = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion(
            localId: localId,
            remoteId: remoteId,
            firebaseUid: firebaseUid,
            firebaseEmail: firebaseEmail,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String localId,
            Value<String?> remoteId = const Value.absent(),
            required String firebaseUid,
            required String firebaseEmail,
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            localId: localId,
            remoteId: remoteId,
            firebaseUid: firebaseUid,
            firebaseEmail: firebaseEmail,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $UsersProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Users,
    User,
    $UsersFilterComposer,
    $UsersOrderingComposer,
    $UsersAnnotationComposer,
    $UsersCreateCompanionBuilder,
    $UsersUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, Users, User>),
    User,
    PrefetchHooks Function()>;
typedef $AccountsCreateCompanionBuilder = AccountsCompanion Function({
  required String localId,
  Value<String?> remoteId,
  required String createdBy,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $AccountsUpdateCompanionBuilder = AccountsCompanion Function({
  Value<String> localId,
  Value<String?> remoteId,
  Value<String> createdBy,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $AccountsFilterComposer extends Composer<_$AppDatabase, Accounts> {
  $AccountsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $AccountsOrderingComposer extends Composer<_$AppDatabase, Accounts> {
  $AccountsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $AccountsAnnotationComposer extends Composer<_$AppDatabase, Accounts> {
  $AccountsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<String> get createdBy =>
      $composableBuilder(column: $table.createdBy, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $AccountsTableManager extends RootTableManager<
    _$AppDatabase,
    Accounts,
    Account,
    $AccountsFilterComposer,
    $AccountsOrderingComposer,
    $AccountsAnnotationComposer,
    $AccountsCreateCompanionBuilder,
    $AccountsUpdateCompanionBuilder,
    (Account, BaseReferences<_$AppDatabase, Accounts, Account>),
    Account,
    PrefetchHooks Function()> {
  $AccountsTableManager(_$AppDatabase db, Accounts table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $AccountsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $AccountsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $AccountsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> localId = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            Value<String> createdBy = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AccountsCompanion(
            localId: localId,
            remoteId: remoteId,
            createdBy: createdBy,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String localId,
            Value<String?> remoteId = const Value.absent(),
            required String createdBy,
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AccountsCompanion.insert(
            localId: localId,
            remoteId: remoteId,
            createdBy: createdBy,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $AccountsProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Accounts,
    Account,
    $AccountsFilterComposer,
    $AccountsOrderingComposer,
    $AccountsAnnotationComposer,
    $AccountsCreateCompanionBuilder,
    $AccountsUpdateCompanionBuilder,
    (Account, BaseReferences<_$AppDatabase, Accounts, Account>),
    Account,
    PrefetchHooks Function()>;
typedef $AnimalBreedsCreateCompanionBuilder = AnimalBreedsCompanion Function({
  required String localId,
  Value<String?> remoteId,
  required String acronym,
  required String name,
  Value<int> popularity,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $AnimalBreedsUpdateCompanionBuilder = AnimalBreedsCompanion Function({
  Value<String> localId,
  Value<String?> remoteId,
  Value<String> acronym,
  Value<String> name,
  Value<int> popularity,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $AnimalBreedsFilterComposer
    extends Composer<_$AppDatabase, AnimalBreeds> {
  $AnimalBreedsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get acronym => $composableBuilder(
      column: $table.acronym, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get popularity => $composableBuilder(
      column: $table.popularity, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $AnimalBreedsOrderingComposer
    extends Composer<_$AppDatabase, AnimalBreeds> {
  $AnimalBreedsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get acronym => $composableBuilder(
      column: $table.acronym, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get popularity => $composableBuilder(
      column: $table.popularity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $AnimalBreedsAnnotationComposer
    extends Composer<_$AppDatabase, AnimalBreeds> {
  $AnimalBreedsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<String> get acronym =>
      $composableBuilder(column: $table.acronym, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get popularity => $composableBuilder(
      column: $table.popularity, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $AnimalBreedsTableManager extends RootTableManager<
    _$AppDatabase,
    AnimalBreeds,
    AnimalBreed,
    $AnimalBreedsFilterComposer,
    $AnimalBreedsOrderingComposer,
    $AnimalBreedsAnnotationComposer,
    $AnimalBreedsCreateCompanionBuilder,
    $AnimalBreedsUpdateCompanionBuilder,
    (AnimalBreed, BaseReferences<_$AppDatabase, AnimalBreeds, AnimalBreed>),
    AnimalBreed,
    PrefetchHooks Function()> {
  $AnimalBreedsTableManager(_$AppDatabase db, AnimalBreeds table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $AnimalBreedsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $AnimalBreedsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $AnimalBreedsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> localId = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            Value<String> acronym = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> popularity = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnimalBreedsCompanion(
            localId: localId,
            remoteId: remoteId,
            acronym: acronym,
            name: name,
            popularity: popularity,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String localId,
            Value<String?> remoteId = const Value.absent(),
            required String acronym,
            required String name,
            Value<int> popularity = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnimalBreedsCompanion.insert(
            localId: localId,
            remoteId: remoteId,
            acronym: acronym,
            name: name,
            popularity: popularity,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $AnimalBreedsProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    AnimalBreeds,
    AnimalBreed,
    $AnimalBreedsFilterComposer,
    $AnimalBreedsOrderingComposer,
    $AnimalBreedsAnnotationComposer,
    $AnimalBreedsCreateCompanionBuilder,
    $AnimalBreedsUpdateCompanionBuilder,
    (AnimalBreed, BaseReferences<_$AppDatabase, AnimalBreeds, AnimalBreed>),
    AnimalBreed,
    PrefetchHooks Function()>;
typedef $AnimalCoatsCreateCompanionBuilder = AnimalCoatsCompanion Function({
  required String localId,
  Value<String?> remoteId,
  required String acronym,
  required String name,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $AnimalCoatsUpdateCompanionBuilder = AnimalCoatsCompanion Function({
  Value<String> localId,
  Value<String?> remoteId,
  Value<String> acronym,
  Value<String> name,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $AnimalCoatsFilterComposer extends Composer<_$AppDatabase, AnimalCoats> {
  $AnimalCoatsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get acronym => $composableBuilder(
      column: $table.acronym, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $AnimalCoatsOrderingComposer
    extends Composer<_$AppDatabase, AnimalCoats> {
  $AnimalCoatsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get acronym => $composableBuilder(
      column: $table.acronym, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $AnimalCoatsAnnotationComposer
    extends Composer<_$AppDatabase, AnimalCoats> {
  $AnimalCoatsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<String> get acronym =>
      $composableBuilder(column: $table.acronym, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $AnimalCoatsTableManager extends RootTableManager<
    _$AppDatabase,
    AnimalCoats,
    AnimalCoat,
    $AnimalCoatsFilterComposer,
    $AnimalCoatsOrderingComposer,
    $AnimalCoatsAnnotationComposer,
    $AnimalCoatsCreateCompanionBuilder,
    $AnimalCoatsUpdateCompanionBuilder,
    (AnimalCoat, BaseReferences<_$AppDatabase, AnimalCoats, AnimalCoat>),
    AnimalCoat,
    PrefetchHooks Function()> {
  $AnimalCoatsTableManager(_$AppDatabase db, AnimalCoats table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $AnimalCoatsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $AnimalCoatsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $AnimalCoatsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> localId = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            Value<String> acronym = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnimalCoatsCompanion(
            localId: localId,
            remoteId: remoteId,
            acronym: acronym,
            name: name,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String localId,
            Value<String?> remoteId = const Value.absent(),
            required String acronym,
            required String name,
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnimalCoatsCompanion.insert(
            localId: localId,
            remoteId: remoteId,
            acronym: acronym,
            name: name,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $AnimalCoatsProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    AnimalCoats,
    AnimalCoat,
    $AnimalCoatsFilterComposer,
    $AnimalCoatsOrderingComposer,
    $AnimalCoatsAnnotationComposer,
    $AnimalCoatsCreateCompanionBuilder,
    $AnimalCoatsUpdateCompanionBuilder,
    (AnimalCoat, BaseReferences<_$AppDatabase, AnimalCoats, AnimalCoat>),
    AnimalCoat,
    PrefetchHooks Function()>;
typedef $AnimalCategoriesCreateCompanionBuilder = AnimalCategoriesCompanion
    Function({
  required String localId,
  Value<String?> remoteId,
  required String name,
  required AnimalSexEnum sex,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $AnimalCategoriesUpdateCompanionBuilder = AnimalCategoriesCompanion
    Function({
  Value<String> localId,
  Value<String?> remoteId,
  Value<String> name,
  Value<AnimalSexEnum> sex,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $AnimalCategoriesFilterComposer
    extends Composer<_$AppDatabase, AnimalCategories> {
  $AnimalCategoriesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<AnimalSexEnum, AnimalSexEnum, int> get sex =>
      $composableBuilder(
          column: $table.sex,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $AnimalCategoriesOrderingComposer
    extends Composer<_$AppDatabase, AnimalCategories> {
  $AnimalCategoriesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sex => $composableBuilder(
      column: $table.sex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $AnimalCategoriesAnnotationComposer
    extends Composer<_$AppDatabase, AnimalCategories> {
  $AnimalCategoriesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumnWithTypeConverter<AnimalSexEnum, int> get sex =>
      $composableBuilder(column: $table.sex, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $AnimalCategoriesTableManager extends RootTableManager<
    _$AppDatabase,
    AnimalCategories,
    AnimalCategory,
    $AnimalCategoriesFilterComposer,
    $AnimalCategoriesOrderingComposer,
    $AnimalCategoriesAnnotationComposer,
    $AnimalCategoriesCreateCompanionBuilder,
    $AnimalCategoriesUpdateCompanionBuilder,
    (
      AnimalCategory,
      BaseReferences<_$AppDatabase, AnimalCategories, AnimalCategory>
    ),
    AnimalCategory,
    PrefetchHooks Function()> {
  $AnimalCategoriesTableManager(_$AppDatabase db, AnimalCategories table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $AnimalCategoriesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $AnimalCategoriesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $AnimalCategoriesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> localId = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<AnimalSexEnum> sex = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnimalCategoriesCompanion(
            localId: localId,
            remoteId: remoteId,
            name: name,
            sex: sex,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String localId,
            Value<String?> remoteId = const Value.absent(),
            required String name,
            required AnimalSexEnum sex,
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnimalCategoriesCompanion.insert(
            localId: localId,
            remoteId: remoteId,
            name: name,
            sex: sex,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $AnimalCategoriesProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    AnimalCategories,
    AnimalCategory,
    $AnimalCategoriesFilterComposer,
    $AnimalCategoriesOrderingComposer,
    $AnimalCategoriesAnnotationComposer,
    $AnimalCategoriesCreateCompanionBuilder,
    $AnimalCategoriesUpdateCompanionBuilder,
    (
      AnimalCategory,
      BaseReferences<_$AppDatabase, AnimalCategories, AnimalCategory>
    ),
    AnimalCategory,
    PrefetchHooks Function()>;
typedef $AnimalsCreateCompanionBuilder = AnimalsCompanion Function({
  required String localId,
  Value<String?> remoteId,
  required int ageInMonths,
  required String breedId,
  required String categoryId,
  required AnimalSexEnum sex,
  Value<String?> birthDate,
  Value<String?> coatId,
  Value<double?> bloodDegree,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $AnimalsUpdateCompanionBuilder = AnimalsCompanion Function({
  Value<String> localId,
  Value<String?> remoteId,
  Value<int> ageInMonths,
  Value<String> breedId,
  Value<String> categoryId,
  Value<AnimalSexEnum> sex,
  Value<String?> birthDate,
  Value<String?> coatId,
  Value<double?> bloodDegree,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $AnimalsFilterComposer extends Composer<_$AppDatabase, Animals> {
  $AnimalsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get ageInMonths => $composableBuilder(
      column: $table.ageInMonths, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get breedId => $composableBuilder(
      column: $table.breedId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<AnimalSexEnum, AnimalSexEnum, int> get sex =>
      $composableBuilder(
          column: $table.sex,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get coatId => $composableBuilder(
      column: $table.coatId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get bloodDegree => $composableBuilder(
      column: $table.bloodDegree, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $AnimalsOrderingComposer extends Composer<_$AppDatabase, Animals> {
  $AnimalsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get ageInMonths => $composableBuilder(
      column: $table.ageInMonths, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get breedId => $composableBuilder(
      column: $table.breedId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sex => $composableBuilder(
      column: $table.sex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get coatId => $composableBuilder(
      column: $table.coatId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get bloodDegree => $composableBuilder(
      column: $table.bloodDegree, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $AnimalsAnnotationComposer extends Composer<_$AppDatabase, Animals> {
  $AnimalsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<int> get ageInMonths => $composableBuilder(
      column: $table.ageInMonths, builder: (column) => column);

  GeneratedColumn<String> get breedId =>
      $composableBuilder(column: $table.breedId, builder: (column) => column);

  GeneratedColumn<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<AnimalSexEnum, int> get sex =>
      $composableBuilder(column: $table.sex, builder: (column) => column);

  GeneratedColumn<String> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<String> get coatId =>
      $composableBuilder(column: $table.coatId, builder: (column) => column);

  GeneratedColumn<double> get bloodDegree => $composableBuilder(
      column: $table.bloodDegree, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $AnimalsTableManager extends RootTableManager<
    _$AppDatabase,
    Animals,
    Animal,
    $AnimalsFilterComposer,
    $AnimalsOrderingComposer,
    $AnimalsAnnotationComposer,
    $AnimalsCreateCompanionBuilder,
    $AnimalsUpdateCompanionBuilder,
    (Animal, BaseReferences<_$AppDatabase, Animals, Animal>),
    Animal,
    PrefetchHooks Function()> {
  $AnimalsTableManager(_$AppDatabase db, Animals table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $AnimalsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $AnimalsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $AnimalsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> localId = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            Value<int> ageInMonths = const Value.absent(),
            Value<String> breedId = const Value.absent(),
            Value<String> categoryId = const Value.absent(),
            Value<AnimalSexEnum> sex = const Value.absent(),
            Value<String?> birthDate = const Value.absent(),
            Value<String?> coatId = const Value.absent(),
            Value<double?> bloodDegree = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnimalsCompanion(
            localId: localId,
            remoteId: remoteId,
            ageInMonths: ageInMonths,
            breedId: breedId,
            categoryId: categoryId,
            sex: sex,
            birthDate: birthDate,
            coatId: coatId,
            bloodDegree: bloodDegree,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String localId,
            Value<String?> remoteId = const Value.absent(),
            required int ageInMonths,
            required String breedId,
            required String categoryId,
            required AnimalSexEnum sex,
            Value<String?> birthDate = const Value.absent(),
            Value<String?> coatId = const Value.absent(),
            Value<double?> bloodDegree = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnimalsCompanion.insert(
            localId: localId,
            remoteId: remoteId,
            ageInMonths: ageInMonths,
            breedId: breedId,
            categoryId: categoryId,
            sex: sex,
            birthDate: birthDate,
            coatId: coatId,
            bloodDegree: bloodDegree,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $AnimalsProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Animals,
    Animal,
    $AnimalsFilterComposer,
    $AnimalsOrderingComposer,
    $AnimalsAnnotationComposer,
    $AnimalsCreateCompanionBuilder,
    $AnimalsUpdateCompanionBuilder,
    (Animal, BaseReferences<_$AppDatabase, Animals, Animal>),
    Animal,
    PrefetchHooks Function()>;
typedef $AnimalIdentifiersCreateCompanionBuilder = AnimalIdentifiersCompanion
    Function({
  required String animalLocalId,
  required AnimalIdentifierEnum type,
  required String value,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $AnimalIdentifiersUpdateCompanionBuilder = AnimalIdentifiersCompanion
    Function({
  Value<String> animalLocalId,
  Value<AnimalIdentifierEnum> type,
  Value<String> value,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $AnimalIdentifiersFilterComposer
    extends Composer<_$AppDatabase, AnimalIdentifiers> {
  $AnimalIdentifiersFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get animalLocalId => $composableBuilder(
      column: $table.animalLocalId, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<AnimalIdentifierEnum, AnimalIdentifierEnum,
          int>
      get type => $composableBuilder(
          column: $table.type,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $AnimalIdentifiersOrderingComposer
    extends Composer<_$AppDatabase, AnimalIdentifiers> {
  $AnimalIdentifiersOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get animalLocalId => $composableBuilder(
      column: $table.animalLocalId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $AnimalIdentifiersAnnotationComposer
    extends Composer<_$AppDatabase, AnimalIdentifiers> {
  $AnimalIdentifiersAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get animalLocalId => $composableBuilder(
      column: $table.animalLocalId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<AnimalIdentifierEnum, int> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $AnimalIdentifiersTableManager extends RootTableManager<
    _$AppDatabase,
    AnimalIdentifiers,
    AnimalIdentifier,
    $AnimalIdentifiersFilterComposer,
    $AnimalIdentifiersOrderingComposer,
    $AnimalIdentifiersAnnotationComposer,
    $AnimalIdentifiersCreateCompanionBuilder,
    $AnimalIdentifiersUpdateCompanionBuilder,
    (
      AnimalIdentifier,
      BaseReferences<_$AppDatabase, AnimalIdentifiers, AnimalIdentifier>
    ),
    AnimalIdentifier,
    PrefetchHooks Function()> {
  $AnimalIdentifiersTableManager(_$AppDatabase db, AnimalIdentifiers table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $AnimalIdentifiersFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $AnimalIdentifiersOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $AnimalIdentifiersAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> animalLocalId = const Value.absent(),
            Value<AnimalIdentifierEnum> type = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnimalIdentifiersCompanion(
            animalLocalId: animalLocalId,
            type: type,
            value: value,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String animalLocalId,
            required AnimalIdentifierEnum type,
            required String value,
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AnimalIdentifiersCompanion.insert(
            animalLocalId: animalLocalId,
            type: type,
            value: value,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $AnimalIdentifiersProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    AnimalIdentifiers,
    AnimalIdentifier,
    $AnimalIdentifiersFilterComposer,
    $AnimalIdentifiersOrderingComposer,
    $AnimalIdentifiersAnnotationComposer,
    $AnimalIdentifiersCreateCompanionBuilder,
    $AnimalIdentifiersUpdateCompanionBuilder,
    (
      AnimalIdentifier,
      BaseReferences<_$AppDatabase, AnimalIdentifiers, AnimalIdentifier>
    ),
    AnimalIdentifier,
    PrefetchHooks Function()>;
typedef $ContactsCreateCompanionBuilder = ContactsCompanion Function({
  required String localId,
  Value<String?> remoteId,
  Value<RoleEnum> role,
  Value<JobEnum?> jobs,
  Value<int> isActive,
  required String accountLocalId,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $ContactsUpdateCompanionBuilder = ContactsCompanion Function({
  Value<String> localId,
  Value<String?> remoteId,
  Value<RoleEnum> role,
  Value<JobEnum?> jobs,
  Value<int> isActive,
  Value<String> accountLocalId,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $ContactsFilterComposer extends Composer<_$AppDatabase, Contacts> {
  $ContactsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<RoleEnum, RoleEnum, int> get role =>
      $composableBuilder(
          column: $table.role,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<JobEnum?, JobEnum, int> get jobs =>
      $composableBuilder(
          column: $table.jobs,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $ContactsOrderingComposer extends Composer<_$AppDatabase, Contacts> {
  $ContactsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get role => $composableBuilder(
      column: $table.role, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get jobs => $composableBuilder(
      column: $table.jobs, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $ContactsAnnotationComposer extends Composer<_$AppDatabase, Contacts> {
  $ContactsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<RoleEnum, int> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumnWithTypeConverter<JobEnum?, int> get jobs =>
      $composableBuilder(column: $table.jobs, builder: (column) => column);

  GeneratedColumn<int> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $ContactsTableManager extends RootTableManager<
    _$AppDatabase,
    Contacts,
    Contact,
    $ContactsFilterComposer,
    $ContactsOrderingComposer,
    $ContactsAnnotationComposer,
    $ContactsCreateCompanionBuilder,
    $ContactsUpdateCompanionBuilder,
    (Contact, BaseReferences<_$AppDatabase, Contacts, Contact>),
    Contact,
    PrefetchHooks Function()> {
  $ContactsTableManager(_$AppDatabase db, Contacts table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $ContactsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $ContactsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $ContactsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> localId = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            Value<RoleEnum> role = const Value.absent(),
            Value<JobEnum?> jobs = const Value.absent(),
            Value<int> isActive = const Value.absent(),
            Value<String> accountLocalId = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ContactsCompanion(
            localId: localId,
            remoteId: remoteId,
            role: role,
            jobs: jobs,
            isActive: isActive,
            accountLocalId: accountLocalId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String localId,
            Value<String?> remoteId = const Value.absent(),
            Value<RoleEnum> role = const Value.absent(),
            Value<JobEnum?> jobs = const Value.absent(),
            Value<int> isActive = const Value.absent(),
            required String accountLocalId,
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ContactsCompanion.insert(
            localId: localId,
            remoteId: remoteId,
            role: role,
            jobs: jobs,
            isActive: isActive,
            accountLocalId: accountLocalId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $ContactsProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Contacts,
    Contact,
    $ContactsFilterComposer,
    $ContactsOrderingComposer,
    $ContactsAnnotationComposer,
    $ContactsCreateCompanionBuilder,
    $ContactsUpdateCompanionBuilder,
    (Contact, BaseReferences<_$AppDatabase, Contacts, Contact>),
    Contact,
    PrefetchHooks Function()>;
typedef $CustomersCreateCompanionBuilder = CustomersCompanion Function({
  required String localId,
  Value<String?> remoteId,
  required String contactLocalId,
  required String accountLocalId,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $CustomersUpdateCompanionBuilder = CustomersCompanion Function({
  Value<String> localId,
  Value<String?> remoteId,
  Value<String> contactLocalId,
  Value<String> accountLocalId,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $CustomersFilterComposer extends Composer<_$AppDatabase, Customers> {
  $CustomersFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactLocalId => $composableBuilder(
      column: $table.contactLocalId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $CustomersOrderingComposer extends Composer<_$AppDatabase, Customers> {
  $CustomersOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactLocalId => $composableBuilder(
      column: $table.contactLocalId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $CustomersAnnotationComposer extends Composer<_$AppDatabase, Customers> {
  $CustomersAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<String> get contactLocalId => $composableBuilder(
      column: $table.contactLocalId, builder: (column) => column);

  GeneratedColumn<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $CustomersTableManager extends RootTableManager<
    _$AppDatabase,
    Customers,
    Customer,
    $CustomersFilterComposer,
    $CustomersOrderingComposer,
    $CustomersAnnotationComposer,
    $CustomersCreateCompanionBuilder,
    $CustomersUpdateCompanionBuilder,
    (Customer, BaseReferences<_$AppDatabase, Customers, Customer>),
    Customer,
    PrefetchHooks Function()> {
  $CustomersTableManager(_$AppDatabase db, Customers table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $CustomersFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $CustomersOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $CustomersAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> localId = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            Value<String> contactLocalId = const Value.absent(),
            Value<String> accountLocalId = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CustomersCompanion(
            localId: localId,
            remoteId: remoteId,
            contactLocalId: contactLocalId,
            accountLocalId: accountLocalId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String localId,
            Value<String?> remoteId = const Value.absent(),
            required String contactLocalId,
            required String accountLocalId,
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CustomersCompanion.insert(
            localId: localId,
            remoteId: remoteId,
            contactLocalId: contactLocalId,
            accountLocalId: accountLocalId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $CustomersProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Customers,
    Customer,
    $CustomersFilterComposer,
    $CustomersOrderingComposer,
    $CustomersAnnotationComposer,
    $CustomersCreateCompanionBuilder,
    $CustomersUpdateCompanionBuilder,
    (Customer, BaseReferences<_$AppDatabase, Customers, Customer>),
    Customer,
    PrefetchHooks Function()>;
typedef $AllotmentsCreateCompanionBuilder = AllotmentsCompanion Function({
  required String localId,
  Value<String?> remoteId,
  required String customerLocalId,
  required String accountLocalId,
  required String name,
  required String abbreviation,
  Value<String> creationDate,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $AllotmentsUpdateCompanionBuilder = AllotmentsCompanion Function({
  Value<String> localId,
  Value<String?> remoteId,
  Value<String> customerLocalId,
  Value<String> accountLocalId,
  Value<String> name,
  Value<String> abbreviation,
  Value<String> creationDate,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $AllotmentsFilterComposer extends Composer<_$AppDatabase, Allotments> {
  $AllotmentsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customerLocalId => $composableBuilder(
      column: $table.customerLocalId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get abbreviation => $composableBuilder(
      column: $table.abbreviation, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get creationDate => $composableBuilder(
      column: $table.creationDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $AllotmentsOrderingComposer extends Composer<_$AppDatabase, Allotments> {
  $AllotmentsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customerLocalId => $composableBuilder(
      column: $table.customerLocalId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get abbreviation => $composableBuilder(
      column: $table.abbreviation,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get creationDate => $composableBuilder(
      column: $table.creationDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $AllotmentsAnnotationComposer
    extends Composer<_$AppDatabase, Allotments> {
  $AllotmentsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<String> get customerLocalId => $composableBuilder(
      column: $table.customerLocalId, builder: (column) => column);

  GeneratedColumn<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get abbreviation => $composableBuilder(
      column: $table.abbreviation, builder: (column) => column);

  GeneratedColumn<String> get creationDate => $composableBuilder(
      column: $table.creationDate, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $AllotmentsTableManager extends RootTableManager<
    _$AppDatabase,
    Allotments,
    Allotment,
    $AllotmentsFilterComposer,
    $AllotmentsOrderingComposer,
    $AllotmentsAnnotationComposer,
    $AllotmentsCreateCompanionBuilder,
    $AllotmentsUpdateCompanionBuilder,
    (Allotment, BaseReferences<_$AppDatabase, Allotments, Allotment>),
    Allotment,
    PrefetchHooks Function()> {
  $AllotmentsTableManager(_$AppDatabase db, Allotments table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $AllotmentsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $AllotmentsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $AllotmentsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> localId = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            Value<String> customerLocalId = const Value.absent(),
            Value<String> accountLocalId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> abbreviation = const Value.absent(),
            Value<String> creationDate = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AllotmentsCompanion(
            localId: localId,
            remoteId: remoteId,
            customerLocalId: customerLocalId,
            accountLocalId: accountLocalId,
            name: name,
            abbreviation: abbreviation,
            creationDate: creationDate,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String localId,
            Value<String?> remoteId = const Value.absent(),
            required String customerLocalId,
            required String accountLocalId,
            required String name,
            required String abbreviation,
            Value<String> creationDate = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AllotmentsCompanion.insert(
            localId: localId,
            remoteId: remoteId,
            customerLocalId: customerLocalId,
            accountLocalId: accountLocalId,
            name: name,
            abbreviation: abbreviation,
            creationDate: creationDate,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $AllotmentsProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Allotments,
    Allotment,
    $AllotmentsFilterComposer,
    $AllotmentsOrderingComposer,
    $AllotmentsAnnotationComposer,
    $AllotmentsCreateCompanionBuilder,
    $AllotmentsUpdateCompanionBuilder,
    (Allotment, BaseReferences<_$AppDatabase, Allotments, Allotment>),
    Allotment,
    PrefetchHooks Function()>;
typedef $RanchesCreateCompanionBuilder = RanchesCompanion Function({
  required String localId,
  Value<String?> remoteId,
  required String customerLocalId,
  required String accountLocalId,
  required String name,
  required int country,
  required int district,
  required int municipality,
  Value<bool> isActive,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $RanchesUpdateCompanionBuilder = RanchesCompanion Function({
  Value<String> localId,
  Value<String?> remoteId,
  Value<String> customerLocalId,
  Value<String> accountLocalId,
  Value<String> name,
  Value<int> country,
  Value<int> district,
  Value<int> municipality,
  Value<bool> isActive,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $RanchesFilterComposer extends Composer<_$AppDatabase, Ranches> {
  $RanchesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customerLocalId => $composableBuilder(
      column: $table.customerLocalId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get district => $composableBuilder(
      column: $table.district, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get municipality => $composableBuilder(
      column: $table.municipality, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $RanchesOrderingComposer extends Composer<_$AppDatabase, Ranches> {
  $RanchesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get localId => $composableBuilder(
      column: $table.localId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customerLocalId => $composableBuilder(
      column: $table.customerLocalId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get district => $composableBuilder(
      column: $table.district, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get municipality => $composableBuilder(
      column: $table.municipality,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $RanchesAnnotationComposer extends Composer<_$AppDatabase, Ranches> {
  $RanchesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<String> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<String> get customerLocalId => $composableBuilder(
      column: $table.customerLocalId, builder: (column) => column);

  GeneratedColumn<String> get accountLocalId => $composableBuilder(
      column: $table.accountLocalId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<int> get district =>
      $composableBuilder(column: $table.district, builder: (column) => column);

  GeneratedColumn<int> get municipality => $composableBuilder(
      column: $table.municipality, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $RanchesTableManager extends RootTableManager<
    _$AppDatabase,
    Ranches,
    Ranch,
    $RanchesFilterComposer,
    $RanchesOrderingComposer,
    $RanchesAnnotationComposer,
    $RanchesCreateCompanionBuilder,
    $RanchesUpdateCompanionBuilder,
    (Ranch, BaseReferences<_$AppDatabase, Ranches, Ranch>),
    Ranch,
    PrefetchHooks Function()> {
  $RanchesTableManager(_$AppDatabase db, Ranches table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $RanchesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $RanchesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $RanchesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> localId = const Value.absent(),
            Value<String?> remoteId = const Value.absent(),
            Value<String> customerLocalId = const Value.absent(),
            Value<String> accountLocalId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> country = const Value.absent(),
            Value<int> district = const Value.absent(),
            Value<int> municipality = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RanchesCompanion(
            localId: localId,
            remoteId: remoteId,
            customerLocalId: customerLocalId,
            accountLocalId: accountLocalId,
            name: name,
            country: country,
            district: district,
            municipality: municipality,
            isActive: isActive,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String localId,
            Value<String?> remoteId = const Value.absent(),
            required String customerLocalId,
            required String accountLocalId,
            required String name,
            required int country,
            required int district,
            required int municipality,
            Value<bool> isActive = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RanchesCompanion.insert(
            localId: localId,
            remoteId: remoteId,
            customerLocalId: customerLocalId,
            accountLocalId: accountLocalId,
            name: name,
            country: country,
            district: district,
            municipality: municipality,
            isActive: isActive,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $RanchesProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    Ranches,
    Ranch,
    $RanchesFilterComposer,
    $RanchesOrderingComposer,
    $RanchesAnnotationComposer,
    $RanchesCreateCompanionBuilder,
    $RanchesUpdateCompanionBuilder,
    (Ranch, BaseReferences<_$AppDatabase, Ranches, Ranch>),
    Ranch,
    PrefetchHooks Function()>;
typedef $CustomerAnimalsCreateCompanionBuilder = CustomerAnimalsCompanion
    Function({
  required String customerLocalId,
  required String animalLocalId,
  Value<String?> allotmentId,
  Value<String?> ranchId,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});
typedef $CustomerAnimalsUpdateCompanionBuilder = CustomerAnimalsCompanion
    Function({
  Value<String> customerLocalId,
  Value<String> animalLocalId,
  Value<String?> allotmentId,
  Value<String?> ranchId,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<int> rowid,
});

class $CustomerAnimalsFilterComposer
    extends Composer<_$AppDatabase, CustomerAnimals> {
  $CustomerAnimalsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get customerLocalId => $composableBuilder(
      column: $table.customerLocalId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get animalLocalId => $composableBuilder(
      column: $table.animalLocalId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get allotmentId => $composableBuilder(
      column: $table.allotmentId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ranchId => $composableBuilder(
      column: $table.ranchId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $CustomerAnimalsOrderingComposer
    extends Composer<_$AppDatabase, CustomerAnimals> {
  $CustomerAnimalsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get customerLocalId => $composableBuilder(
      column: $table.customerLocalId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get animalLocalId => $composableBuilder(
      column: $table.animalLocalId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get allotmentId => $composableBuilder(
      column: $table.allotmentId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ranchId => $composableBuilder(
      column: $table.ranchId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $CustomerAnimalsAnnotationComposer
    extends Composer<_$AppDatabase, CustomerAnimals> {
  $CustomerAnimalsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get customerLocalId => $composableBuilder(
      column: $table.customerLocalId, builder: (column) => column);

  GeneratedColumn<String> get animalLocalId => $composableBuilder(
      column: $table.animalLocalId, builder: (column) => column);

  GeneratedColumn<String> get allotmentId => $composableBuilder(
      column: $table.allotmentId, builder: (column) => column);

  GeneratedColumn<String> get ranchId =>
      $composableBuilder(column: $table.ranchId, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $CustomerAnimalsTableManager extends RootTableManager<
    _$AppDatabase,
    CustomerAnimals,
    CustomerAnimal,
    $CustomerAnimalsFilterComposer,
    $CustomerAnimalsOrderingComposer,
    $CustomerAnimalsAnnotationComposer,
    $CustomerAnimalsCreateCompanionBuilder,
    $CustomerAnimalsUpdateCompanionBuilder,
    (
      CustomerAnimal,
      BaseReferences<_$AppDatabase, CustomerAnimals, CustomerAnimal>
    ),
    CustomerAnimal,
    PrefetchHooks Function()> {
  $CustomerAnimalsTableManager(_$AppDatabase db, CustomerAnimals table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $CustomerAnimalsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $CustomerAnimalsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $CustomerAnimalsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> customerLocalId = const Value.absent(),
            Value<String> animalLocalId = const Value.absent(),
            Value<String?> allotmentId = const Value.absent(),
            Value<String?> ranchId = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CustomerAnimalsCompanion(
            customerLocalId: customerLocalId,
            animalLocalId: animalLocalId,
            allotmentId: allotmentId,
            ranchId: ranchId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String customerLocalId,
            required String animalLocalId,
            Value<String?> allotmentId = const Value.absent(),
            Value<String?> ranchId = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<String> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CustomerAnimalsCompanion.insert(
            customerLocalId: customerLocalId,
            animalLocalId: animalLocalId,
            allotmentId: allotmentId,
            ranchId: ranchId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $CustomerAnimalsProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    CustomerAnimals,
    CustomerAnimal,
    $CustomerAnimalsFilterComposer,
    $CustomerAnimalsOrderingComposer,
    $CustomerAnimalsAnnotationComposer,
    $CustomerAnimalsCreateCompanionBuilder,
    $CustomerAnimalsUpdateCompanionBuilder,
    (
      CustomerAnimal,
      BaseReferences<_$AppDatabase, CustomerAnimals, CustomerAnimal>
    ),
    CustomerAnimal,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $UsersTableManager get users => $UsersTableManager(_db, _db.users);
  $AccountsTableManager get accounts =>
      $AccountsTableManager(_db, _db.accounts);
  $AnimalBreedsTableManager get animalBreeds =>
      $AnimalBreedsTableManager(_db, _db.animalBreeds);
  $AnimalCoatsTableManager get animalCoats =>
      $AnimalCoatsTableManager(_db, _db.animalCoats);
  $AnimalCategoriesTableManager get animalCategories =>
      $AnimalCategoriesTableManager(_db, _db.animalCategories);
  $AnimalsTableManager get animals => $AnimalsTableManager(_db, _db.animals);
  $AnimalIdentifiersTableManager get animalIdentifiers =>
      $AnimalIdentifiersTableManager(_db, _db.animalIdentifiers);
  $ContactsTableManager get contacts =>
      $ContactsTableManager(_db, _db.contacts);
  $CustomersTableManager get customers =>
      $CustomersTableManager(_db, _db.customers);
  $AllotmentsTableManager get allotments =>
      $AllotmentsTableManager(_db, _db.allotments);
  $RanchesTableManager get ranches => $RanchesTableManager(_db, _db.ranches);
  $CustomerAnimalsTableManager get customerAnimals =>
      $CustomerAnimalsTableManager(_db, _db.customerAnimals);
}
