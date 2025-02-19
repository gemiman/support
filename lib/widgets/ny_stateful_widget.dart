import 'package:flutter/cupertino.dart';
import '/controllers/controller.dart';
import '/controllers/ny_controller.dart';
import '/helpers/backpack.dart';
import '/nylo.dart';

/// StatefulWidget's include a [BaseController] to access from your child state.
abstract class NyStatefulWidget<T extends BaseController>
    extends StatefulWidget {
  /// Get the route [controller].
  late final T controller;

  /// State name
  final String? state;

  /// Child state
  final dynamic child;

  NyStatefulWidget(String? path, {Key? key, this.child})
      : state = path,
        super(key: key) {
    Nylo nylo = Backpack.instance.nylo();
    controller = nylo.getController(T) ?? NyController();
  }

  StatefulElement createElement() => StatefulElement(this);

  @override
  State<StatefulWidget> createState() {
    if (child == null) {
      throw UnimplementedError();
    }
    if (child is State) {
      return child!;
    }
    if (child is Function) {
      dynamic child = this.child();
      assert(child is State, "Child must be a State");
      if (child is State) {
        return child;
      }
    }
    throw UnimplementedError();
  }

  /// Returns data that's sent via the Navigator or [routeTo] method.
  dynamic data({String? key}) {
    if (this.controller.request == null) {
      return null;
    }
    return this.controller.request!.data(key: key);
  }

  /// Returns query params
  dynamic queryParameters() {
    if (this.controller.request == null) {
      return null;
    }
    return this.controller.request!.queryParameters();
  }
}
