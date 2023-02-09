import 'package:googleapis/firestore/v1.dart';

import '../configs/constants.dart';
import '../models/firestore_document.dart';
import '../models/user_model.dart';
import '../utils/my_print.dart';
import 'client_controller.dart';
import 'firestore_controller.dart';

class UserController {
  Future<UserModel?> getUserModelFromFirestore(String userid) async {
    String collection = "users";
    String document = "0EHGQDcHNMx4EflYRqGj";
    if(collection == "users" && document.isNotEmpty) {
      try {
        FirestoreDocument? document = await FirestoreController().getDocument(USERS_COLLECTION, userid);

        if(document != null) {
          //MyPrint.printOnConsole("Data:${document.data}");
          UserModel? usermodel = (document.data?.isNotEmpty ?? false) ? UserModel.elasticFromMap(document.data!) : null;
          //MyPrint.printOnConsole("UserModel:${usermodel}");
          return usermodel;
        }
      }
      catch(e) {
        print("Error in Getting Data from Firestore:${e}");
      }
    }
  }
}