import 'package:flutter/cupertino.dart';

class CenterHorizontal extends StatelessWidget {
  const CenterHorizontal({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Flexible(child: child)]);
  }
}
