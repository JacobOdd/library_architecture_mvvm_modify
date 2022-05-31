import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/delete_list_model_to_named_database_there_is_parameter_used_provider_base_list_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/delete_model_to_named_database_there_is_parameter_used_provider_base_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/insert_list_model_to_named_database_there_is_parameter_used_provider_base_list_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/insert_model_to_named_database_there_is_parameter_used_provider_base_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/update_list_model_to_named_database_there_is_parameter_used_provider_base_list_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/update_model_to_named_database_there_is_parameter_used_provider_base_model_domain_cidbuacbfvm.dart';
import '../../model/user/list_user_domain.dart';
import '../../model/user/list_user_sqflite_database.dart';
import '../../model/user/user_ctnm/converter_to_list_user_sqflite_database.dart';
import '../../model/user/user_ctnm/converter_to_user_sqflite_database.dart';
import '../../model/user/user_domain.dart';
import '../../model/user/user_sqflite_database.dart';
import '../../model_named_data_source/user_sqflite_database_data_source/user_sqflite_database_data_source.dart';

class UserSqfliteDatabaseViewModel extends BaseViewModel<UserDomain,ListUserDomain,UserSqfliteDatabase,ListUserSqfliteDatabase,UserSqfliteDatabaseDataSource> {
  UserSqfliteDatabaseViewModel(
      UserSqfliteDatabaseDataSource dataSource,
      List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM,
      InsertModelToNamedDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM<UserDomain> insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      InsertListModelToNamedDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM<UserDomain, ListUserDomain> insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
      UpdateModelToNamedDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM<UserDomain> updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      UpdateListModelToNamedDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM<UserDomain, ListUserDomain> updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
      DeleteModelToNamedDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM<UserDomain> deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      DeleteListModelToNamedDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM<UserDomain, ListUserDomain> deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM)
      : super(dataSource,
      listEnumBaseModelDomainVM,
      listEnumBaseListModelDomainVM,
      () => UserDomain.getDefaultUserDomain,
      () => ListUserDomain([]),
      ConverterToUserSqfliteDatabase(),
      ConverterToListUserSqfliteDatabase(),
      insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
      updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
      deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM);

  @override
  ListUserDomain cloneListModel(ListUserDomain listModel) {
    return ListUserDomain(listModel.getListModelDomain);
  }

  @override
  UserDomain cloneModel(UserDomain model) {
    return UserDomain(uniqueId: model.uniqueId,name: model.name);
  }
}