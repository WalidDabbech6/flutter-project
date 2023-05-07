// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_question_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailQuestionState {
  QuestionModel get question => throw _privateConstructorUsedError;
  List<ChoiceModel> get listChoices => throw _privateConstructorUsedError;
  bool get listIsLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailQuestionStateCopyWith<DetailQuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailQuestionStateCopyWith<$Res> {
  factory $DetailQuestionStateCopyWith(
          DetailQuestionState value, $Res Function(DetailQuestionState) then) =
      _$DetailQuestionStateCopyWithImpl<$Res, DetailQuestionState>;
  @useResult
  $Res call(
      {QuestionModel question,
      List<ChoiceModel> listChoices,
      bool listIsLoading});

  $QuestionModelCopyWith<$Res> get question;
}

/// @nodoc
class _$DetailQuestionStateCopyWithImpl<$Res, $Val extends DetailQuestionState>
    implements $DetailQuestionStateCopyWith<$Res> {
  _$DetailQuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? listChoices = null,
    Object? listIsLoading = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionModel,
      listChoices: null == listChoices
          ? _value.listChoices
          : listChoices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
      listIsLoading: null == listIsLoading
          ? _value.listIsLoading
          : listIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionModelCopyWith<$Res> get question {
    return $QuestionModelCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailQuestionStateCopyWith<$Res>
    implements $DetailQuestionStateCopyWith<$Res> {
  factory _$$_DetailQuestionStateCopyWith(_$_DetailQuestionState value,
          $Res Function(_$_DetailQuestionState) then) =
      __$$_DetailQuestionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QuestionModel question,
      List<ChoiceModel> listChoices,
      bool listIsLoading});

  @override
  $QuestionModelCopyWith<$Res> get question;
}

/// @nodoc
class __$$_DetailQuestionStateCopyWithImpl<$Res>
    extends _$DetailQuestionStateCopyWithImpl<$Res, _$_DetailQuestionState>
    implements _$$_DetailQuestionStateCopyWith<$Res> {
  __$$_DetailQuestionStateCopyWithImpl(_$_DetailQuestionState _value,
      $Res Function(_$_DetailQuestionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? listChoices = null,
    Object? listIsLoading = null,
  }) {
    return _then(_$_DetailQuestionState(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionModel,
      listChoices: null == listChoices
          ? _value._listChoices
          : listChoices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
      listIsLoading: null == listIsLoading
          ? _value.listIsLoading
          : listIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DetailQuestionState implements _DetailQuestionState {
  _$_DetailQuestionState(
      {required this.question,
      final List<ChoiceModel> listChoices = const [],
      this.listIsLoading = true})
      : _listChoices = listChoices;

  @override
  final QuestionModel question;
  final List<ChoiceModel> _listChoices;
  @override
  @JsonKey()
  List<ChoiceModel> get listChoices {
    if (_listChoices is EqualUnmodifiableListView) return _listChoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listChoices);
  }

  @override
  @JsonKey()
  final bool listIsLoading;

  @override
  String toString() {
    return 'DetailQuestionState(question: $question, listChoices: $listChoices, listIsLoading: $listIsLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailQuestionState &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality()
                .equals(other._listChoices, _listChoices) &&
            (identical(other.listIsLoading, listIsLoading) ||
                other.listIsLoading == listIsLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question,
      const DeepCollectionEquality().hash(_listChoices), listIsLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailQuestionStateCopyWith<_$_DetailQuestionState> get copyWith =>
      __$$_DetailQuestionStateCopyWithImpl<_$_DetailQuestionState>(
          this, _$identity);
}

abstract class _DetailQuestionState implements DetailQuestionState {
  factory _DetailQuestionState(
      {required final QuestionModel question,
      final List<ChoiceModel> listChoices,
      final bool listIsLoading}) = _$_DetailQuestionState;

  @override
  QuestionModel get question;
  @override
  List<ChoiceModel> get listChoices;
  @override
  bool get listIsLoading;
  @override
  @JsonKey(ignore: true)
  _$$_DetailQuestionStateCopyWith<_$_DetailQuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}
