import 'dart:async';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/data_source.dart';
import 'package:library_architecture_mvvm_modify/base_dispose.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_type_parameter_for_get_model_named_database_and_get_list_named_database_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_type_parameter_for_iterator_for_list_model_named_database_vm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_list_model_fvm/delete_list_model_to_named_database_there_is_parameter_and_delete_list_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/delete_model_fvm/delete_model_to_named_database_there_is_parameter_and_delete_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_fvm/get_list_model_from_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_list_model_from_database_there_is_parameter_fvm/get_list_model_from_named_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/get_model_from_database_there_is_parameter_fvm/get_model_from_named_database_there_is_parameter_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_list_model_fvm/insert_list_model_to_named_database_there_is_parameter_and_insert_list_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/insert_model_fvm/insert_model_to_named_database_there_is_parameter_and_insert_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/iterator_for_list_model_database_fvm/iterator_for_list_model_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_list_model_fvm/update_list_model_to_named_database_there_is_parameter_and_update_list_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/update_model_fvm/update_model_to_named_database_there_is_parameter_and_update_model_to_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_iterator_for_base_list_model_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_list_model_domain_for_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/ready_model_named_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/delete_list_model_to_named_database_there_is_parameter_used_provider_base_list_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/delete_model_to_named_database_there_is_parameter_used_provider_base_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/insert_list_model_to_named_database_there_is_parameter_used_provider_base_list_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/insert_model_to_named_database_there_is_parameter_used_provider_base_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/update_list_model_to_named_database_there_is_parameter_used_provider_base_list_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_check_inputs_data_by_user_and_calculate_before_function_view_model/update_model_to_named_database_there_is_parameter_used_provider_base_model_domain_cidbuacbfvm.dart';
import 'package:library_architecture_mvvm_modify/interface_converters_to_named_model/converter_to_base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/interface_converters_to_named_model/converter_to_base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:library_architecture_mvvm_modify/response_generic_bool_and_domain_exception.dart';

typedef ItemCreator<S> = S Function();

class BaseViewModel<T extends BaseModelDomain,Y extends BaseListModelDomain<T>>
    implements
        BaseDispose,
        IteratorForListModelNamedDatabaseFVM,
        GetListModelFromNamedDatabaseFVM,
        GetListModelFromNamedDatabaseThereIsParameterFVM,
        GetModelFromNamedDatabaseThereIsParameterFVM,
        InsertModelToNamedDatabaseThereIsParameterAndInsertModelToListModelDomainForNamedDatabaseFVM,
        UpdateModelToNamedDatabaseThereIsParameterAndUpdateModelToListModelDomainForNamedDatabaseFVM,
        DeleteModelToNamedDatabaseThereIsParameterAndDeleteModelToListModelDomainForNamedDatabaseFVM,
        InsertListModelToNamedDatabaseThereIsParameterAndInsertListModelToListModelDomainForNamedDatabaseFVM,
        UpdateListModelToNamedDatabaseThereIsParameterAndUpdateListModelToListModelDomainForNamedDatabaseFVM,
        DeleteListModelToNamedDatabaseThereIsParameterAndDeleteListModelToListModelDomainForNamedDatabaseFVM
{
  /* Init DataSource And Set Default Model Object */
  final DataSource _dataSource;
  final List<EnumBaseModelDomainVM> _listEnumBaseModelDomainVM;
  final List<EnumBaseListModelDomainVM> _listEnumBaseListModelDomainVM;
  final ItemCreator<T> _initCreatorBaseModelDomain;
  final ItemCreator<Y> _initCreatorBaseListModelDomain;

  /* CIDBUACBFVM */
  final InsertModelToNamedDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM<T> _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM;
  final InsertListModelToNamedDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM<Y> _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM;
  final UpdateModelToNamedDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM<T> _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM;
  final UpdateListModelToNamedDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM<Y> _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM;
  final DeleteModelToNamedDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM<T> _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM;
  final DeleteListModelToNamedDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM<Y> _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM;

  /* Converter To Model */
  final ConverterToBaseModelNamedDatabase<T> _converterToBaseModelNamedDatabase;
  final ConverterToBaseListModelNamedDatabase<Y> _converterToBaseListModelNamedDatabase;

  final Map<EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM,BaseTypeParameter> _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase = {
    EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getListModelFromNamedDatabaseThereIsParameter : BoolTypeParameter(true),
    EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getModelFromNamedDatabaseThereIsParameter : BoolTypeParameter(true)
  };
  Map<Enum,BaseIterator> _mapEnumAndBaseIterator = {};
  Map<EnumTypeParameterForIteratorForListModelNamedDatabaseVM,EnumTypeParameter> _mapEnumTypeParameterForIteratorForListModelNamedDatabaseVMAndEnumTypeParameter = {};
  Map<EnumBaseModelDomainVM,T> _mapEnumBaseModelDomainVMAndBaseModelDomain;
  Map<EnumBaseListModelDomainVM,Y> _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
  Map<EnumBaseModelDomainVM,StreamController<T>> _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _mapEnumBaseListModelDomainVMAndStreamControllerForList;

  BaseViewModel(
      this._dataSource,
      this._listEnumBaseModelDomainVM,
      this._listEnumBaseListModelDomainVM,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      this._converterToBaseModelNamedDatabase,
      this._converterToBaseListModelNamedDatabase,
      this._insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      this._insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
      this._updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      this._updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
      this._deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      this._deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM
      );

  BaseViewModel.forIterator(
      this._dataSource,
      this._listEnumBaseModelDomainVM,
      this._listEnumBaseListModelDomainVM,
      this._initCreatorBaseModelDomain,
      this._initCreatorBaseListModelDomain,
      this._mapEnumAndBaseIterator,
      this._mapEnumTypeParameterForIteratorForListModelNamedDatabaseVMAndEnumTypeParameter,
      this._converterToBaseModelNamedDatabase,
      this._converterToBaseListModelNamedDatabase,
      this._insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      this._insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
      this._updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      this._updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
      this._deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM,
      this._deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM,
      );

  @override
  void dispose() {
    _disposeForAnyMap(_mapEnumAndBaseIterator);
    _disposeForAnyMap(_mapEnumTypeParameterForIteratorForListModelNamedDatabaseVMAndEnumTypeParameter);
    _disposeForAnyMap(_mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase);
    _disposeForAnyMap(_mapEnumBaseModelDomainVMAndBaseModelDomain);
    _disposeForAnyMap(_mapEnumBaseListModelDomainVMAndBaseListModelDomain);
    _disposeForMapEnumAndStreamController(_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain);
    _disposeForMapEnumAndStreamController(_mapEnumBaseListModelDomainVMAndStreamControllerForList);
  }

  /// Start Abstract Methods **/

  @override
  Response<BaseTypeParameter, BaseException> callToMethodSetIteratorForListModeNamedDatabaseAndSetListModelNamedDatabaseUsingAnIteratorFVM() {
    return _baseCallToMethodSetIteratorForListModelNamedDatabaseAndSetListModelNamedDatabaseUsingAnIteratorFVM();
  }

  @override
  Future<Response<bool, BaseException>> callToMethodGetListModelFromNamedDatabaseAndUseTheSettersFVM() {
    return _baseCallToMethodGetListModelFromNamedDatabaseAndUseTheSettersFVM();
  }

  @override
  Future<Response<bool, BaseException>> callToMethodGetListModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM() {
    return _baseCallToMethodGetListModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM();
  }

  @override
  Future<Response<bool, BaseException>> callToMethodGetModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM() {
    return _baseCallToMethodGetModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM();
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> insertModelToNamedDatabaseThereIsParameterFVM() {
    return _baseInsertModelToNamedDatabaseThereIsParameterFVM();
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> insertListModelToNamedDatabaseThereIsParameterFVM() {
    return _baseInsertListModelToNamedDatabaseThereIsParameterFVM();
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> updateModelToNamedDatabaseThereIsParameterFVM() {
    return _baseUpdateModelToNamedDatabaseThereIsParameterFVM();
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> updateListModelToNamedDatabaseThereIsParameterFVM() {
    return _baseUpdateListModelToNamedDatabaseThereIsParameterFVM();
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> deleteModelToNamedDatabaseThereIsParameterFVM() {
    return _baseDeleteModelToNamedDatabaseThereIsParameterFVM();
  }

  @override
  Future<Response<BaseTypeParameter, BaseException>> deleteListModelToNamedDatabaseThereIsParameterFVM() {
    return _baseDeleteListModelToNamedDatabaseThereIsParameterFVM();
  }

  @override
  Response<BaseTypeParameter, BaseException> insertModelToListModelDomainForNamedDatabaseFVM() {
    return _baseInsertModelToListModelDomainForNamedDatabaseFVM();
  }

  @override
  Response<BaseTypeParameter, BaseException> insertListModelToListModelDomainForNamedDatabaseFVM() {
    return _baseInsertListModelToListModelDomainForNamedDatabaseFVM();
  }

  @override
  Response<BaseTypeParameter, BaseException> updateModelToListModelDomainForNamedDatabaseFVM() {
    return _baseUpdateModelToListModelDomainForNamedDatabaseFVM();
  }

  @override
  Response<BaseTypeParameter, BaseException> updateListModelToListModelDomainForNamedDatabaseFVM() {
    return _baseUpdateListModelToListModelDomainForNamedDatabaseFVM();
  }

  @override
  Response<BaseTypeParameter, BaseException> deleteModelToListModelDomainForNamedDatabaseFVM() {
    return _baseDeleteModelToListModelDomainForNamedDatabaseFVM();
  }

  @override
  Response<BaseTypeParameter, BaseException> deleteListModelToListModelDomainForNamedDatabaseFVM() {
    return _baseDeleteListModelToListModelDomainForNamedDatabaseFVM();
  }

  /// End Abstract Methods **/

  /// Start Methods Base/EnumTypeParameter **/

  void setBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabase(
      BaseTypeParameter baseTypeParameter,
      EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM operation)
  {
    _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase[operation] = baseTypeParameter;
  }

  void setBaseIteratorForEnum(
      BaseIterator baseIterator,
      Enum operation)
  {
    _mapEnumAndBaseIterator[operation] = baseIterator;
  }

  void setEnumTypeParameterForIteratorForListModelNamedDatabase(
      EnumTypeParameter enumTypeParameter,
      EnumTypeParameterForIteratorForListModelNamedDatabaseVM operation)
  {
    _mapEnumTypeParameterForIteratorForListModelNamedDatabaseVMAndEnumTypeParameter[operation] = enumTypeParameter;
  }

  BaseTypeParameter getBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabase(EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM operation)
  {
    return _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase[operation];
  }

  /// End Methods Base/EnumTypeParameter **/

  /// Start Methods Model **/

  T getModel(EnumBaseModelDomainVM operation) {
    return _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  void setModel(T newModel,EnumBaseModelDomainVM operation) {
    _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation] = newModel;
  }

  Future<T> getFutureModel(EnumBaseModelDomainVM operation) async {
    return _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation];
  }

  Stream<T> getStreamModel(EnumBaseModelDomainVM operation) {
    return _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation]?.stream;
  }
  
  void notifyStreamModel(EnumBaseModelDomainVM operation) {
    _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain[operation]?.add(
        _getMapEnumBaseModelDomainVMAndBaseModelDomain[operation]
    );
  }
  /// End Methods Model **/
  
  /// Start Methods ListModel **/

  List<T> getListModel(EnumBaseListModelDomainVM operation)  {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }

  void setListModel(List<T> newModel,EnumBaseListModelDomainVM operation) {
    _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].setListModelDomain = newModel;
  }

  Future<List<T>> getFutureListModel(EnumBaseListModelDomainVM operation) async {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain;
  }
  
  Stream<List<T>> getStreamListModel(EnumBaseListModelDomainVM operation) {
    return _getMapEnumBaseListModelDomainVMAndStreamControllerForList[operation].stream;
  }

  void notifyStreamListModel(EnumBaseListModelDomainVM operation) {
    _getMapEnumBaseListModelDomainVMAndStreamControllerForList[operation].add(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation].getListModelDomain
    );
  }

  @protected
  Y getBaseListModelDomain(EnumBaseListModelDomainVM operation) {
    return _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[operation];
  }

  /// End Methods ListModel **/

  /// Start ReadyIteratorForBaseListModelNamedDatabaseFVM

  Response<BaseTypeParameter,BaseException> _baseCallToMethodSetIteratorForListModelNamedDatabaseAndSetListModelNamedDatabaseUsingAnIteratorFVM()
  {
    return ReadyIteratorForBaseListModelNamedDatabaseFVM.callToMethodSetIteratorForListModelNamedDatabaseAndSetListModelNamedDatabaseUsingAnIteratorFVM(
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumTypeParameterForIteratorForListModelNamedDatabaseVMAndEnumTypeParameter[EnumTypeParameterForIteratorForListModelNamedDatabaseVM.getListModelFromNamedDatabaseThereIsParameter],
        _mapEnumAndBaseIterator);
  }

  /// End ReadyIteratorForBaseListModelNamedDatabaseFVM

  /// Start ReadyModelNamedDatabaseFVM

  Future<Response<bool,BaseException>> _baseCallToMethodGetListModelFromNamedDatabaseAndUseTheSettersFVM()
  {
    return ReadyModelNamedDatabaseFVM.callToMethodGetListModelFromNamedDatabaseAndUseTheSettersFVM(
        _dataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]);
  }

  Future<Response<bool,BaseException>> _baseCallToMethodGetListModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM()
  {
    return ReadyModelNamedDatabaseFVM.callToMethodGetListModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM(
        _dataSource,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter],
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase[EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getListModelFromNamedDatabaseThereIsParameter]);
  }

  Future<Response<bool,BaseException>> _baseCallToMethodGetModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM()
  {
    return ReadyModelNamedDatabaseFVM.callToMethodGetModelFromNamedDatabaseThereIsParameterAndUseTheSettersFVM(
        this,
        _dataSource,
        _mapEnumBaseTypeParameterVMAndBaseTypeParameterForGetModelFromNamedDatabaseAndGetListFromNamedDatabase[EnumBaseTypeParameterForGetModelNamedDatabaseAndGetListNamedDatabaseVM.getModelFromNamedDatabaseThereIsParameter]);
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertModelToNamedDatabaseThereIsParameterFVM() async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("null converterToBaseModelNamedDatabase");
    }
    ConverterToBaseModelNamedDatabase ctmnd = _converterToBaseModelNamedDatabase.cloneObject();
    BaseModelDomain model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.insertModelToNamedDatabaseThereIsParameter].cloneObject();
    if(_insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM != null) {
      InsertModelToNamedDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM cidbuacbfvm = _insertModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseModelDomainCIDBUACBFVM = model;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.insertModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmnd.setBaseModelDomainCTMLOrN = model;
        return await ReadyModelNamedDatabaseFVM.insertModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseModelNamedDatabase(),_dataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmnd.setBaseModelDomainCTMLOrN = model;
      return await ReadyModelNamedDatabaseFVM.insertModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseModelNamedDatabase(),_dataSource);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseInsertListModelToNamedDatabaseThereIsParameterFVM() async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("null converterToBaseListModelNamedDatabase");
    }
    ConverterToBaseListModelNamedDatabase ctmnd = _converterToBaseListModelNamedDatabase.cloneObject();
    BaseListModelDomain listModel = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.insertListModelToNamedDatabaseThereIsParameter].cloneObject();
    if(_insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM != null) {
      InsertListModelToNamedDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM cidbuacbfvm = _insertListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseListModelDomainCIDBUACBFVM = listModel;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.insertListModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmnd.setBaseListModelDomainCTMLOrN = listModel;
        return await ReadyModelNamedDatabaseFVM.insertListModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseListModelNamedDatabase(),_dataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmnd.setBaseListModelDomainCTMLOrN = listModel;
      return await ReadyModelNamedDatabaseFVM.insertListModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseListModelNamedDatabase(),_dataSource);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateModelToNamedDatabaseThereIsParameterFVM() async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("null converterToBaseModelNamedDatabase");
    }
    ConverterToBaseModelNamedDatabase ctmnd = _converterToBaseModelNamedDatabase.cloneObject();
    BaseModelDomain model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.updateModelToNamedDatabaseThereIsParameter].cloneObject();
    if(_updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM != null) {
      UpdateModelToNamedDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM cidbuacbfvm = _updateModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseModelDomainCIDBUACBFVM = model;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.updateModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmnd.setBaseModelDomainCTMLOrN = model;
        return await ReadyModelNamedDatabaseFVM.updateModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseModelNamedDatabase(),_dataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmnd.setBaseModelDomainCTMLOrN = model;
      return await ReadyModelNamedDatabaseFVM.updateModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseModelNamedDatabase(),_dataSource);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseUpdateListModelToNamedDatabaseThereIsParameterFVM() async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("null converterToBaseListModelNamedDatabase");
    }
    ConverterToBaseListModelNamedDatabase ctmnd = _converterToBaseListModelNamedDatabase.cloneObject();
    BaseListModelDomain listModel = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.updateListModelToNamedDatabaseThereIsParameter].cloneObject();
    if(_updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM != null) {
      UpdateListModelToNamedDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM cidbuacbfvm = _updateListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseListModelDomainCIDBUACBFVM = listModel;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.updateListModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmnd.setBaseListModelDomainCTMLOrN = listModel;
        return await ReadyModelNamedDatabaseFVM.updateListModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseListModelNamedDatabase(),_dataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmnd.setBaseListModelDomainCTMLOrN = listModel;
      return await ReadyModelNamedDatabaseFVM.updateListModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseListModelNamedDatabase(),_dataSource);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteModelToNamedDatabaseThereIsParameterFVM() async {
    if(_converterToBaseModelNamedDatabase == null) {
      return throw Exception("null converterToBaseModelNamedDatabase");
    }
    ConverterToBaseModelNamedDatabase ctmnd = _converterToBaseModelNamedDatabase.cloneObject();
    BaseModelDomain model = _getMapEnumBaseModelDomainVMAndBaseModelDomain[EnumBaseModelDomainVM.deleteModelToNamedDatabaseThereIsParameter].cloneObject();
    if(_deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM != null) {
      DeleteModelToNamedDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM cidbuacbfvm = _deleteModelToLNDatabaseThereIsParameterUsedProviderBaseModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseModelDomainCIDBUACBFVM = model;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.deleteModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmnd.setBaseModelDomainCTMLOrN = model;
        return await ReadyModelNamedDatabaseFVM.deleteModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseModelNamedDatabase(), _dataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmnd.setBaseModelDomainCTMLOrN = model;
      return await ReadyModelNamedDatabaseFVM.deleteModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseModelNamedDatabase(), _dataSource);
    }
  }

  Future<Response<BaseTypeParameter,BaseException>> _baseDeleteListModelToNamedDatabaseThereIsParameterFVM() async {
    if(_converterToBaseListModelNamedDatabase == null) {
      return throw Exception("null converterToBaseListModelNamedDatabase");
    }
    ConverterToBaseListModelNamedDatabase ctmnd = _converterToBaseListModelNamedDatabase.cloneObject();
    BaseListModelDomain listModel = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.deleteListModelToNamedDatabaseThereIsParameter].cloneObject();
    if(_deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM != null) {
      DeleteListModelToNamedDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM cidbuacbfvm = _deleteListModelToLNDatabaseThereIsParameterUsedProviderBaseListModelDomainCIDBUACBFVM.cloneObject();
      cidbuacbfvm.setBaseListModelDomainCIDBUACBFVM = listModel;

      BaseListModelDomain listModelFromDatabase = _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter].cloneObject();
      ResponseGenericBoolAndDomainException response = cidbuacbfvm.deleteListModelToLNDatabaseThereIsParameterCIDBUACBFVM(listModelFromDatabase.getListModelDomain);
      if(response.isSuccessResponse) {
        ctmnd.setBaseListModelDomainCTMLOrN = listModel;
        return await ReadyModelNamedDatabaseFVM.deleteListModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseListModelNamedDatabase(), _dataSource);
      } else {
        return Response.exception(response.getException);
      }
    } else {
      ctmnd.setBaseListModelDomainCTMLOrN = listModel;
      return await ReadyModelNamedDatabaseFVM.deleteListModelToNamedDatabaseThereIsParameterFVM(ctmnd.toBaseListModelNamedDatabase(), _dataSource);
    }
  }

  /// End ReadyModelNamedDatabaseFVM

  /// Start ReadyListModelDomainForNamedDatabaseFVM

  Response<BaseTypeParameter, BaseException> _baseInsertModelToListModelDomainForNamedDatabaseFVM() {
    return ReadyListModelDomainForNamedDatabaseFVM.insertModelToListModelDomainForNamedDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> _baseInsertListModelToListModelDomainForNamedDatabaseFVM() {
    return ReadyListModelDomainForNamedDatabaseFVM.insertListModelToListModelDomainForNamedDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> _baseUpdateModelToListModelDomainForNamedDatabaseFVM() {
    return ReadyListModelDomainForNamedDatabaseFVM.updateModelToListModelDomainForNamedDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> _baseUpdateListModelToListModelDomainForNamedDatabaseFVM() {
    return ReadyListModelDomainForNamedDatabaseFVM.updateListModelToListModelDomainForNamedDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> _baseDeleteModelToListModelDomainForNamedDatabaseFVM() {
    return ReadyListModelDomainForNamedDatabaseFVM.deleteModelToListModelDomainForNamedDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  Response<BaseTypeParameter, BaseException> _baseDeleteListModelToListModelDomainForNamedDatabaseFVM() {
    return ReadyListModelDomainForNamedDatabaseFVM.deleteListModelToListModelDomainForNamedDatabaseFVM(
        this,
        _getMapEnumBaseListModelDomainVMAndBaseListModelDomain[EnumBaseListModelDomainVM.getListModelFromNamedDatabaseThereIsParameterAndNoThereIsParameter]
    );
  }

  /// End ReadyListModelDomainForNamedDatabaseFVM

  Map<EnumBaseModelDomainVM,T> get _getMapEnumBaseModelDomainVMAndBaseModelDomain {
    if(_mapEnumBaseModelDomainVMAndBaseModelDomain != null) {
      return _mapEnumBaseModelDomainVMAndBaseModelDomain;
    }
    _mapEnumBaseModelDomainVMAndBaseModelDomain = _creationAndGetMapEnumBaseModelDomainVMAndBaseModelDomain();
    return _mapEnumBaseModelDomainVMAndBaseModelDomain;
  }

  Map<EnumBaseModelDomainVM,StreamController<T>> get _getMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain {
    if(_mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain != null) {
      return _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
    }
    _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain = _creationAndGetMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain();
    return _mapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain;
  }

  Map<EnumBaseListModelDomainVM,Y> get _getMapEnumBaseListModelDomainVMAndBaseListModelDomain {
    if(_mapEnumBaseListModelDomainVMAndBaseListModelDomain != null) {
      return _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
    }
    _mapEnumBaseListModelDomainVMAndBaseListModelDomain = _creationAndGetMapEnumBaseListModelDomainVMAndBaseListModelDomain();
    return _mapEnumBaseListModelDomainVMAndBaseListModelDomain;
  }

  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> get _getMapEnumBaseListModelDomainVMAndStreamControllerForList {
    if(_mapEnumBaseListModelDomainVMAndStreamControllerForList != null) {
      return _mapEnumBaseListModelDomainVMAndStreamControllerForList;
    }
    _mapEnumBaseListModelDomainVMAndStreamControllerForList = _creationAndGetMapEnumBaseListModelDomainVMAndStreamControllerForList();
    return _mapEnumBaseListModelDomainVMAndStreamControllerForList;
  }

  Map<EnumBaseModelDomainVM,T> _creationAndGetMapEnumBaseModelDomainVMAndBaseModelDomain() {
    _checkListToIsEmptyAndInsertEnumBaseModelDomainVMIfListEmpty(_listEnumBaseModelDomainVM);

    Map<EnumBaseModelDomainVM,T> map = {};
    for(EnumBaseModelDomainVM viewModelOperation in _listEnumBaseModelDomainVM) {
      map[viewModelOperation] = _initCreatorBaseModelDomain();
    }
    return map;
  }

  Map<EnumBaseModelDomainVM,StreamController<T>> _creationAndGetMapEnumBaseModelDomainVMAndStreamControllerForBaseModelDomain() {
    _checkListToIsEmptyAndInsertEnumBaseModelDomainVMIfListEmpty(_listEnumBaseModelDomainVM);

    Map<EnumBaseModelDomainVM,StreamController<T>> map = {};
    for(EnumBaseModelDomainVM viewModelOperation in _listEnumBaseModelDomainVM) {
      map[viewModelOperation] = StreamController<T>.broadcast();
    }
    return map;
  }
  
  Map<EnumBaseListModelDomainVM,Y> _creationAndGetMapEnumBaseListModelDomainVMAndBaseListModelDomain() {
    _checkListToIsEmptyAndInsertEnumBaseListModelDomainVMIfListEmpty(_listEnumBaseListModelDomainVM);

    Map<EnumBaseListModelDomainVM,Y> map = {};
    for(EnumBaseListModelDomainVM viewModelOperation in _listEnumBaseListModelDomainVM) {
      map[viewModelOperation] = _initCreatorBaseListModelDomain();
    }
    return map;
  }

  Map<EnumBaseListModelDomainVM,StreamController<List<T>>> _creationAndGetMapEnumBaseListModelDomainVMAndStreamControllerForList() {
    _checkListToIsEmptyAndInsertEnumBaseListModelDomainVMIfListEmpty(_listEnumBaseListModelDomainVM);

    Map<EnumBaseListModelDomainVM,StreamController<List<T>>> map = {};
    for(EnumBaseListModelDomainVM viewModelOperation in _listEnumBaseListModelDomainVM) {
      map[viewModelOperation] = StreamController<List<T>>.broadcast();
    }
    return map;
  }

  void _checkListToIsEmptyAndInsertEnumBaseModelDomainVMIfListEmpty(
      List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM)
  {
    if(listEnumBaseModelDomainVM.isEmpty) {
      for(EnumBaseModelDomainVM enumBaseListModelDomainVM in EnumBaseModelDomainVM.values) {
        listEnumBaseModelDomainVM.add(enumBaseListModelDomainVM);
      }
    }
  }

  void _checkListToIsEmptyAndInsertEnumBaseListModelDomainVMIfListEmpty(
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM)
  {
    if(listEnumBaseListModelDomainVM.isEmpty) {
      for(EnumBaseListModelDomainVM enumBaseListModelDomainVM in EnumBaseListModelDomainVM.values) {
        listEnumBaseListModelDomainVM.add(enumBaseListModelDomainVM);
      }
    }
  }

  void _disposeForAnyMap(Map map) {
    if(map != null) {
      if(map.isNotEmpty) {
        for (dynamic object in map.values) {
          if (object != null) {
            object = null;
          }
        }
        map.clear();
      }
      map = null;
    }
  }

  void _disposeForMapEnumAndStreamController(Map<Enum,StreamController> map) {
    if(map != null) {
      if(map.isNotEmpty) {
        for (StreamController streamController in map.values) {
          if (streamController != null) {
            if (!streamController.isClosed) {
              streamController.close();
            }
            streamController = null;
          }
        }
        map.clear();
      }
      map = null;
    }
  }
}