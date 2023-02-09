import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import 'controllers/firestore_controller.dart';
import 'controllers/user_controller.dart';
import 'main.dart';
import 'models/firestore_document.dart';
import 'models/user_model.dart';
import 'utils/my_print.dart';

Future<Response> handleRequest(String method, String path, Map<String, String> queryParameters, String? requestBody) async {
  Response response = Response("Not Found", HttpStatus.notFound);

  if(path == "/getUser") {
    response = await RequestHandlers().handleGetUser(method, path, queryParameters, requestBody);
  }
  else if(path == "/getDocument") {
    response = await RequestHandlers().handleGetDocument(method, path, queryParameters, requestBody);
  }

  return response;
}

class RequestHandlers {
  Future<Response> handleGetUser(String method, String path, Map<String, String> queryParameters, String? requestBody) async {
    if(method != "GET") {
      MyPrint.printOnConsole("Invalid Method");
      return Response("Invalid Method", HttpStatus.methodNotAllowed);
    }

    Response response = Response("Not Found", HttpStatus.notFound);

    String userid = queryParameters['userid']?.toString() ?? "";
    if(userid.isNotEmpty) {
      UserModel? userModel = await UserController().getUserModelFromFirestore(userid);
      if(userModel != null) {
        response = Response(jsonEncode(userModel.elasticToMap()), HttpStatus.ok);
      }
      else {
        response = Response(jsonEncode("User Not Found"), HttpStatus.notFound);
      }
    }
    else {
      MyPrint.printOnConsole("Invalid Input");
      response = Response("Invalid Input", HttpStatus.badRequest);
    }

    return response;
  }

  Future<Response> handleGetDocument(String method, String path, Map<String, String> queryParameters, String? requestBody) async {
    if(method != "GET") {
      MyPrint.printOnConsole("Invalid Method");
      return Response("Invalid Method", HttpStatus.methodNotAllowed);
    }

    Response response = Response("Not Found", HttpStatus.notFound);

    String collection = queryParameters['collection']?.toString() ?? "";
    String document = queryParameters['document']?.toString() ?? "";
    if(collection.isNotEmpty && document.isNotEmpty) {
      FirestoreDocument? firestoreDocument = await FirestoreController().getDocument(collection, document);
      if(firestoreDocument != null) {
        response = Response(jsonEncode(FirestoreDocument.fromClassToJson(firestoreDocument.toJson())), HttpStatus.ok);
      }
      else {
        response = Response(jsonEncode("Document Not Found"), HttpStatus.notFound);
      }
    }
    else {
      MyPrint.printOnConsole("Invalid Input");
      response = Response("Invalid Input", HttpStatus.badRequest);
    }

    return response;
  }
}