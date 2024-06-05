import 'dart:convert';
import 'dart:io';

import 'package:ecommerce/src/data/helpers/process_status_response.dart';
import 'package:ecommerce/src/data/local/preferences/local_preferences.dart';
import 'package:ecommerce/src/domain/constants/constants.dart';
import 'package:ecommerce/src/domain/enums/http_enum/http_enum.dart';
import 'package:ecommerce/src/domain/enums/status_enum/status_enum.dart';
import 'package:ecommerce/src/domain/models/response_model/response_model.dart';
import 'package:ecommerce/src/domain/response/response.dart';
import 'package:ecommerce/src/utils/load_url.dart';
import 'package:http/http.dart' as http;

Future<Response> httpClient(
    {required String url,
    required HttpEnum petitionType,
    bool? header,
    Object? params,
    bool? isImg,
    bool? useExternarUrl,
    File? image,
    List<Map<String, String>>? textFields}) async {
  // print(image!.path);
  switch (petitionType) {
    // Petición get
    case HttpEnum.get:
      try {
        http.Response resp = await http.get(
          useExternarUrl == null
              ? Uri.parse(LoadUrl().urlApi + url)
              : Uri.parse(url),
          headers: header != null
              ? {
                  'Authorization':
                      'Bearer ${LocalPreferences.preferences.getString(prefTokenLogin)}',
                  'Accept': '*/*',
                }
              : {
                  'Accept': '*/*',
                  'Content-Type': 'application/json',
                },
        );

        return Response(
          responseModel: ResponseModel(
            statusEnum: processStatusResponse(statusCode: resp.statusCode),
            contentResponse:
                isImg != null ? resp.bodyBytes : utf8.decode(resp.bodyBytes),
          ),
        );
      } catch (e) {
        return Response(
          responseModel: ResponseModel(
            statusEnum: StatusEnum.errorResponse,
            contentResponse: e.toString(),
          ),
        );
      }

    // Petición post
    case HttpEnum.post:
      try {
        http.Response resp = await http.post(
          Uri.parse(LoadUrl().urlApi + url),
          body: json.encode(params),
          headers: header != null
              ? {
                  'Content-Type': 'application/json',
                  'Authorization':
                      'Bearer ${LocalPreferences.preferences.getString(prefTokenLogin)}',
                }
              : {
                  'Content-Type': 'application/json',
                },
        );

        return Response(
          responseModel: ResponseModel(
            statusEnum: processStatusResponse(statusCode: resp.statusCode),
            contentResponse: utf8.decode(resp.bodyBytes),
          ),
        );
      } catch (e) {
        return Response(
          responseModel: ResponseModel(
            statusEnum: StatusEnum.errorResponse,
            contentResponse: e.toString(),
          ),
        );
      }

    // petición put
    case HttpEnum.put: // flutter create --platforms web .
      try {
        http.Response resp = await http.put(
          Uri.parse(LoadUrl().urlApi + url),
          headers: header != null
              ? {
                  'Authorization':
                      'Bearer ${LocalPreferences.preferences.getString(prefTokenLogin)}',
                  'Content-Type': 'application/json',
                }
              : {
                  'Content-Type': 'application/json',
                },
          body: json.encode(params),
        );

        return Response(
          responseModel: ResponseModel(
            statusEnum: processStatusResponse(statusCode: resp.statusCode),
            contentResponse: utf8.decode(resp.bodyBytes),
          ),
        );
      } catch (e) {
        return Response(
          responseModel: ResponseModel(
            statusEnum: StatusEnum.errorResponse,
            contentResponse: e.toString(),
          ),
        );
      }

    // patch
    case HttpEnum.patch:
      try {
        http.Response resp = await http.patch(
          Uri.parse(LoadUrl().urlApi + url),
          headers: header != null
              ? {
                  'Authorization':
                      'Bearer ${LocalPreferences.preferences.getString(prefTokenLogin)}',
                  'Content-Type': 'application/json',
                }
              : {},
          body: json.encode(params),
        );

        return Response(
          responseModel: ResponseModel(
            statusEnum: processStatusResponse(statusCode: resp.statusCode),
            contentResponse: utf8.decode(resp.bodyBytes),
          ),
        );
      } catch (e) {
        return Response(
          responseModel: ResponseModel(
            statusEnum: StatusEnum.errorResponse,
            contentResponse: e.toString(),
          ),
        );
      }

    case HttpEnum.postWitText:
      final headers = header != null
          ? {
              'Authorization':
                  'Bearer ${LocalPreferences.preferences.getString(prefTokenLogin)}',
              'Accept': '*/*',
            }
          : {
              'Accept': '*/*',
              'Content-Type': 'application/json',
            };

      try {
        var request =
            http.MultipartRequest('POST', Uri.parse(LoadUrl().urlApi + url))
              ..headers.addAll(headers)
              ..files.add(http.MultipartFile(
                'image',
                image!.readAsBytes().asStream(),
                image.lengthSync(),
                filename: image.path.split('/').last,
              ));

        if (textFields != null && textFields.isNotEmpty) {
          for (var field in textFields) {
            request.fields[field.keys.first] = field.values.first;
          }
        }

        var response = await http.Response.fromStream(await request.send());

        print(response.body);
        print(response.reasonPhrase);

        return Response(
          responseModel: ResponseModel(
            statusEnum: processStatusResponse(statusCode: response.statusCode),
            contentResponse: utf8.decode(response.bodyBytes),
          ),
        );
      } catch (e) {
        return Response(
          responseModel: ResponseModel(
            statusEnum: StatusEnum.errorResponse,
            contentResponse: e.toString(),
          ),
        );
      }
  }
}
