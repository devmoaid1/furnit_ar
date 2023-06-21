import 'package:equatable/equatable.dart';

class Customer extends Equatable {
  final String? id;
  final String? fullName;
  final String? avatarPath;
  final String? email;
  final String? phone;

  const Customer({
    this.id,
    this.fullName,
    this.avatarPath,
    this.email,
    this.phone,
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

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'avatarPath': avatarPath,
      'email': email,
      'phone': phone,
    };
  }

  static Customer fromFirestore(Map<String, dynamic> json) {
    return Customer(
      fullName: json['fullName'] ?? '',
      avatarPath: json['avatarPath'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
    );
  }

  @override
  List<Object?> get props => [fullName, avatarPath, email, phone];

  @override
  bool get stringify => true;
}
