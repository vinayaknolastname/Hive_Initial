abstract class HiveDataSourceFunctions {
  Future<void> saveIsSoundPlaying(bool value);
  Future<bool> getIsSoundPlaying();
}

class HiveDataSourceFunctionsImpl extends HiveDataSourceFunctions {
  @override
  Future<void> saveIsSoundPlaying(bool value) async {
    await getIt.get<LocalStorage>().writeData(
        boxName: HiveBox.user, key: HiveKeys.isAudioPlaying, value: value);
  }

  @override
  Future<bool> getIsSoundPlaying() async {
    return await getIt
        .get<LocalStorage>()
        .readData(boxName: HiveBox.user, key: HiveKeys.isAudioPlaying);
    // TODO: implement getIsSoundPlaying
    // throw UnimplementedError();
  }
}
