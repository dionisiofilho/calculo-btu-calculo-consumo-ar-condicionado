import 'package:calculo_ar_condicionado/resources/styles_app.dart';
import 'package:flutter/material.dart';

class ButtonApp extends StatefulWidget {
  const ButtonApp({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final VoidCallback? onPressed;

  @override
  _ButtonAppState createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: OutlinedButton(
            onPressed: widget.onPressed,
            child: Text(
              widget.text,
              style: const TextStyle(color: Colors.white),
            ),
            style: StyleApp.buttonStyleAppPrimary),
      ),
    );
  }
}
