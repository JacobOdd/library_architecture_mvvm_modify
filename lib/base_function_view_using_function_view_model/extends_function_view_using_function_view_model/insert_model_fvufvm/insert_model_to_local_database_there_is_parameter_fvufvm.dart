import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_function_view_using_function_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view/there_is_parameter_for_methods_type_future_function_view.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_local_database_there_is_parameter_fvm.dart';

class InsertModelToLocalDatabaseThereIsParameterFVUFVM
    extends BaseFunctionViewUsingFunctionViewModel
    implements ThereIsParameterForMethodsTypeFutureFunctionView<InsertModelToLocalDatabaseThereIsParameterFVM,BaseModelDomain>
{
  @override
  Future<void> mainMethod(InsertModelToLocalDatabaseThereIsParameterFVM mainMethod, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    await FunctionViewModel.insertModelToLocalDatabaseThereIsParameterFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
  }

  @override
  Future<void> mainMethodAndNotifyStream(InsertModelToLocalDatabaseThereIsParameterFVM mainMethod, BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    await FunctionViewModel.insertModelToLocalDatabaseThereIsParameterFVM(
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
    baseViewModel.notifyStreamModelDomain(EnumBaseModelDomainObjectOperationViewModel.insertModelToLocalDatabaseThereIsParameter);
  }

  @override
  void setObject(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, BaseModelDomain object) {
    beforeCodeIsCheckTypeBaseModelDomainAndAlsoUsedFunctionSetModelDomain(baseViewModel,
        object,
        EnumBaseModelDomainObjectOperationViewModel.insertModelToLocalDatabaseThereIsParameter);
  }

  @override
  Future<void> setObjectAndMainMethod(InsertModelToLocalDatabaseThereIsParameterFVM mainMethod, BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, BaseModelDomain object, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    setObject(baseViewModel, object);
    await FunctionViewModel.insertModelToLocalDatabaseThereIsParameterFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
  }

  @override
  Future<void> setObjectAndMainMethodAndNotifyStream(InsertModelToLocalDatabaseThereIsParameterFVM mainMethod, BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, BaseModelDomain object, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    setObject(baseViewModel, object);
    await FunctionViewModel.insertModelToLocalDatabaseThereIsParameterFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
    notifyStream(baseViewModel);
  }

}