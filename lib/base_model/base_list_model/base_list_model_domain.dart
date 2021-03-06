import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

class BaseListModelDomain<T extends BaseModelDomain> {
  List<T> _listModelDomain;
  BaseIterator<T> _iterator;

  BaseListModelDomain(this._listModelDomain);

  @nonVirtual
  List<T> get getListModelDomain {
    return _listModelDomain;
  }

  @nonVirtual
  set setParameterListModelDomain(List<T> listModelDomain) {
    _listModelDomain = listModelDomain;
  }
  
  @nonVirtual
  set setFromBaseListModelDomainParameterListModelDomain(BaseListModelDomain baseListModelDomain) {
    _listModelDomain = baseListModelDomain.getListModelDomain;
  }

  set _setParameterIterator(BaseIterator<T> iterator) {
    _iterator = iterator;
    _iterator.setParameterListModelDomain = _listModelDomain;
  }

  @nonVirtual
  Response<List<T>, BaseException> runIteratorForGetListModel(
      BaseTypeParameter<Enum> baseTypeParameterForBaseIterator, 
      Map<Enum,BaseIterator<T>> mapEnumAndBaseIterator)
  {
    if(mapEnumAndBaseIterator.isEmpty) {
      return Response.exception(LocalException(this,constDeveloper,"MapEnumAndBaseIterator isEmpty"));
    }
    int i = 0;
    Enum selectedEnum = baseTypeParameterForBaseIterator.getParameter;
    Enum itemEnumFirst = mapEnumAndBaseIterator.keys.first;
    for(Enum itemEnum in mapEnumAndBaseIterator.keys) {
      if (selectedEnum == itemEnum)
      {
        _setParameterIterator = mapEnumAndBaseIterator[itemEnum];
        break;
      }
      if (i >= (mapEnumAndBaseIterator.length-1)) {
        _setParameterIterator = mapEnumAndBaseIterator[itemEnumFirst];
        break;
      }
      i++;
    }
    _listModelDomain = _iterator.getSortedListModelDomain;
    return Response.success(_listModelDomain);
  }

  Response<bool, BaseException> insertListModelToGetListModel(List<T> insertListModel) {
    _listModelDomain.addAll(insertListModel);
    return Response.success(true);
  }
  
  Response<bool, BaseException> insertModelToGetListModel(T insertModel) {
    _listModelDomain.add(insertModel);
    return Response.success(true);
  }

  Response<bool, BaseException> updateListModelToGetListModel(List<T> updateListModel) {
    if(_listModelDomain.isEmpty) {
      return Response.exception(LocalException(this,constDeveloper,"ListModelDomain isEmpty"));
    }
    for(int i = 0; i < updateListModel.length; i++) {
      _listModelDomain[_listModelDomain.indexWhere((element) => element.uniqueId == updateListModel[i].uniqueId)] = updateListModel[i];
    }
    return Response.success(true);
  }

  Response<bool, BaseException> updateModelToGetListModel(T updateModel) {
    if(_listModelDomain.isEmpty) {
      return Response.exception(LocalException(this,constDeveloper,"ListModelDomain isEmpty"));
    }
    _listModelDomain[_listModelDomain.indexWhere((element) => element.uniqueId == updateModel.uniqueId)] = updateModel;
    return Response.success(true);
  }

  Response<bool, BaseException> deleteListModelToGetListModel(List<T> deleteListModelDomain) {
    if(_listModelDomain.isEmpty) {
      return Response.exception(LocalException(this,constDeveloper,"ListModelDomain isEmpty"));
    }
    List<T> deleteListModelDomainForDelete = List.empty(growable: true);
    for(int i = 0; i < _listModelDomain.length; i++) {
      for(int j = 0; j < deleteListModelDomain.length; j++) {
        if (_listModelDomain[i].uniqueId == deleteListModelDomain[j].uniqueId) {
          deleteListModelDomainForDelete.add(_listModelDomain[i]);
        }
      }
    }
    for(int i = 0; i < _listModelDomain.length; i++) {
      for(T deleteModelDomainForDelete in deleteListModelDomainForDelete) {
        if(_listModelDomain[i].uniqueId == deleteModelDomainForDelete.uniqueId) {
          _listModelDomain.removeAt(i);
        }
      }
    }
    return Response.success(true);
  }

  Response<bool, BaseException> deleteModelToGetListModel(T deleteModel) {
    if(_listModelDomain.isEmpty) {
      return Response.exception(LocalException(this,constDeveloper,"ListModelDomain isEmpty"));
    }
    _listModelDomain.removeWhere((item) => item.uniqueId == deleteModel.uniqueId);
    return Response.success(true);
  }
}