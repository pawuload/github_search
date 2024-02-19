import 'package:flutter/material.dart';
import 'package:flutter_shakemywidget/flutter_shakemywidget.dart';
import 'package:utopia_arch/utopia_arch.dart';

class ShakeWrapper extends HookWidget{
  final bool shake;
  final Widget child;
  const ShakeWrapper({super.key, required this.child, required this.shake});

  @override
  Widget build(BuildContext context) {
    final key = useMemoized(GlobalKey<ShakeWidgetState>.new);

    useEffect(()  {
      if (shake){
        key.currentState?.shake();
      }
    }, [shake]);

    return ShakeMe(
      key: key,
      shakeOffset: 10,
      child: child,
    );
  }
}
