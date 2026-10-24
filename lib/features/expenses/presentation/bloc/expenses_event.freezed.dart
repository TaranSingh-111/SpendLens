// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExpensesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpensesEvent()';
}


}

/// @nodoc
class $ExpensesEventCopyWith<$Res>  {
$ExpensesEventCopyWith(ExpensesEvent _, $Res Function(ExpensesEvent) __);
}


/// Adds pattern-matching-related methods to [ExpensesEvent].
extension ExpensesEventPatterns on ExpensesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadExpenses value)?  loadExpenses,TResult Function( LoadExpense value)?  loadExpense,TResult Function( AddExpense value)?  addExpense,TResult Function( UpdateExpense value)?  updateExpense,TResult Function( DeleteExpense value)?  deleteExpense,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadExpenses() when loadExpenses != null:
return loadExpenses(_that);case LoadExpense() when loadExpense != null:
return loadExpense(_that);case AddExpense() when addExpense != null:
return addExpense(_that);case UpdateExpense() when updateExpense != null:
return updateExpense(_that);case DeleteExpense() when deleteExpense != null:
return deleteExpense(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadExpenses value)  loadExpenses,required TResult Function( LoadExpense value)  loadExpense,required TResult Function( AddExpense value)  addExpense,required TResult Function( UpdateExpense value)  updateExpense,required TResult Function( DeleteExpense value)  deleteExpense,}){
final _that = this;
switch (_that) {
case LoadExpenses():
return loadExpenses(_that);case LoadExpense():
return loadExpense(_that);case AddExpense():
return addExpense(_that);case UpdateExpense():
return updateExpense(_that);case DeleteExpense():
return deleteExpense(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadExpenses value)?  loadExpenses,TResult? Function( LoadExpense value)?  loadExpense,TResult? Function( AddExpense value)?  addExpense,TResult? Function( UpdateExpense value)?  updateExpense,TResult? Function( DeleteExpense value)?  deleteExpense,}){
final _that = this;
switch (_that) {
case LoadExpenses() when loadExpenses != null:
return loadExpenses(_that);case LoadExpense() when loadExpense != null:
return loadExpense(_that);case AddExpense() when addExpense != null:
return addExpense(_that);case UpdateExpense() when updateExpense != null:
return updateExpense(_that);case DeleteExpense() when deleteExpense != null:
return deleteExpense(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadExpenses,TResult Function( int id)?  loadExpense,TResult Function( Expense expense)?  addExpense,TResult Function( int id,  Expense expense)?  updateExpense,TResult Function( int id)?  deleteExpense,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadExpenses() when loadExpenses != null:
return loadExpenses();case LoadExpense() when loadExpense != null:
return loadExpense(_that.id);case AddExpense() when addExpense != null:
return addExpense(_that.expense);case UpdateExpense() when updateExpense != null:
return updateExpense(_that.id,_that.expense);case DeleteExpense() when deleteExpense != null:
return deleteExpense(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadExpenses,required TResult Function( int id)  loadExpense,required TResult Function( Expense expense)  addExpense,required TResult Function( int id,  Expense expense)  updateExpense,required TResult Function( int id)  deleteExpense,}) {final _that = this;
switch (_that) {
case LoadExpenses():
return loadExpenses();case LoadExpense():
return loadExpense(_that.id);case AddExpense():
return addExpense(_that.expense);case UpdateExpense():
return updateExpense(_that.id,_that.expense);case DeleteExpense():
return deleteExpense(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadExpenses,TResult? Function( int id)?  loadExpense,TResult? Function( Expense expense)?  addExpense,TResult? Function( int id,  Expense expense)?  updateExpense,TResult? Function( int id)?  deleteExpense,}) {final _that = this;
switch (_that) {
case LoadExpenses() when loadExpenses != null:
return loadExpenses();case LoadExpense() when loadExpense != null:
return loadExpense(_that.id);case AddExpense() when addExpense != null:
return addExpense(_that.expense);case UpdateExpense() when updateExpense != null:
return updateExpense(_that.id,_that.expense);case DeleteExpense() when deleteExpense != null:
return deleteExpense(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class LoadExpenses implements ExpensesEvent {
  const LoadExpenses();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadExpenses);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpensesEvent.loadExpenses()';
}


}




/// @nodoc


class LoadExpense implements ExpensesEvent {
  const LoadExpense({required this.id});
  

 final  int id;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadExpenseCopyWith<LoadExpense> get copyWith => _$LoadExpenseCopyWithImpl<LoadExpense>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadExpense&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ExpensesEvent.loadExpense(id: $id)';
}


}

/// @nodoc
abstract mixin class $LoadExpenseCopyWith<$Res> implements $ExpensesEventCopyWith<$Res> {
  factory $LoadExpenseCopyWith(LoadExpense value, $Res Function(LoadExpense) _then) = _$LoadExpenseCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$LoadExpenseCopyWithImpl<$Res>
    implements $LoadExpenseCopyWith<$Res> {
  _$LoadExpenseCopyWithImpl(this._self, this._then);

  final LoadExpense _self;
  final $Res Function(LoadExpense) _then;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(LoadExpense(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class AddExpense implements ExpensesEvent {
  const AddExpense({required this.expense});
  

 final  Expense expense;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseCopyWith<AddExpense> get copyWith => _$AddExpenseCopyWithImpl<AddExpense>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpense&&(identical(other.expense, expense) || other.expense == expense));
}


@override
int get hashCode => Object.hash(runtimeType,expense);

@override
String toString() {
  return 'ExpensesEvent.addExpense(expense: $expense)';
}


}

/// @nodoc
abstract mixin class $AddExpenseCopyWith<$Res> implements $ExpensesEventCopyWith<$Res> {
  factory $AddExpenseCopyWith(AddExpense value, $Res Function(AddExpense) _then) = _$AddExpenseCopyWithImpl;
@useResult
$Res call({
 Expense expense
});


$ExpenseCopyWith<$Res> get expense;

}
/// @nodoc
class _$AddExpenseCopyWithImpl<$Res>
    implements $AddExpenseCopyWith<$Res> {
  _$AddExpenseCopyWithImpl(this._self, this._then);

  final AddExpense _self;
  final $Res Function(AddExpense) _then;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? expense = null,}) {
  return _then(AddExpense(
expense: null == expense ? _self.expense : expense // ignore: cast_nullable_to_non_nullable
as Expense,
  ));
}

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseCopyWith<$Res> get expense {
  
  return $ExpenseCopyWith<$Res>(_self.expense, (value) {
    return _then(_self.copyWith(expense: value));
  });
}
}

/// @nodoc


class UpdateExpense implements ExpensesEvent {
  const UpdateExpense({required this.id, required this.expense});
  

 final  int id;
 final  Expense expense;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateExpenseCopyWith<UpdateExpense> get copyWith => _$UpdateExpenseCopyWithImpl<UpdateExpense>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateExpense&&(identical(other.id, id) || other.id == id)&&(identical(other.expense, expense) || other.expense == expense));
}


@override
int get hashCode => Object.hash(runtimeType,id,expense);

@override
String toString() {
  return 'ExpensesEvent.updateExpense(id: $id, expense: $expense)';
}


}

/// @nodoc
abstract mixin class $UpdateExpenseCopyWith<$Res> implements $ExpensesEventCopyWith<$Res> {
  factory $UpdateExpenseCopyWith(UpdateExpense value, $Res Function(UpdateExpense) _then) = _$UpdateExpenseCopyWithImpl;
@useResult
$Res call({
 int id, Expense expense
});


$ExpenseCopyWith<$Res> get expense;

}
/// @nodoc
class _$UpdateExpenseCopyWithImpl<$Res>
    implements $UpdateExpenseCopyWith<$Res> {
  _$UpdateExpenseCopyWithImpl(this._self, this._then);

  final UpdateExpense _self;
  final $Res Function(UpdateExpense) _then;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? expense = null,}) {
  return _then(UpdateExpense(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,expense: null == expense ? _self.expense : expense // ignore: cast_nullable_to_non_nullable
as Expense,
  ));
}

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseCopyWith<$Res> get expense {
  
  return $ExpenseCopyWith<$Res>(_self.expense, (value) {
    return _then(_self.copyWith(expense: value));
  });
}
}

/// @nodoc


class DeleteExpense implements ExpensesEvent {
  const DeleteExpense({required this.id});
  

 final  int id;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteExpenseCopyWith<DeleteExpense> get copyWith => _$DeleteExpenseCopyWithImpl<DeleteExpense>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteExpense&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ExpensesEvent.deleteExpense(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteExpenseCopyWith<$Res> implements $ExpensesEventCopyWith<$Res> {
  factory $DeleteExpenseCopyWith(DeleteExpense value, $Res Function(DeleteExpense) _then) = _$DeleteExpenseCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteExpenseCopyWithImpl<$Res>
    implements $DeleteExpenseCopyWith<$Res> {
  _$DeleteExpenseCopyWithImpl(this._self, this._then);

  final DeleteExpense _self;
  final $Res Function(DeleteExpense) _then;

/// Create a copy of ExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteExpense(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
