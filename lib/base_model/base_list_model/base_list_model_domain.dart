import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_network_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

abstract class BaseListModelDomain<T extends BaseModelDomain> {
  List<T> _listModelDomain = List.empty();
  BaseIterator _iterator;

  BaseListModelLocalDatabase toBaseListModelLocalDatabase();
  BaseListModelNetworkDatabase toBaseListModelNetworkDatabase();
  BaseListModelDomain cloneObjectForCBFVM();

  List<T> get getListModelDomain {
    return _listModelDomain;
  }

  set setListModelDomainFromBaseListModelDomain(BaseListModelDomain listModelDomain) {
    _listModelDomain = listModelDomain.getListModelDomain;
  }

  set setListModelDomain(List<T> list) {
    _listModelDomain = list;
  }

  set _setIterator(BaseIterator newIterator) {
    _iterator = newIterator;
    _iterator.setList = _listModelDomain;
  }

  Response<bool, BaseException> selectIteratorViaEnumTypeParameter(
      EnumTypeParameter enumTypeParameter,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator
      )
  {
    try {
      if(mapEnumAndBaseIterator.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"Map isEmpty"));
      }
      int i = 0;
      mapEnumAndBaseIterator.forEach((itemEnum, baseIterator) {
        if (enumTypeParameter.getParameter == itemEnum)
        {
          _setIterator = baseIterator;
        }
        i++;
        if (i >= mapEnumAndBaseIterator.length)
        {
          if (_iterator == null)
          {
            _setIterator = mapEnumAndBaseIterator[0];
          }
        }
      });
      if(_iterator != null) {
        _listModelDomain = _iterator.getSortedList;
      } else {
        return Response.exception(LocalException(constDeveloper,"Iterator equals null"));
      }
      return Response.success(true);
    } catch(e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  /* Start Using to Classes ReadyListModelDomainForLNDatabaseFVM */

  Response<bool, BaseException> insertListModelToListModelDomain(List<T> listModel)
  {
    try {
      _listModelDomain.addAll(listModel);
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }
  
  Response<bool, BaseException> insertModelToListModelDomain(T model)
  {
    try {
      _listModelDomain.add(model);
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> updateListModelToListModelDomain(List<T> listModel)
  {
    try {
      if (_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }

      for(int i = 0; i < listModel.length; i++) {
        _listModelDomain[_listModelDomain.indexWhere((element) => element.uniqueId == listModel[i].uniqueId)] = listModel[i];
      }
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> updateModelToListModelDomain(T model)
  {
    try {
      if (_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }
      _listModelDomain[_listModelDomain.indexWhere((element) => element.uniqueId == model.uniqueId)] = model;
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> deleteListModelToListModelDomain(List<T> listModel)
  {
    try {
      if(_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }

      for(int i = 0; i < _listModelDomain.length; i++) {
        for(int j = 0; j < listModel.length; j++) {
          if (_listModelDomain[i].uniqueId == listModel[j].uniqueId) {
            _listModelDomain.removeAt(i);
          }
        }
      }
      return Response.success(true);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  Response<bool, BaseException> deleteModelToListModelDomain(T model)
  {
    try {
      if(_listModelDomain.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"ListModelDomain isEmpty"));
      }

      for(int i = 0; i < _listModelDomain.length; i++) {
        if(_listModelDomain[i].uniqueId == model.uniqueId) {
          _listModelDomain.removeAt(i);
          return Response.success(true);
        }
      }
      return Response.exception(LocalException(constDeveloper,"ListModelDomain Not isEquals Parameter UniqueId"));
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

 /* End Using to Classes ReadyListModelDomainForLNDatabaseFVM */

}