import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_function_view_using_function_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_type_parameter_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view/there_is_parameter_for_methods_type_future_function_view.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_there_is_parameter_fvm/get_list_model_from_network_database_there_is_parameter_fvm.dart';

class GetListModelFromNetworkDatabaseThereIsParameterFVUFVM extends BaseFunctionViewUsingFunctionViewModel
    implements ThereIsParameterForMethodsTypeFutureFunctionView<GetListModelFromNetworkDatabaseThereIsParameterFVM,BaseTypeParameter>
{
  @override
  Future<void> mainMethod(GetListModelFromNetworkDatabaseThereIsParameterFVM mainMethod, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    await FunctionViewModel
        .callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
  }

  @override
  Future<void> mainMethodAndNotifyStream(GetListModelFromNetworkDatabaseThereIsParameterFVM mainMethod, BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    await FunctionViewModel
        .callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
    notifyStream(baseViewModel);
  }

  @override
  void notifyStream(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel) {
    baseViewModel.notifyStreamListModelDomain(
        EnumBaseListModelDomainObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
    );
  }

  @override
  void setObject(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, BaseTypeParameter object) {
    baseViewModel.setBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(object,
        EnumBaseTypeParameterObjectOperationViewModel.getListModelFromNetworkDatabaseThereIsParameter
    );
  }

  @override
  Future<void> setObjectAndMainMethod(GetListModelFromNetworkDatabaseThereIsParameterFVM mainMethod, BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, BaseTypeParameter object, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    setObject(baseViewModel, object);
    await FunctionViewModel
        .callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
  }

  @override
  Future<void> setObjectAndMainMethodAndNotifyStream(GetListModelFromNetworkDatabaseThereIsParameterFVM mainMethod, BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, BaseTypeParameter object, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    setObject(baseViewModel, object);
    await FunctionViewModel
        .callToMethodGetListModelFromNetworkDatabaseThereIsParameterAndUseTheSettersFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
    notifyStream(baseViewModel);
  }

}