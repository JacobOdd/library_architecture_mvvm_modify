import 'package:library_architecture_mvvm_modify/base_dispose.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_network_database.dart';

abstract class BaseModelDomain implements BaseDispose {
  String uniqueId;
  BaseModelDomain(this.uniqueId);

  BaseModelLocalDatabase toBaseModelLocalDatabase();
  BaseModelNetworkDatabase toBaseModelNetworkDatabase();

  ///
  ///   Using example:
  ///
  ///   class PersonDomain extends BaseModelDomain {
  ///     String name;
  ///     int age;
  ///
  ///     Person({String uniqueId,this.name,this.age}) : super(uniqueId);
  ///
  ///     PersonDomain cloneObjectForCBFVM() {
  ///        return PersonDomain(uniqueId: uniqueId, name: name, age: age);
  ///     }
  ///   }
  ///
  ///
  BaseModelDomain cloneObjectForCBFVM();
}