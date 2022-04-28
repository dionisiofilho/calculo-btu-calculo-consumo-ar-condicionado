// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'british_terninal_unit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BristishTerminalUnitStore on _BristishTerminalUnitStore, Store {
  final _$widthAtom = Atom(name: '_BristishTerminalUnitStore.width');

  @override
  int? get width {
    _$widthAtom.reportRead();
    return super.width;
  }

  @override
  set width(int? value) {
    _$widthAtom.reportWrite(value, super.width, () {
      super.width = value;
    });
  }

  final _$heightAtom = Atom(name: '_BristishTerminalUnitStore.height');

  @override
  int? get height {
    _$heightAtom.reportRead();
    return super.height;
  }

  @override
  set height(int? value) {
    _$heightAtom.reportWrite(value, super.height, () {
      super.height = value;
    });
  }

  final _$sunExposureLevelAtom =
      Atom(name: '_BristishTerminalUnitStore.sunExposureLevel');

  @override
  SunExpose? get sunExposureLevel {
    _$sunExposureLevelAtom.reportRead();
    return super.sunExposureLevel;
  }

  @override
  set sunExposureLevel(SunExpose? value) {
    _$sunExposureLevelAtom.reportWrite(value, super.sunExposureLevel, () {
      super.sunExposureLevel = value;
    });
  }

  final _$_BristishTerminalUnitStoreActionController =
      ActionController(name: '_BristishTerminalUnitStore');

  @override
  void setWidth(int width) {
    final _$actionInfo = _$_BristishTerminalUnitStoreActionController
        .startAction(name: '_BristishTerminalUnitStore.setWidth');
    try {
      return super.setWidth(width);
    } finally {
      _$_BristishTerminalUnitStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHeight(int height) {
    final _$actionInfo = _$_BristishTerminalUnitStoreActionController
        .startAction(name: '_BristishTerminalUnitStore.setHeight');
    try {
      return super.setHeight(height);
    } finally {
      _$_BristishTerminalUnitStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSunExposure(SunExpose sunExpose) {
    final _$actionInfo = _$_BristishTerminalUnitStoreActionController
        .startAction(name: '_BristishTerminalUnitStore.setSunExposure');
    try {
      return super.setSunExposure(sunExpose);
    } finally {
      _$_BristishTerminalUnitStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
width: ${width},
height: ${height},
sunExposureLevel: ${sunExposureLevel}
    ''';
  }
}
