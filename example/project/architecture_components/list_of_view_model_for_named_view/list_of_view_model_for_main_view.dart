import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view/base_list_of_view_model_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/bool_domain_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model.dart';
import '../model/user/user_domain.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_all.dart';
import '../model_named_view_model/user_sqflite_database_view_model/user_sqflite_database_view_model_using_delete_for_all_delete_data.dart';

class ListOfViewModelForMainView extends BaseListOfViewModelForNamedView
{
  UserSqfliteDatabaseViewModelUsingAll _userSqfliteDatabaseViewModelUsingAll;
  UserSqfliteDatabaseViewModelUsingDeleteForAllDeleteData _userSqfliteDatabaseViewModelUsingDeleteForAllDeleteData;
  BoolDomainViewModel _boolDomainViewModelForLoading;

  ListOfViewModelForMainView() {
    _userSqfliteDatabaseViewModelUsingAll = UserSqfliteDatabaseViewModelUsingAll();
    _userSqfliteDatabaseViewModelUsingDeleteForAllDeleteData = UserSqfliteDatabaseViewModelUsingDeleteForAllDeleteData();
    _boolDomainViewModelForLoading = BoolDomainViewModel();
  }

  @override
  void dispose() {
    _userSqfliteDatabaseViewModelUsingAll.dispose();
    _userSqfliteDatabaseViewModelUsingDeleteForAllDeleteData.dispose();
    _boolDomainViewModelForLoading.dispose();
  }

  /// Start Stream/Future Methods **/


  /// End Stream/Future Methods **/

  Stream<List<UserDomain>> get getStreamListUserSqfliteDatabaseForUsingAllNamedGetList {
    return _userSqfliteDatabaseViewModelUsingAll.getStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
  }

  Stream<BoolDomain> get getStreamBoolDomainForLoadingNamedGet {
    return _boolDomainViewModelForLoading.getStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
  }

  /// Start Getters Methods **/


  /// End Getters Methods **/

  /// Start Setters Methods **/

  set setBoolDomainForLoadingNamedGet(bool isLoading) {
    _boolDomainViewModelForLoading.getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter)
        .field = isLoading;
  }

  /// End Setters Methods **/

  /* Other functions name any */

  Future<void> getListUserSqfliteDatabase() async {
    setBoolDomainForLoadingNamedGet = true;
    _boolDomainViewModelForLoading.notifyStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
    await FVM.getListModelFromNamedDatabaseFVM(
        _userSqfliteDatabaseViewModelUsingAll,
        functionForResultSuccess: () {
          List<UserDomain> _listUserDomain = _userSqfliteDatabaseViewModelUsingAll.getListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
          if(_listUserDomain.isEmpty) {
          }
          _userSqfliteDatabaseViewModelUsingAll.notifyStreamListModel(EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter);
        });
    setBoolDomainForLoadingNamedGet = false;
    _boolDomainViewModelForLoading.notifyStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
  }

}