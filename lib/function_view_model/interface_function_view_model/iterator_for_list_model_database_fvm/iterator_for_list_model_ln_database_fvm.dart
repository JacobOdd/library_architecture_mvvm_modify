
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/iterator_for_list_model_database_fvm/iterator_for_list_model_local_database_fvm.dart';
import 'package:library_architecture_mvvm_modify/function_view_model/interface_function_view_model/iterator_for_list_model_database_fvm/iterator_for_list_model_network_database_fvm.dart';

abstract class IteratorForListModelLNDatabaseFVM
    implements
        IteratorForListModelLocalDatabaseFVM,
        IteratorForListModelNetworkDatabaseFVM
{
}