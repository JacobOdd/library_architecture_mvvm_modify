
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_local_list_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class GetListModelFromLocalDatabaseThereIsParameterDataSource<
              Y extends BaseLocalListModel,
              Z>
{
  Future<Response<Y,LocalException>> getListModelFromLocalDatabaseThereIsParameterDataSource(Z parameter);
}