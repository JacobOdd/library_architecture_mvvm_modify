import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_domain_model.dart';

abstract class BaseArrayWidget
{
  Widget buildArrayWidgetAndBelongsBaseItemWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<BaseDomainModel> list);

  Widget buildArrayWidgetAndBelongsBaseItemWidget(
      BuildContext context,
      BaseDomainModel model);

  Widget buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<BaseDomainModel> list,
      BaseDomainModel model);
}