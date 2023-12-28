import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../services/local_storage.dart';
import '../../services/notifications_service.dart';

class ClientApi {
  static final Dio _dio = Dio();

  static void configureDio() {

    _dio.options.baseUrl = 'api.repliers.io';

    _dio.options.headers = {
      'x-token': LocalStorage.prefs.getString('token') ?? '',
      'REPLIERS-API-KEY': dotenv.get('REPLIERS-API-KEY')
    };

  }

  static Future httpGet( String path, Map<String, dynamic> queryParameters ) async {
    try {

      final resp = await _dio.get(path, queryParameters: {
      'pageNum': '1',
      'resultsPerPage': '15',
      'maxPrice': '2000000',
      'minPrice': '1500000',
      'type': 'sale',
      'hasImages': 'true',        
      });

      return resp.data;
      
    } on DioException catch (e) {
      //print(e.response);
      throw('Error db get $e');
    }
  }

  static Future post( String path, Map<String, dynamic> data ) async {

    final formData = FormData.fromMap(data);

    try {

      final resp = await _dio.post(path, data: formData);
      return resp.data;
      
    } on DioException catch (e) {
      //print(e.response?.data['errors'][0]['msg']);
      NotificationsService.showSnackBarError(e.response?.data['errors'][0]['msg']);
      throw('Error db post $e');
    }
  }

  static Future put( String path, Map<String, dynamic> data ) async {

    final formData = FormData.fromMap(data);

    try {

      final resp = await _dio.put(path, data: formData);

      return resp.data;
      

    } on DioException catch (e) {
      //print(e);
      throw('Error db put $e');
    }
  }

  static Future delete( String path, Map<String, dynamic> data ) async {

    final formData = FormData.fromMap(data);

    try {

      final resp = await _dio.delete(path, data: formData);

      return resp.data;
      
    } on DioException catch (e) {
      throw('Error db delete $e');
    }
  }


  static Future uploadFile( String path, Uint8List bytes ) async {

    final formData = FormData.fromMap({
      'archivo': MultipartFile.fromBytes(bytes)
    });

    try {

      final resp = await _dio.put(
        path, 
        data: formData
      );
      return resp.data;
      
    } on DioException catch (e) {
      //print(e);
      throw('Error db put $e');
    }
  }
}