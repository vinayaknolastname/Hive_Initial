part of local_storage;

class Caching extends LocalStorage {
  // Read data from a box
  @override
  Future<T?> readData<T>({
    required String boxName,
    required String key,
  }) async {
    final box = await _getBoxByName(boxName);
    final encodedString = await box!.get(key);
    if (encodedString != null) {
      T? decodedData = json.decode(encodedString);
      return decodedData;
    } else {
      return null;
    }
  }
}
