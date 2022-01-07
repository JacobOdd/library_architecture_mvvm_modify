
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_local_model.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class GetModelFromLocalDatabaseThereIsParameterDataSource<
              T extends BaseLocalModel>
{
  Future<Response<T,LocalException>> getModelFromLocalDatabaseThereIsParameterDataSource(BaseTypeParameter parameter);
}