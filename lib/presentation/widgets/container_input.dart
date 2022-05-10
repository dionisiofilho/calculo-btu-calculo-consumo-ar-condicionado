import 'package:calculo_ar_condicionado/resources/styles_app.dart';
import 'package:flutter/material.dart';

class ContainerInput extends StatefulWidget {
  const ContainerInput(
      {Key? key, required this.hint, required this.input, this.paddingTop = 10})
      : super(key: key);

  final double paddingTop;
  final String hint;
  final TextFormField input;

  @override
  _ContainerInputState createState() => _ContainerInputState();
}

class _ContainerInputState extends State<ContainerInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.paddingTop),
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.hint,
              style: StyleApp.hintInput,
              textAlign: TextAlign.start,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: widget.input,
        )
      ]),
    );
  }
}
