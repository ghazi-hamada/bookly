import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  Failure(
    this.errorMessage,
  );
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('connection timeout with ApiServer');
        break;
      case DioErrorType.sendTimeout:
        return ServerFailure('send timeout with ApiServer');
        break;
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
        break;
      case DioErrorType.badCertificate:
        // TODO: Handle this case.
        break;
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
        break;
      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was canceld');
        break;
      case DioErrorType.connectionError:
        // TODO: Handle this case.
        break;
      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketExeption')) {
          return ServerFailure('NO Internet Connection');
        }

        return ServerFailure("Unexpected error, Please try again");
      default:
        return ServerFailure('Opps There was an, Please try again');
    }
        return ServerFailure('Opps There was an, Please try again');
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Yuor request not found, please try later!');
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server erorr, please try later");
    } else {
      return ServerFailure('Opps There was an, Please try again');
    }
  }
}
