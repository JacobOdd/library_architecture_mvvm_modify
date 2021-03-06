import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/delete_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/insert_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_list_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/abstract_classes_function_before_data_source/update_model_to_named_database_fbds.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import '../../model/user/ctmnd/converter_to_list_user_sqflite_database.dart';
import '../../model/user/ctmnd/converter_to_user_sqflite_database.dart';
import '../../model/user/list_user_domain.dart';
import '../../model/user/list_user_sqflite_database.dart';
import '../../model/user/user_domain.dart';
import '../../model/user/user_sqflite_database.dart';
import '../user_named_database_view_model.dart';

class UserSqfliteDatabaseViewModel<U extends BaseTypeParameter> extends UserNamedDatabaseViewModel<UserSqfliteDatabase,ListUserSqfliteDatabase,U> {
  UserSqfliteDatabaseViewModel(
      Object dataSource,
      InsertModelToNamedDatabaseFBDS<UserDomain> insertModelToNamedDatabaseFBDS,
      InsertListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> insertListModelToNamedDatabaseFBDS,
      UpdateModelToNamedDatabaseFBDS<UserDomain> updateModelToNamedDatabaseFBDS,
      UpdateListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> updateListModelToNamedDatabaseFBDS,
      DeleteModelToNamedDatabaseFBDS<UserDomain> deleteModelToNamedDatabaseFBDS,
      DeleteListModelToNamedDatabaseFBDS<UserDomain, ListUserDomain> deleteListModelToNamedDatabaseFBDS)
      : super(dataSource,
      ConverterToUserSqfliteDatabase(),
      ConverterToListUserSqfliteDatabase(),
      insertModelToNamedDatabaseFBDS,
      insertListModelToNamedDatabaseFBDS,
      updateModelToNamedDatabaseFBDS,
      updateListModelToNamedDatabaseFBDS,
      deleteModelToNamedDatabaseFBDS,
      deleteListModelToNamedDatabaseFBDS);
}