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

 ExpenseStatus get status; List<Expense> get expenses; Expense? get selectedExpense; String? get errorMessage; String? get successMessage;
/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpensesStateCopyWith<ExpensesState> get copyWith => _$ExpensesStateCopyWithImpl<ExpensesState>(this as ExpensesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.expenses, expenses)&&(identical(other.selectedExpense, selectedExpense) || other.selectedExpense == selectedExpense)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(expenses),selectedExpense,errorMessage,successMessage);

@override
String toString() {
  return 'ExpensesState(status: $status, expenses: $expenses, selectedExpense: $selectedExpense, errorMessage: $errorMessage, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class $ExpensesStateCopyWith<$Res>  {
  factory $ExpensesStateCopyWith(ExpensesState value, $Res Function(ExpensesState) _then) = _$ExpensesStateCopyWithImpl;
@useResult
$Res call({
 ExpenseStatus status, List<Expense> expenses, Expense? selectedExpense, String? errorMessage, String? successMessage
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
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? expenses = null,Object? selectedExpense = freezed,Object? errorMessage = freezed,Object? successMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExpenseStatus,expenses: null == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as List<Expense>,selectedExpense: freezed == selectedExpense ? _self.selectedExpense : selectedExpense // ignore: cast_nullable_to_non_nullable
as Expense?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ExpenseStatus status,  List<Expense> expenses,  Expense? selectedExpense,  String? errorMessage,  String? successMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpenseState() when $default != null:
return $default(_that.status,_that.expenses,_that.selectedExpense,_that.errorMessage,_that.successMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ExpenseStatus status,  List<Expense> expenses,  Expense? selectedExpense,  String? errorMessage,  String? successMessage)  $default,) {final _that = this;
switch (_that) {
case _ExpenseState():
return $default(_that.status,_that.expenses,_that.selectedExpense,_that.errorMessage,_that.successMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ExpenseStatus status,  List<Expense> expenses,  Expense? selectedExpense,  String? errorMessage,  String? successMessage)?  $default,) {final _that = this;
switch (_that) {
case _ExpenseState() when $default != null:
return $default(_that.status,_that.expenses,_that.selectedExpense,_that.errorMessage,_that.successMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ExpenseState implements ExpensesState {
  const _ExpenseState({this.status = ExpenseStatus.initial, final  List<Expense> expenses = const [], this.selectedExpense, this.errorMessage, this.successMessage}): _expenses = expenses;
  

@override@JsonKey() final  ExpenseStatus status;
 final  List<Expense> _expenses;
@override@JsonKey() List<Expense> get expenses {
  if (_expenses is EqualUnmodifiableListView) return _expenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_expenses);
}

@override final  Expense? selectedExpense;
@override final  String? errorMessage;
@override final  String? successMessage;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseStateCopyWith<_ExpenseState> get copyWith => __$ExpenseStateCopyWithImpl<_ExpenseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpenseState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._expenses, _expenses)&&(identical(other.selectedExpense, selectedExpense) || other.selectedExpense == selectedExpense)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_expenses),selectedExpense,errorMessage,successMessage);

@override
String toString() {
  return 'ExpensesState(status: $status, expenses: $expenses, selectedExpense: $selectedExpense, errorMessage: $errorMessage, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class _$ExpenseStateCopyWith<$Res> implements $ExpensesStateCopyWith<$Res> {
  factory _$ExpenseStateCopyWith(_ExpenseState value, $Res Function(_ExpenseState) _then) = __$ExpenseStateCopyWithImpl;
@override @useResult
$Res call({
 ExpenseStatus status, List<Expense> expenses, Expense? selectedExpense, String? errorMessage, String? successMessage
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
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? expenses = null,Object? selectedExpense = freezed,Object? errorMessage = freezed,Object? successMessage = freezed,}) {
  return _then(_ExpenseState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExpenseStatus,expenses: null == expenses ? _self._expenses : expenses // ignore: cast_nullable_to_non_nullable
as List<Expense>,selectedExpense: freezed == selectedExpense ? _self.selectedExpense : selectedExpense // ignore: cast_nullable_to_non_nullable
as Expense?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
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
