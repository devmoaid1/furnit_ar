import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:furnit_ar/core/api/firebase_api_service.dart';
import 'package:furnit_ar/core/errors/exceptions.dart';

class FirebaseApiConsumer implements FirebaseApiService {
  final FirebaseFirestore firestore;

  FirebaseApiConsumer({required this.firestore});
  @override
  Future<void> addData(String collectionName, Map<String, dynamic> data) async {
    try {
      firestore.collection(collectionName).add(data);
    } catch (err) {
      throw const ServerException();
    }
  }

  @override
  Future<void> deleteData(String collectionName, String docId) async {
    try {
      await firestore.collection(collectionName).doc(docId).delete();
    } catch (err) {
      throw const ServerException();
    }
  }

  @override
  Future<List<Map<String, dynamic>>> getDataByAttribute(
      String collectionName, String attribute, value) async {
    try {
      List<Map<String, dynamic>> docs = List.empty(growable: true);
      final fetchedDocs = await firestore
          .collection(collectionName)
          .where(attribute, isEqualTo: value)
          .get();

      for (var fetchedDoc in fetchedDocs.docs) {
        docs.add(fetchedDoc.data());
      }
      return docs;
    } catch (err) {
      throw const ServerException();
    }
  }

  @override
  Future<Map<String, dynamic>> getDataByDocId(
      String collectionName, String docId) async {
    try {
      final fetchedDoc =
          await firestore.collection(collectionName).doc(docId).get();

      final doc = fetchedDoc.data();
      return doc!;
    } catch (err) {
      throw const ServerException();
    }
  }

  @override
  Future<List<Map<String, dynamic>>> getAll(
    String collectionName,
  ) async {
    try {
      List<Map<String, dynamic>> docs = List.empty(growable: true);
      final fetchedDocs = await firestore.collection(collectionName).get();

      for (var fetchedDoc in fetchedDocs.docs) {
        docs.add(fetchedDoc.data());
      }
      return docs;
    } catch (err) {
      throw const ServerException();
    }
  }
}
