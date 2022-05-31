import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/string_domain.dart';

class ListStringDomain extends BaseListModelDomain<ListStringDomain,StringDomain> {
  ListStringDomain(List<StringDomain> listModelDomain) : super(listModelDomain);

  @override
  ListStringDomain cloneObject() {
    return ListStringDomain(getListModelDomain);
  }
}