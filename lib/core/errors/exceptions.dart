import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  final String? message;

  const ServerException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}

class NoInternetException extends ServerException {
  const NoInternetException([message])
      : super("مشكلة في الانترنت....حاول مرة اخرى");
}

class CacheException extends ServerException {
  const CacheException([message])
      : super("cache problem ... please try again later");
}
