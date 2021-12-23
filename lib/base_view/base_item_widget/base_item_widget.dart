import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';

//ignore: must_be_immutable
abstract class BaseItemWidget<
      T extends DomainModel>
    extends StatelessWidget
{
  T _model;

  T get getModel {
    return _model;
  }

  set setModel(T item) {
    _model = item;
  }
  
}