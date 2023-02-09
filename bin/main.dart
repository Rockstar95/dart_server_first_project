import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;

import 'controllers/client_controller.dart';
import 'handlers.dart';
import 'models/user_model.dart';
import 'utils/my_print.dart';

const gcpProjectIdEnvironmentVariables = {
  'GCP_PROJECT',
  'GCLOUD_PROJECT',
  'CLOUDSDK_CORE_PROJECT',
  'GOOGLE_CLOUD_PROJECT',
};



Future<void> main(List<String> arguments) async {
  HttpServer server;

  try {
    server = await HttpServer.bind(InternetAddress.loopbackIPv4, 4404);
    //server = await HttpServer.bind("localhost", 4404);
  } catch (e) {
    print("Couldn't bind to port 4044: $e");
    exit(-1);
  }
  print('Listening on http://${server.address.address}:${server.port}/');

  await ClientController().initClient("AIzaSyBhCWbPsgTlsWP0GiZBSYrl3yfdPlBZ7oA");
  print("Got Client:${ClientController().authClient}");

  await for (HttpRequest req in server) {
    req.response.headers.contentType = ContentType.json;
    //CORS Header, so the anybody can use this
    req.response.headers.add('Access-Control-Allow-Origin', '*', preserveHeaderCase: true,);

    try {
      print("Requested Method:${req.method}");
      print("Requested Uri:${req.uri.path}");

      //To Get Parameters
      print("Requested Uri Data:${req.uri.queryParameters}");

      //TO Get Body
      List<Uint8List> list = await req.asBroadcastStream().toList();
      Uint8List? bodyData = (list.isEmpty) ? null : list.first;
      print("Requested Body:$bodyData}");
      String? bodyString = bodyData != null ? utf8.decode(bodyData) : null;
      print("Requested Body:$bodyString");

      //Map<String, dynamic> body = Map.castFrom(jsonDecode(bodyString ?? ""));

      //0EHGQDcHNMx4EflYRqGj

      print("Requested Parameters:${req.uri.queryParameters}}");

      http.Response response = await handleRequest(req.method, req.uri.path, req.uri.queryParameters, bodyString);

      req.response.statusCode = response.statusCode;
      req.response.write(response.body);
    } catch (e) {
      print('Something went wrong: $e');
      req.response.write("Something Went Wrong");
      req.response.statusCode = HttpStatus.internalServerError;
    }
    await req.response.close();
  }

  ClientController().authClient?.close();
  await server.close();
}