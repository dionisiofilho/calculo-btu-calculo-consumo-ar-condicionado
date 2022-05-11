// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'british_terninal_unit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BristishTerminalUnitStore on _BristishTerminalUnitStore, Store {
  final _$sunExposureLevelAtom =
      Atom(name: '_BristishTerminalUnitStore.sunExposureLevel');

  @override
  SunExposure? get sunExposureLevel {
    _$sunExposureLevelAtom.reportRead();
    return super.sunExposureLevel;
  }

  @override
  set sunExposureLevel(SunExposure? value) {
    _$sunExposureLevelAtom.reportWrite(value, super.sunExposureLevel, () {
      super.sunExposureLevel = value;
    });
  }

  final _$_BristishTerminalUnitStoreActionController =
      ActionController(name: '_BristishTerminalUnitStore');

  @override
  dynamic setSunExposure(SunExposure exposure) {
    final _$actionInfo = _$_BristishTerminalUnitStoreActionController
        .startAction(name: '_BristishTerminalUnitStore.setSunExposure');
    try {
      return super.setSunExposure(exposure);
    } finally {
      _$_BristishTerminalUnitStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sunExposureLevel: ${sunExposureLevel}
    ''';
  }
}
