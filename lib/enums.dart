//! ALWAYS ADD NEW VALUES AT THE END OF THE ENUM IF
//! THE ENUM CLASS IS BEEN USED ON THE DATABASE

enum AnimalSexEnum {
  male('Male'),
  female('Female');

  final String sex;

  const AnimalSexEnum(this.sex);

  @override
  String toString() => sex;
}

enum AnimalIdentifierEnum {
  natural('Natural'),
  electronicTag('ElectronicTag'),
  sisbov('Sisbov'),
  rgd('RGD');

  final String identifier;

  const AnimalIdentifierEnum(this.identifier);

  @override
  String toString() => identifier;
}

enum RoleEnum {
  administrator('Administrator'),
  employee('Employee'),
  customer('Customer'),
  supplier('Supplier'),
  none('None');

  final String role;

  const RoleEnum(this.role);

  @override
  String toString() => role;
}

enum JobEnum {
  veterinarian('Veterinarian'),
  inseminator('Inseminator'),
  customer('Customer'),
  assistent('Assistent');

  final String job;

  const JobEnum(this.job);

  @override
  String toString() => job;
}
