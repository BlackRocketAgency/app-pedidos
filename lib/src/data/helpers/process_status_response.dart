import 'package:ecommerce/src/domain/enums/status_enum/status_enum.dart';

StatusEnum processStatusResponse({required int statusCode}) {
  switch (statusCode) {
    case 200:
    case 201:
      return StatusEnum.successResponse;
    case 400:
    case 401:
      return StatusEnum.errorResponse;
    default:
      return StatusEnum.unknowResponse;
  }
}
