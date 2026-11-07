// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BudgetEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BudgetEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BudgetEvent()';
}


}

/// @nodoc
class $BudgetEventCopyWith<$Res>  {
$BudgetEventCopyWith(BudgetEvent _, $Res Function(BudgetEvent) __);
}


/// Adds pattern-matching-related methods to [BudgetEvent].
extension BudgetEventPatterns on BudgetEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadBudget value)?  loadBudget,TResult Function( SaveBudget value)?  saveBudget,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadBudget() when loadBudget != null:
return loadBudget(_that);case SaveBudget() when saveBudget != null:
return saveBudget(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadBudget value)  loadBudget,required TResult Function( SaveBudget value)  saveBudget,}){
final _that = this;
switch (_that) {
case LoadBudget():
return loadBudget(_that);case SaveBudget():
return saveBudget(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadBudget value)?  loadBudget,TResult? Function( SaveBudget value)?  saveBudget,}){
final _that = this;
switch (_that) {
case LoadBudget() when loadBudget != null:
return loadBudget(_that);case SaveBudget() when saveBudget != null:
return saveBudget(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int year,  int month)?  loadBudget,TResult Function( double amount)?  saveBudget,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadBudget() when loadBudget != null:
return loadBudget(_that.year,_that.month);case SaveBudget() when saveBudget != null:
return saveBudget(_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int year,  int month)  loadBudget,required TResult Function( double amount)  saveBudget,}) {final _that = this;
switch (_that) {
case LoadBudget():
return loadBudget(_that.year,_that.month);case SaveBudget():
return saveBudget(_that.amount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int year,  int month)?  loadBudget,TResult? Function( double amount)?  saveBudget,}) {final _that = this;
switch (_that) {
case LoadBudget() when loadBudget != null:
return loadBudget(_that.year,_that.month);case SaveBudget() when saveBudget != null:
return saveBudget(_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class LoadBudget implements BudgetEvent {
  const LoadBudget({required this.year, required this.month});
  

 final  int year;
 final  int month;

/// Create a copy of BudgetEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadBudgetCopyWith<LoadBudget> get copyWith => _$LoadBudgetCopyWithImpl<LoadBudget>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadBudget&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month));
}


@override
int get hashCode => Object.hash(runtimeType,year,month);

@override
String toString() {
  return 'BudgetEvent.loadBudget(year: $year, month: $month)';
}


}

/// @nodoc
abstract mixin class $LoadBudgetCopyWith<$Res> implements $BudgetEventCopyWith<$Res> {
  factory $LoadBudgetCopyWith(LoadBudget value, $Res Function(LoadBudget) _then) = _$LoadBudgetCopyWithImpl;
@useResult
$Res call({
 int year, int month
});




}
/// @nodoc
class _$LoadBudgetCopyWithImpl<$Res>
    implements $LoadBudgetCopyWith<$Res> {
  _$LoadBudgetCopyWithImpl(this._self, this._then);

  final LoadBudget _self;
  final $Res Function(LoadBudget) _then;

/// Create a copy of BudgetEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? year = null,Object? month = null,}) {
  return _then(LoadBudget(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SaveBudget implements BudgetEvent {
  const SaveBudget({required this.amount});
  

 final  double amount;

/// Create a copy of BudgetEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveBudgetCopyWith<SaveBudget> get copyWith => _$SaveBudgetCopyWithImpl<SaveBudget>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveBudget&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'BudgetEvent.saveBudget(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $SaveBudgetCopyWith<$Res> implements $BudgetEventCopyWith<$Res> {
  factory $SaveBudgetCopyWith(SaveBudget value, $Res Function(SaveBudget) _then) = _$SaveBudgetCopyWithImpl;
@useResult
$Res call({
 double amount
});




}
/// @nodoc
class _$SaveBudgetCopyWithImpl<$Res>
    implements $SaveBudgetCopyWith<$Res> {
  _$SaveBudgetCopyWithImpl(this._self, this._then);

  final SaveBudget _self;
  final $Res Function(SaveBudget) _then;

/// Create a copy of BudgetEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(SaveBudget(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
