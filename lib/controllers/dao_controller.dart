import 'package:app_clean_arch/data/dao/database.dart';
import 'package:app_clean_arch/domain/business/dao_workflow.dart';
import 'package:app_clean_arch/domain/models/entry.dart';

import '../data/dao/entry_dao.dart';

class DaoController implements DaoWorkflow {
  Future<EntryDao> createDatabase() async {
    final database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    final EntryDao entryDao = database.entryDao;
    return entryDao;
  }

  @override
  Future<void> deleteEntry({required Entry entry}) {
    throw UnimplementedError();
  }

  @override
  Future<List<Entry>> getSavedEntries() {
    throw UnimplementedError();
  }

  @override
  Future<void> saveEntry({required Entry entry}) {
    throw UnimplementedError();
  }
}
