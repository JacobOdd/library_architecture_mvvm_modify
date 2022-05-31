import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/enum_domain.dart';

class ListEnumDomain extends BaseListModelDomain<ListEnumDomain,EnumDomain> {
  ListEnumDomain(List<EnumDomain> listModelDomain) : super(listModelDomain);

  @override
  ListEnumDomain cloneObject() {
    return ListEnumDomain(getListModelDomain);
  }
}