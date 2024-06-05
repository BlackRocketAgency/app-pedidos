import 'package:ecommerce/src/domain/enums/status_enum/status_enum.dart';

class ResponseModel {
  final dynamic contentResponse;
  final StatusEnum statusEnum;

  ResponseModel({
    required this.statusEnum,
    required this.contentResponse,
  });
}
