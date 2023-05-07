// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailFormState {
  FormModel get form => throw _privateConstructorUsedError;
  List<QuestionModel> get listQuestion => throw _privateConstructorUsedError;
  bool get listIsLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailFormStateCopyWith<DetailFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailFormStateCopyWith<$Res> {
  factory $DetailFormStateCopyWith(
          DetailFormState value, $Res Function(DetailFormState) then) =
      _$DetailFormStateCopyWithImpl<$Res, DetailFormState>;
  @useResult
  $Res call(
      {FormModel form, List<QuestionModel> listQuestion, bool listIsLoading});

  $FormModelCopyWith<$Res> get form;
}

/// @nodoc
class _$DetailFormStateCopyWithImpl<$Res, $Val extends DetailFormState>
    implements $DetailFormStateCopyWith<$Res> {
  _$DetailFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? listQuestion = null,
    Object? listIsLoading = null,
  }) {
    return _then(_value.copyWith(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as FormModel,
      listQuestion: null == listQuestion
          ? _value.listQuestion
          : listQuestion // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      listIsLoading: null == listIsLoading
          ? _value.listIsLoading
          : listIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormModelCopyWith<$Res> get form {
    return $FormModelCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailFormStateCopyWith<$Res>
    implements $DetailFormStateCopyWith<$Res> {
  factory _$$_DetailFormStateCopyWith(
          _$_DetailFormState value, $Res Function(_$_DetailFormState) then) =
      __$$_DetailFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormModel form, List<QuestionModel> listQuestion, bool listIsLoading});

  @override
  $FormModelCopyWith<$Res> get form;
}

/// @nodoc
class __$$_DetailFormStateCopyWithImpl<$Res>
    extends _$DetailFormStateCopyWithImpl<$Res, _$_DetailFormState>
    implements _$$_DetailFormStateCopyWith<$Res> {
  __$$_DetailFormStateCopyWithImpl(
      _$_DetailFormState _value, $Res Function(_$_DetailFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? listQuestion = null,
    Object? listIsLoading = null,
  }) {
    return _then(_$_DetailFormState(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as FormModel,
      listQuestion: null == listQuestion
          ? _value._listQuestion
          : listQuestion // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
      listIsLoading: null == listIsLoading
          ? _value.listIsLoading
          : listIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DetailFormState implements _DetailFormState {
  _$_DetailFormState(
      {required this.form,
      final List<QuestionModel> listQuestion = const [],
      this.listIsLoading = true})
      : _listQuestion = listQuestion;

  @override
  final FormModel form;
  final List<QuestionModel> _listQuestion;
  @override
  @JsonKey()
  List<QuestionModel> get listQuestion {
    if (_listQuestion is EqualUnmodifiableListView) return _listQuestion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listQuestion);
  }

  @override
  @JsonKey()
  final bool listIsLoading;

  @override
  String toString() {
    return 'DetailFormState(form: $form, listQuestion: $listQuestion, listIsLoading: $listIsLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailFormState &&
            (identical(other.form, form) || other.form == form) &&
            const DeepCollectionEquality()
                .equals(other._listQuestion, _listQuestion) &&
            (identical(other.listIsLoading, listIsLoading) ||
                other.listIsLoading == listIsLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form,
      const DeepCollectionEquality().hash(_listQuestion), listIsLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailFormStateCopyWith<_$_DetailFormState> get copyWith =>
      __$$_DetailFormStateCopyWithImpl<_$_DetailFormState>(this, _$identity);
}

abstract class _DetailFormState implements DetailFormState {
  factory _DetailFormState(
      {required final FormModel form,
      final List<QuestionModel> listQuestion,
      final bool listIsLoading}) = _$_DetailFormState;

  @override
  FormModel get form;
  @override
  List<QuestionModel> get listQuestion;
  @override
  bool get listIsLoading;
  @override
  @JsonKey(ignore: true)
  _$$_DetailFormStateCopyWith<_$_DetailFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
