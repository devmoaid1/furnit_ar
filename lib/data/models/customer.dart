import 'package:equatable/equatable.dart';

class Customer extends Equatable {
  final String fullName;
  final String avatarPath;
  final String email;
  final String phone;

  const Customer({
    required this.fullName,
    required this.avatarPath,
    required this.email,
    required this.phone,
  });

  Customer copyWith({
    String? fullName,
    String? avatarPath,
    String? email,
    String? phone,
  }) =>
      Customer(
        fullName: fullName ?? this.fullName,
        avatarPath: avatarPath ?? this.avatarPath,
        email: email ?? this.email,
        phone: phone ?? this.phone,
      );

  @override
  List<Object?> get props => [fullName, avatarPath, email, phone];

  @override
  bool get stringify => true;
}
