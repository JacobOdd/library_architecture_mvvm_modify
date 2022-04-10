import 'package:library_architecture_mvvm_modify/ability_to_clone.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/interface_check_before_function_view_model/provider_base_model_domain_cbfvm.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

abstract class GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM<T extends BaseModelDomain>
    implements ProviderBaseModelDomainCBFVM<T>,AbilityToClone<GetListModelFromLNDatabaseThereIsParameterUsedProviderBaseModelDomainCBFVM>
{
  ResponseGenericBoolAndDomainException callToMethodGetListModelFromLNDatabaseThereIsParameterCBFVM(List<BaseModelDomain> list);
}