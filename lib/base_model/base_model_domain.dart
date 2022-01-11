import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_network_database.dart';

abstract class BaseModelDomain {
  String uniqueId = "";

  BaseModelLocalDatabase toModelLocalDatabase();
  BaseModelNetworkDatabase toModelNetworkDatabase();
  
  set setUniqueId(String uniqueId)  {
    this.uniqueId = uniqueId;
  }
}