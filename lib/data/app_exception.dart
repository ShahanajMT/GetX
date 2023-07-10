import 'package:flutter/material.dart';

class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  String toString() {
    return '$_message$_prefix';
  }
}

//TODO InternetException
class InternetException extends AppException {
  InternetException([String? message]) : super(message, 'No Internet');
}

//TODO RequestTimeOut
class RequestTimeOut extends AppException {
  RequestTimeOut([String? message]) : super(message, 'Request Time Out');
}


//TODO ServerException
class ServerException extends AppException {
  ServerException([String? message]) : super(message, 'Internal Server Error');
}


