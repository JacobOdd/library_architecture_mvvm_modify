import 'package:flutter/widgets.dart';

abstract class BaseStateForView<T extends StatefulWidget>
    extends State<T> with WidgetsBindingObserver
{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }
  
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}