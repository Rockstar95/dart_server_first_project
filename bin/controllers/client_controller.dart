import 'package:googleapis_auth/googleapis_auth.dart';
import 'package:http/http.dart' as http;

class ClientController {
  static ClientController? _instance;

  factory ClientController() {
    return _instance ??= ClientController._();
  }

  ClientController._();

  http.Client? authClient;

  Future<void> initClient(String apikey) async {
    authClient ??= clientViaApiKey(apikey);
  }
}