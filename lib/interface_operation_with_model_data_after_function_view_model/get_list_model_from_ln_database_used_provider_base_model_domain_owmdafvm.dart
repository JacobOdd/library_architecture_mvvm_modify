import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/interface_operation_with_model_data_after_function_view_model/provider_base_model_domain_owmdafvm.dart';

abstract class GetListModelFromLNDatabaseUsedProviderBaseModelDomainOWMDAFVM<T extends BaseModelDomain>
    implements ProviderBaseModelDomainOWMDAFVM<T>
{
  void callToMethodGetListModelFromLNDatabaseOWMDAFVM();
}