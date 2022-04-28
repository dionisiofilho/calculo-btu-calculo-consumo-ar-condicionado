import 'package:calculo_ar_condicionado/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../colors_app.dart';

abstract class BaseStateful<T extends StatefulWidget> extends State<T> {
  void showViewBottomSheet(Widget view) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return view;
        });
  }

  void showError(String message) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Expanded(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          LocaleProvider.current.error,
                          style: TextStyle(color: ColorsApp.colorPrimary),
                        ),
                      ),
                      Text(message),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          OutlinedButton(
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all(
                                      ColorsApp.colorPrimary)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(LocaleProvider.current.ok)),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }
}
