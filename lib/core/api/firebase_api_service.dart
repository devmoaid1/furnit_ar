abstract class FirebaseApiService {
  Future<void> addData(String collectionName, Map<String, dynamic> data);
  Future<List<Map<String, dynamic>>> getDataByAttribute(
      String collectionName, String attribute, dynamic value);
  Future<Map<String, dynamic>> getDataByDocId(
      String collectionName, String docId);
  Future<List<Map<String, dynamic>>> getAll(String collectionName);
  Future<void> deleteData(String collectionName, String docId);
}
