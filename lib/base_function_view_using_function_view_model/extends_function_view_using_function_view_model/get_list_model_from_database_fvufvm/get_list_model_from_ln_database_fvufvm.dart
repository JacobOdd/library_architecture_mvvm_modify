import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_function_view_using_function_view_model/base_fvufvm_specifically_no_tip_yes_ns.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/function_view_model.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_ln_database_fvm.dart';

class GetListModelFromLNDatabaseFVUFVM
    extends BaseFVUFVMSpecificallyNoTIPYesNS<GetListModelFromLNDatabaseFVM>
{
  @override
  Future<void> mainMethod(GetListModelFromLNDatabaseFVM mainMethod, Function functionForResultSuccess, Function(DomainException p1) functionForResultDomainException, Function(LocalException p1) functionForResultLocalException, Function(NetworkException p1) functionForResultNetworkException) async
  {
    await FunctionViewModel
        .callToMethodGetListModelFromLNDatabaseAndUseTheSettersFVM(
        mainMethod,
        functionForResultSuccess,
        functionForResultDomainException,
        functionForResultLocalException,
        functionForResultNetworkException
    );
  }

  @override
  void notifyStream(BaseViewModel<BaseModelDomain, BaseListModelDomain<BaseModelDomain>> baseViewModel) {
    baseViewModel.notifyStreamListModelDomain(
        EnumBaseListModelDomainObjectOperationViewModel
            .getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter
    );
    baseViewModel.notifyStreamListModelDomain(
        EnumBaseListModelDomainObjectOperationViewModel
            .getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter
    );
  }

}