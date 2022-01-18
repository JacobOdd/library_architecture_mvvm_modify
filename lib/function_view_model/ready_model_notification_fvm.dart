
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/model_notification_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain_ext_for_notification.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyModelNotificationFVM
{
  static Future<Response<bool,BaseException>> pushNotificationToZonedScheduleThereIsParameterFVM(
      BaseViewModel baseViewModel,
      ModelNotificationDataSource notificationModelDataSource) async
  {
      var object = baseViewModel
          .getModelDomain(EnumBaseModelDomainObjectOperationViewModel.pushNotificationToZonedScheduleThereIsParameter);
      Response<bool, LocalException> response = Response.exception(
          LocalException(constDeveloper,"NoBaseModelDomainExtForNotification")
      );
      if(object is BaseModelDomainExtForNotification) {
        response = await notificationModelDataSource
            .pushNotificationToZonedScheduleThereIsParameterDataSource(
            object.toBaseModelDomainNotification()
        );
      }
      if(response.isSuccessResponse) {
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }

  static Future<Response<bool,BaseException>> pushNotificationToShowThereIsParameterFVM(
      BaseViewModel baseViewModel,
      ModelNotificationDataSource notificationModelDataSource) async
  {
    var object = baseViewModel.getModelDomain(
        EnumBaseModelDomainObjectOperationViewModel.pushNotificationToShowThereIsParameter);
      Response<bool, LocalException> response = Response.exception(
          LocalException(constDeveloper,"NoBaseModelDomainExtForNotification")
      );
      if(object is BaseModelDomainExtForNotification) {
        response = await notificationModelDataSource
            .pushNotificationToShowThereIsParameterDataSource(
            object.toBaseModelDomainNotification()
        );
      }
      if(response.isSuccessResponse) {
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }

  static Future<Response<bool,BaseException>> cancelNotificationThereIsParameterFVM(
      BaseViewModel baseViewModel,
      ModelNotificationDataSource notificationModelDataSource) async
  {
      var response = await notificationModelDataSource
          .cancelNotificationThereIsParameterDataSource(
          baseViewModel.getModelDomain(
              EnumBaseModelDomainObjectOperationViewModel.cancelNotificationThereIsParameter
          )
       );
      if(response.isSuccessResponse) {
        return Response.success(true);
      } else {
        return Response.exception(response.getException);
      }
  }
}