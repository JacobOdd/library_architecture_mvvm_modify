import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_fvufvm_specifically_yes_tip_yes_ns.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_list_model_domain_for_ln_database_fvm.dart';

class DeleteModelToListModelDomainForLNDatabaseFVUFVM
    extends BaseFVUFVMSpecificallyYesTIPYesNS<DeleteModelToListModelDomainForLNDatabaseFVM,BaseModelDomain>
{
  @override
  void notifyStream(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel) {
    baseViewModel.notifyStreamModel(EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter);
    baseViewModel.notifyStreamModel(EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter);
  }

  @override
  void setObject(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel, BaseModelDomain object) {
    beforeCodeIsCheckTypeBaseModelDomainAndAlsoUsedFunctionSetModelDomain(baseViewModel,
        object,
        EnumBaseModelDomainVM.deleteModelToNetworkDatabaseThereIsParameter);
    beforeCodeIsCheckTypeBaseModelDomainAndAlsoUsedFunctionSetModelDomain(baseViewModel,
        object,
        EnumBaseModelDomainVM.deleteModelToLocalDatabaseThereIsParameter);
  }

  @override
  Future<void> mainMethod(DeleteModelToListModelDomainForLNDatabaseFVM mainMethod, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async {
    FunctionViewModel.deleteModelToListModelDomainForLNDatabaseFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
  }

}