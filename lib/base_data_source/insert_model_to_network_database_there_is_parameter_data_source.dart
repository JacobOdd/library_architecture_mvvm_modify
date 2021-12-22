
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/network_model.dart';
import 'package:library_architecture_mvvm_modify/base_response/response.dart';

abstract class InsertModelToNetworkDatabaseThereIsParameterDataSource<T extends NetworkModel> {
  Future<Response<bool,BaseException>> insertModelToNetworkDatabaseThereIsParameter(T model);
}