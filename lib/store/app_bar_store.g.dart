// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bar_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppBarStore on _AppBarStore, Store {
  late final _$scrollOffsetAtom =
      Atom(name: '_AppBarStore.scrollOffset', context: context);

  @override
  double get scrollOffset {
    _$scrollOffsetAtom.reportRead();
    return super.scrollOffset;
  }

  @override
  set scrollOffset(double value) {
    _$scrollOffsetAtom.reportWrite(value, super.scrollOffset, () {
      super.scrollOffset = value;
    });
  }

  late final _$_AppBarStoreActionController =
      ActionController(name: '_AppBarStore', context: context);

  @override
  void setScrollOffset(double offset) {
    final _$actionInfo = _$_AppBarStoreActionController.startAction(
        name: '_AppBarStore.setScrollOffset');
    try {
      return super.setScrollOffset(offset);
    } finally {
      _$_AppBarStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
scrollOffset: ${scrollOffset}
    ''';
  }
}
