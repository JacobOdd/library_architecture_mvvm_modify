

import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_local_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class GetListModelFromLocalDatabaseDataSource<Y extends BaseListLocalModel> {
  Future<Response<Y,LocalException>> getListModelFromLocalDatabaseDataSource();
}