// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_widget/base_array_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_single_widget/base_single_widget.dart';
import 'package:library_architecture_mvvm_modify/custom_widget/empty_list_widget.dart';

enum SelectedStreamBuilderWidget {
  SINGLE_WIDGET_USE_STREAM_MODEL_DOMAIN,
  SINGLE_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN,
}

//ignore: must_be_immutable
class StreamBuilderWidget<T extends BaseModelDomain> extends StatelessWidget
{
  // all constructor (interface_function_view_model)
  final SelectedStreamBuilderWidget _enumSelectedStreamWidget;

  BaseSingleWidget _baseSingleWidget;
  BaseArrayWidget _baseArrayWidget;
  Stream<List<T>> _streamListModelDomain;
  Future<List<T>> _futureListModelDomain;
  Stream<T> _streamModelDomain;

  // all constructor (not interface_function_view_model)
  ProgressIndicator _progressIndicator = const CircularProgressIndicator();
  StatelessWidget _emptyListWidget = const EmptyListWidget("Empty Text");

  StreamBuilderWidget.singleWidgetUseStreamModelDomain(
      this._baseSingleWidget,
      this._streamModelDomain
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_MODEL_DOMAIN;

  StreamBuilderWidget.singleWidgetUseStreamListModelDomain(
      this._baseSingleWidget,
      this._streamListModelDomain
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN;

  StreamBuilderWidget.arrayWidgetUseStreamModelDomain(
      this._baseArrayWidget,
      this._streamModelDomain,
      [this._emptyListWidget,
        this._progressIndicator]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN;
  
  StreamBuilderWidget.arrayWidgetUseStreamListModelDomain(
      this._baseArrayWidget,
      this._streamListModelDomain,
      [this._emptyListWidget,
        this._progressIndicator]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN;
  
  StreamBuilderWidget.arrayWidgetUseStreamModelDomainAndStreamListModelDomain(
      this._baseArrayWidget,
      this._streamModelDomain,
      this._streamListModelDomain,
      [this._emptyListWidget,
        this._progressIndicator]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN;

  StreamBuilderWidget.arrayWidgetUseStreamListModelDomainAndStreamModelDomain(
      this._baseArrayWidget,
      this._streamListModelDomain,
      this._streamModelDomain,
      [this._emptyListWidget,
        this._progressIndicator]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN;

  StreamBuilderWidget.arrayWidgetUseFutureListModelDomainAndStreamModelDomain(
      this._baseArrayWidget,
      this._futureListModelDomain,
      this._streamModelDomain,
      [this._emptyListWidget,
        this._progressIndicator]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN;
  
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    switch(_enumSelectedStreamWidget) {
      case SelectedStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_MODEL_DOMAIN:
        return _buildSingleWidgetUseStreamBuilderModelDomain(themeData);
      case SelectedStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN:
        return _buildSingleWidgetUseStreamBuilderListModelDomain(themeData);  
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN:
        return _buildArrayWidgetUseStreamBuilderModelDomain(themeData);
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN:
        return _buildArrayWidgetUseStreamBuilderListModelDomain(themeData);
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN:
         return _buildArrayWidgetUseStreamBuilderModelDomainAndStreamBuilderListModelDomain(themeData);
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN:
        return _buildArrayWidgetUseStreamBuilderListModelDomainAndStreamBuilderModelDomain(themeData);
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN:
        return _buildArrayWidgetUseFutureBuilderListModelDomainAndStreamBuilderModelDomain(themeData);
      default: return _buildArrayWidgetUseStreamBuilderListModelDomain(themeData);
    }
  }

  Widget _buildSingleWidgetUseStreamBuilderModelDomain(ThemeData themeData) {
    return StreamBuilder<T>(
        stream: _streamModelDomain,
        builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
        {
          if(asyncSnapshot.hasData) {
            T domainModel = asyncSnapshot.data;

            return _baseSingleWidget.buildSingleWidgetUsingTheModelDomain(context, domainModel);
          }
          return Container();
        }
    );
  }

  Widget _buildSingleWidgetUseStreamBuilderListModelDomain(ThemeData themeData) {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> asyncSnapshot)
        {
          if(asyncSnapshot.hasData) {
            List<T> domainListModel = asyncSnapshot.data ?? List.empty();

            return _baseSingleWidget.buildSingleWidgetUsingAList(
                context,
                domainListModel
            );
          }
          return Container();
        }
    );
  }
  
  Widget _buildArrayWidgetUseStreamBuilderModelDomain(ThemeData themeData) {
    return StreamBuilder<T>(
        stream: _streamModelDomain,
        builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
        {
          if(asyncSnapshot.hasData) {
            T domainModel = asyncSnapshot.data;

            return _baseArrayWidget.buildArrayWidgetAndBelongsBaseItemWidget(
                  context,
                  domainModel);
          }

          return _progressIndicator;
        }
    );
  }

  Widget _buildArrayWidgetUseStreamBuilderListModelDomain(ThemeData themeData) {
    return StreamBuilder<List<T>>(
      stream: _streamListModelDomain,
      builder: (BuildContext context, AsyncSnapshot<List<T>> asyncSnapshot)
      {
        if(asyncSnapshot.hasData) {
          List<T> domainListModel = asyncSnapshot.data ?? List.empty();

          if(domainListModel.isEmpty) {
            return _emptyListWidget;
          }
          return _baseArrayWidget.buildArrayWidgetAndBelongsBaseItemWidgetOrBaseItemAndArrayWidget(
                context,
                domainListModel
            );
        }
        return _progressIndicator;
      }
    );
  }

  Widget _buildArrayWidgetUseStreamBuilderModelDomainAndStreamBuilderListModelDomain(ThemeData themeData) {
    return StreamBuilder<T>(
        stream: _streamModelDomain,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshot)
        {
          return StreamBuilder<List<T>>(
                 stream: _streamListModelDomain,
                 builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
          {
            if(listModelAsyncSnapshot.hasData) {
              List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

              if(domainListModel.isEmpty) {
                return _emptyListWidget;
              }
              if(modelAsyncSnapshot.hasData) {
                T modelDomain = modelAsyncSnapshot.data;
                return _baseArrayWidget.buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
                    context,
                    domainListModel,
                    modelDomain
                );
              }
            }
            return _progressIndicator;
          });
        });
  }

  Widget _buildArrayWidgetUseStreamBuilderListModelDomainAndStreamBuilderModelDomain(ThemeData themeData) {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return StreamBuilder<T>(
              stream: _streamModelDomain,
              builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshot)
              {
                if(listModelAsyncSnapshot.hasData) {
                  List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

                  if(domainListModel.isEmpty) {
                    return _emptyListWidget;
                  }

                  if(modelAsyncSnapshot.hasData) {
                    T domainModel = modelAsyncSnapshot.data;
                    return _baseArrayWidget.buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
                        context,
                        domainListModel,
                        domainModel
                    );
                  }
                }
                return _progressIndicator;
              });
        });
  }
  
  Widget _buildArrayWidgetUseFutureBuilderListModelDomainAndStreamBuilderModelDomain(ThemeData themeData) {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return StreamBuilder<T>(
              stream: _streamModelDomain,
              builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshot)
              {
                if(listModelAsyncSnapshot.hasData) {
                  List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

                  if(domainListModel.isEmpty) {
                    return _emptyListWidget;
                  }

                  if(modelAsyncSnapshot.hasData) {
                    T domainModel = modelAsyncSnapshot.data;
                    return _baseArrayWidget.buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
                        context,
                        domainListModel,
                        domainModel
                    );
                  }
                }
                return _progressIndicator;
              });
        });
  }
}
