import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_fvufvmucne_specifically_yes_tip_yes_ns.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_type_parameter_for_get_model_ln_database_and_get_list_ln_database_vm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_model_from_database_there_is_parameter_fvm/get_model_from_ln_database_there_is_parameter_fvm.dart';

class GetModelFromLNDatabaseThereIsParameterFVUFVMUCNE
    extends BaseFVUFVMUCNESpecificallyYesTIPYesNS<GetModelFromLNDatabaseThereIsParameterFVM,BaseTypeParameter>
{
  @override
  Future<void> mainMethod(GetModelFromLNDatabaseThereIsParameterFVM mainMethod,
  {Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException})
  async {
    await FunctionViewModel.callToMethodGetModelFromLNDatabaseThereIsParameterAndUseTheSettersFVM(
        mainMethod,
        functionForResultSuccess: functionForResultSuccess,
        functionForResultDomainException: functionForResultDomainException,
        functionForResultLocalException: functionForResultLocalException,
        functionForResultNetworkException: functionForResultNetworkException
    );
  }

  @override
  void notifyStream(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel) {
    baseViewModel.notifyStreamModel(
        EnumBaseModelDomainVM.getModelFromNetworkDatabaseThereIsParameter
    );
    baseViewModel.notifyStreamModel(
        EnumBaseModelDomainVM.getModelFromLocalDatabaseThereIsParameter
    );
  }

  @override
  void setObject(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, BaseTypeParameter object) {
    baseViewModel.setBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(
        object,
        EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromNetworkDatabaseThereIsParameter
    );
    baseViewModel.setBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(
        object,
        EnumBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabaseVM.getModelFromLocalDatabaseThereIsParameter
    );
  }
}