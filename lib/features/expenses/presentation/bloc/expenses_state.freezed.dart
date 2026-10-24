// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExpensesState {

 LoadStatus get listStatus; LoadStatus get detailStatus; OperationStatus get operationStatus; List<Expense> get expenses; Expense? get selectedExpense; String? get listErrorMessage; String? get detailErrorMessage; String? get operationErrorMessage; String? get successMessage;
/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpensesStateCopyWith<ExpensesState> get copyWith => _$ExpensesStateCopyWithImpl<ExpensesState>(this as ExpensesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesState&&(identical(other.listStatus, listStatus) || other.listStatus == listStatus)&&(identical(other.detailStatus, detailStatus) || other.detailStatus == detailStatus)&&(identical(other.operationStatus, operationStatus) || other.operationStatus == operationStatus)&&const DeepCollectionEquality().equals(other.expenses, expenses)&&(identical(other.selectedExpense, selectedExpense) || other.selectedExpense == selectedExpense)&&(identical(other.listErrorMessage, listErrorMessage) || other.listErrorMessage == listErrorMessage)&&(identical(other.detailErrorMessage, detailErrorMessage) || other.detailErrorMessage == detailErrorMessage)&&(identical(other.operationErrorMessage, operationErrorMessage) || other.operationErrorMessage == operationErrorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,listStatus,detailStatus,operationStatus,const DeepCollectionEquality().hash(expenses),selectedExpense,listErrorMessage,detailErrorMessage,operationErrorMessage,successMessage);

@override
String toString() {
  return 'ExpensesState(listStatus: $listStatus, detailStatus: $detailStatus, operationStatus: $operationStatus, expenses: $expenses, selectedExpense: $selectedExpense, listErrorMessage: $listErrorMessage, detailErrorMessage: $detailErrorMessage, operationErrorMessage: $operationErrorMessage, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class $ExpensesStateCopyWith<$Res>  {
  factory $ExpensesStateCopyWith(ExpensesState value, $Res Function(ExpensesState) _then) = _$ExpensesStateCopyWithImpl;
@useResult
$Res call({
 LoadStatus listStatus, LoadStatus detailStatus, OperationStatus operationStatus, List<Expense> expenses, Expense? selectedExpense, String? listErrorMessage, String? detailErrorMessage, String? operationErrorMessage, String? successMessage
});


$ExpenseCopyWith<$Res>? get selectedExpense;

}
/// @nodoc
class _$ExpensesStateCopyWithImpl<$Res>
    implements $ExpensesStateCopyWith<$Res> {
  _$ExpensesStateCopyWithImpl(this._self, this._then);

  final ExpensesState _self;
  final $Res Function(ExpensesState) _then;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listStatus = null,Object? detailStatus = null,Object? operationStatus = null,Object? expenses = null,Object? selectedExpense = freezed,Object? listErrorMessage = freezed,Object? detailErrorMessage = freezed,Object? operationErrorMessage = freezed,Object? successMessage = freezed,}) {
  return _then(_self.copyWith(
listStatus: null == listStatus ? _self.listStatus : listStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,detailStatus: null == detailStatus ? _self.detailStatus : detailStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,operationStatus: null == operationStatus ? _self.operationStatus : operationStatus // ignore: cast_nullable_to_non_nullable
as OperationStatus,expenses: null == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as List<Expense>,selectedExpense: freezed == selectedExpense ? _self.selectedExpense : selectedExpense // ignore: cast_nullable_to_non_nullable
as Expense?,listErrorMessage: freezed == listErrorMessage ? _self.listErrorMessage : listErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,detailErrorMessage: freezed == detailErrorMessage ? _self.detailErrorMessage : detailErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,operationErrorMessage: freezed == operationErrorMessage ? _self.operationErrorMessage : operationErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseCopyWith<$Res>? get selectedExpense {
    if (_self.selectedExpense == null) {
    return null;
  }

  return $ExpenseCopyWith<$Res>(_self.selectedExpense!, (value) {
    return _then(_self.copyWith(selectedExpense: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExpensesState].
extension ExpensesStatePatterns on ExpensesState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpenseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpenseState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpenseState value)  $default,){
final _that = this;
switch (_that) {
case _ExpenseState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpenseState value)?  $default,){
final _that = this;
switch (_that) {
case _ExpenseState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LoadStatus listStatus,  LoadStatus detailStatus,  OperationStatus operationStatus,  List<Expense> expenses,  Expense? selectedExpense,  String? listErrorMessage,  String? detailErrorMessage,  String? operationErrorMessage,  String? successMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpenseState() when $default != null:
return $default(_that.listStatus,_that.detailStatus,_that.operationStatus,_that.expenses,_that.selectedExpense,_that.listErrorMessage,_that.detailErrorMessage,_that.operationErrorMessage,_that.successMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LoadStatus listStatus,  LoadStatus detailStatus,  OperationStatus operationStatus,  List<Expense> expenses,  Expense? selectedExpense,  String? listErrorMessage,  String? detailErrorMessage,  String? operationErrorMessage,  String? successMessage)  $default,) {final _that = this;
switch (_that) {
case _ExpenseState():
return $default(_that.listStatus,_that.detailStatus,_that.operationStatus,_that.expenses,_that.selectedExpense,_that.listErrorMessage,_that.detailErrorMessage,_that.operationErrorMessage,_that.successMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LoadStatus listStatus,  LoadStatus detailStatus,  OperationStatus operationStatus,  List<Expense> expenses,  Expense? selectedExpense,  String? listErrorMessage,  String? detailErrorMessage,  String? operationErrorMessage,  String? successMessage)?  $default,) {final _that = this;
switch (_that) {
case _ExpenseState() when $default != null:
return $default(_that.listStatus,_that.detailStatus,_that.operationStatus,_that.expenses,_that.selectedExpense,_that.listErrorMessage,_that.detailErrorMessage,_that.operationErrorMessage,_that.successMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ExpenseState implements ExpensesState {
  const _ExpenseState({this.listStatus = LoadStatus.initial, this.detailStatus = LoadStatus.initial, this.operationStatus = OperationStatus.initial, final  List<Expense> expenses = const [], this.selectedExpense, this.listErrorMessage, this.detailErrorMessage, this.operationErrorMessage, this.successMessage}): _expenses = expenses;
  

@override@JsonKey() final  LoadStatus listStatus;
@override@JsonKey() final  LoadStatus detailStatus;
@override@JsonKey() final  OperationStatus operationStatus;
 final  List<Expense> _expenses;
@override@JsonKey() List<Expense> get expenses {
  if (_expenses is EqualUnmodifiableListView) return _expenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_expenses);
}

@override final  Expense? selectedExpense;
@override final  String? listErrorMessage;
@override final  String? detailErrorMessage;
@override final  String? operationErrorMessage;
@override final  String? successMessage;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseStateCopyWith<_ExpenseState> get copyWith => __$ExpenseStateCopyWithImpl<_ExpenseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpenseState&&(identical(other.listStatus, listStatus) || other.listStatus == listStatus)&&(identical(other.detailStatus, detailStatus) || other.detailStatus == detailStatus)&&(identical(other.operationStatus, operationStatus) || other.operationStatus == operationStatus)&&const DeepCollectionEquality().equals(other._expenses, _expenses)&&(identical(other.selectedExpense, selectedExpense) || other.selectedExpense == selectedExpense)&&(identical(other.listErrorMessage, listErrorMessage) || other.listErrorMessage == listErrorMessage)&&(identical(other.detailErrorMessage, detailErrorMessage) || other.detailErrorMessage == detailErrorMessage)&&(identical(other.operationErrorMessage, operationErrorMessage) || other.operationErrorMessage == operationErrorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,listStatus,detailStatus,operationStatus,const DeepCollectionEquality().hash(_expenses),selectedExpense,listErrorMessage,detailErrorMessage,operationErrorMessage,successMessage);

@override
String toString() {
  return 'ExpensesState(listStatus: $listStatus, detailStatus: $detailStatus, operationStatus: $operationStatus, expenses: $expenses, selectedExpense: $selectedExpense, listErrorMessage: $listErrorMessage, detailErrorMessage: $detailErrorMessage, operationErrorMessage: $operationErrorMessage, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class _$ExpenseStateCopyWith<$Res> implements $ExpensesStateCopyWith<$Res> {
  factory _$ExpenseStateCopyWith(_ExpenseState value, $Res Function(_ExpenseState) _then) = __$ExpenseStateCopyWithImpl;
@override @useResult
$Res call({
 LoadStatus listStatus, LoadStatus detailStatus, OperationStatus operationStatus, List<Expense> expenses, Expense? selectedExpense, String? listErrorMessage, String? detailErrorMessage, String? operationErrorMessage, String? successMessage
});


@override $ExpenseCopyWith<$Res>? get selectedExpense;

}
/// @nodoc
class __$ExpenseStateCopyWithImpl<$Res>
    implements _$ExpenseStateCopyWith<$Res> {
  __$ExpenseStateCopyWithImpl(this._self, this._then);

  final _ExpenseState _self;
  final $Res Function(_ExpenseState) _then;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listStatus = null,Object? detailStatus = null,Object? operationStatus = null,Object? expenses = null,Object? selectedExpense = freezed,Object? listErrorMessage = freezed,Object? detailErrorMessage = freezed,Object? operationErrorMessage = freezed,Object? successMessage = freezed,}) {
  return _then(_ExpenseState(
listStatus: null == listStatus ? _self.listStatus : listStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,detailStatus: null == detailStatus ? _self.detailStatus : detailStatus // ignore: cast_nullable_to_non_nullable
as LoadStatus,operationStatus: null == operationStatus ? _self.operationStatus : operationStatus // ignore: cast_nullable_to_non_nullable
as OperationStatus,expenses: null == expenses ? _self._expenses : expenses // ignore: cast_nullable_to_non_nullable
as List<Expense>,selectedExpense: freezed == selectedExpense ? _self.selectedExpense : selectedExpense // ignore: cast_nullable_to_non_nullable
as Expense?,listErrorMessage: freezed == listErrorMessage ? _self.listErrorMessage : listErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,detailErrorMessage: freezed == detailErrorMessage ? _self.detailErrorMessage : detailErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,operationErrorMessage: freezed == operationErrorMessage ? _self.operationErrorMessage : operationErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseCopyWith<$Res>? get selectedExpense {
    if (_self.selectedExpense == null) {
    return null;
  }

  return $ExpenseCopyWith<$Res>(_self.selectedExpense!, (value) {
    return _then(_self.copyWith(selectedExpense: value));
  });
}
}

// dart format on
