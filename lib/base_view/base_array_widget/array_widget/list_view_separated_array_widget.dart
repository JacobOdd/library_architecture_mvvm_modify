
import 'package:flutter/widgets.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_widget/base_array_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_two_model_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget.dart';


class ListViewSeparatedArrayWidget extends BaseArrayWidget
{
  final BaseItemWidget _baseItemWidget;
  ListViewSeparatedArrayWidget(this._baseItemWidget);

  @override
  BoxScrollView buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<DomainModel> list,
      DomainModel model)
  {
      return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          DomainModel item = list[index];
          BaseItemTwoModelWidget baseItemTwoModelWidget = _baseItemWidget;
          baseItemTwoModelWidget.setModel = item;
          baseItemTwoModelWidget.setTwoModel = model;
          return baseItemTwoModelWidget;
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 15.0,
          );
        },
      );
  }

  @override
  Widget buildArrayWidgetAndBelongsBaseItemWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<DomainModel> list)
  {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        DomainModel item = list[index];
        _baseItemWidget.setModel = item;
        return _baseItemWidget;
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 15.0,
        );
      },
    );
  }

  @override
  Widget buildArrayWidgetAndBelongsBaseItemWidget(
      BuildContext context,
      DomainModel model)
  {
    _baseItemWidget.setModel = model;
    return _baseItemWidget;
  }

}