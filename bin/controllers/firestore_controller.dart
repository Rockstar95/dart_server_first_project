

import 'package:googleapis/firestore/v1.dart';

import '../models/firestore_document.dart';
import '../utils/my_print.dart';
import 'client_controller.dart';

class FirestoreController {
  Future<FirestoreDocument?> getDocument(String collection, String document) async {
    MyPrint.printOnConsole("Get Document Called for $collection and $document");

    try {
      final api = FirestoreApi(ClientController().authClient!);
      Document doc = await api.projects.databases.documents.get("projects/sportiwe-dev/databases/(default)/documents/$collection/$document");
      MyPrint.printOnConsole("Doc:${doc}");
      Map<String, dynamic> data = FirestoreDocument.getValueFromValueObject(Value(mapValue: MapValue(fields: doc.fields ?? {})));
      FirestoreDocument firestoreDocument = FirestoreDocument(
        path: doc.name,
        data: data,
        createTime: FirestoreDocument.getValueFromValueObject(Value(timestampValue: doc.createTime)),
        updateTime: FirestoreDocument.getValueFromValueObject(Value(timestampValue: doc.updateTime)),
      );
      return firestoreDocument;
    }
    catch(e) {
      MyPrint.printOnConsole("Error in FirestoreController().getDocument():${e}");
    }
  }
}