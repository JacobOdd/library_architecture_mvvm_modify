import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class GetListModelFromNetworkDatabaseThereIsParameterDataSourceAndUpdateListModelToLocalDatabaseThereIsParameterDataSource {
  Future<Response<int,BaseException>> getListModelFromNetworkDatabaseThereIsParameterDataSourceAndUpdateListModelToLocalDatabaseThereIsParameterDataSource(
      BaseTypeParameter parameter
      );
}