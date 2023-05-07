// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_forms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListFormsState {
  List<FormModel> get listForms => throw _privateConstructorUsedError;
  bool get listIsLoading => throw _privateConstructorUsedError;
  Map<String, List<FormModel>> get mapListForms =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListFormsStateCopyWith<ListFormsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListFormsStateCopyWith<$Res> {
  factory $ListFormsStateCopyWith(
          ListFormsState value, $Res Function(ListFormsState) then) =
      _$ListFormsStateCopyWithImpl<$Res, ListFormsState>;
  @useResult
  $Res call(
      {List<FormModel> listForms,
      bool listIsLoading,
      Map<String, List<FormModel>> mapListForms});
}

/// @nodoc
class _$ListFormsStateCopyWithImpl<$Res, $Val extends ListFormsState>
    implements $ListFormsStateCopyWith<$Res> {
  _$ListFormsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listForms = null,
    Object? listIsLoading = null,
    Object? mapListForms = null,
  }) {
    return _then(_value.copyWith(
      listForms: null == listForms
          ? _value.listForms
          : listForms // ignore: cast_nullable_to_non_nullable
              as List<FormModel>,
      listIsLoading: null == listIsLoading
          ? _value.listIsLoading
          : listIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      mapListForms: null == mapListForms
          ? _value.mapListForms
          : mapListForms // ignore: cast_nullable_to_non_nullable
              as Map<String, List<FormModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListFormsStateCopyWith<$Res>
    implements $ListFormsStateCopyWith<$Res> {
  factory _$$_ListFormsStateCopyWith(
          _$_ListFormsState value, $Res Function(_$_ListFormsState) then) =
      __$$_ListFormsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FormModel> listForms,
      bool listIsLoading,
      Map<String, List<FormModel>> mapListForms});
}

/// @nodoc
class __$$_ListFormsStateCopyWithImpl<$Res>
    extends _$ListFormsStateCopyWithImpl<$Res, _$_ListFormsState>
    implements _$$_ListFormsStateCopyWith<$Res> {
  __$$_ListFormsStateCopyWithImpl(
      _$_ListFormsState _value, $Res Function(_$_ListFormsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listForms = null,
    Object? listIsLoading = null,
    Object? mapListForms = null,
  }) {
    return _then(_$_ListFormsState(
      listForms: null == listForms
          ? _value._listForms
          : listForms // ignore: cast_nullable_to_non_nullable
              as List<FormModel>,
      listIsLoading: null == listIsLoading
          ? _value.listIsLoading
          : listIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      mapListForms: null == mapListForms
          ? _value._mapListForms
          : mapListForms // ignore: cast_nullable_to_non_nullable
              as Map<String, List<FormModel>>,
    ));
  }
}

/// @nodoc

class _$_ListFormsState implements _ListFormsState {
  _$_ListFormsState(
      {final List<FormModel> listForms = const [],
      this.listIsLoading = true,
      final Map<String, List<FormModel>> mapListForms = const {}})
      : _listForms = listForms,
        _mapListForms = mapListForms;

  final List<FormModel> _listForms;
  @override
  @JsonKey()
  List<FormModel> get listForms {
    if (_listForms is EqualUnmodifiableListView) return _listForms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listForms);
  }

  @override
  @JsonKey()
  final bool listIsLoading;
  final Map<String, List<FormModel>> _mapListForms;
  @override
  @JsonKey()
  Map<String, List<FormModel>> get mapListForms {
    if (_mapListForms is EqualUnmodifiableMapView) return _mapListForms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mapListForms);
  }

  @override
  String toString() {
    return 'ListFormsState(listForms: $listForms, listIsLoading: $listIsLoading, mapListForms: $mapListForms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListFormsState &&
            const DeepCollectionEquality()
                .equals(other._listForms, _listForms) &&
            (identical(other.listIsLoading, listIsLoading) ||
                other.listIsLoading == listIsLoading) &&
            const DeepCollectionEquality()
                .equals(other._mapListForms, _mapListForms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listForms),
      listIsLoading,
      const DeepCollectionEquality().hash(_mapListForms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListFormsStateCopyWith<_$_ListFormsState> get copyWith =>
      __$$_ListFormsStateCopyWithImpl<_$_ListFormsState>(this, _$identity);
}

abstract class _ListFormsState implements ListFormsState {
  factory _ListFormsState(
      {final List<FormModel> listForms,
      final bool listIsLoading,
      final Map<String, List<FormModel>> mapListForms}) = _$_ListFormsState;

  @override
  List<FormModel> get listForms;
  @override
  bool get listIsLoading;
  @override
  Map<String, List<FormModel>> get mapListForms;
  @override
  @JsonKey(ignore: true)
  _$$_ListFormsStateCopyWith<_$_ListFormsState> get copyWith =>
      throw _privateConstructorUsedError;
}
