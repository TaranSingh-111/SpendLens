import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:spend_lens/features/categories/domain/entities/category.dart';
import 'package:spend_lens/features/categories/presentation/bloc/categories_bloc.dart';
import 'package:spend_lens/features/categories/presentation/bloc/categories_state.dart';
import 'package:spend_lens/features/expenses/presentation/bloc/expenses_event.dart';

import '../../../categories/presentation/bloc/categories_event.dart';
import '../../domain/entities/expense.dart';
import '../bloc/expenses_bloc.dart';
import '../bloc/expenses_state.dart';

class ExpenseFormPage extends StatefulWidget {
  final Expense? expense;

  const ExpenseFormPage({super.key, this.expense});

  bool get isEditing => expense != null;

  @override
  State<ExpenseFormPage> createState() => _ExpenseFormPageState();
}

class _ExpenseFormPageState extends State<ExpenseFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _categoryController = TextEditingController();

  bool _isCustomCategory = false;

  @override
  void initState() {
    super.initState();

    final expense = widget.expense;

    if(expense != null){
      _amountController.text = expense.amount.toString();
      _descriptionController.text = expense.description ?? '';
      _categoryController.text = expense.category;
      _selectedDate = expense.expenseDate;
    }
  }

  @override
  void dispose() {
    _amountController.dispose();
    _descriptionController.dispose();
    _categoryController.dispose();
    super.dispose();
  }

  DateTime _selectedDate = DateTime.now();

  Future<void> _pickDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && mounted) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  void _submitExpense() {
    if (!_formKey.currentState!.validate()) return;

    final expense = Expense(
      amount: double.parse(_amountController.text.trim()),
      category: _categoryController.text.trim(),
      expenseDate: _selectedDate,
      description: _descriptionController.text.trim().isEmpty
          ? null
          : _descriptionController.text.trim(),
      id: widget.expense?.id,
    );

    final bloc = context.read<ExpensesBloc>();

    if(widget.isEditing){
      bloc.add(UpdateExpense(id: widget.expense!.id!, expense: expense));
    }else{
      bloc.add(AddExpense(expense: expense));
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<ExpensesBloc, ExpensesState>(
      listenWhen: (previous, current) =>
          previous.operationStatus != current.operationStatus,
      listener: (context, state) {
        if (state.operationStatus == OperationStatus.success) {
          if(widget.isEditing){
            Navigator.of(context).pop();
          }else{
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.successMessage ?? 'Expense added successfully',
                ),
              ),
            );

            _formKey.currentState!.reset();
            _amountController.clear();
            _descriptionController.clear();
            _categoryController.clear();

            setState(() {
              _selectedDate = DateTime.now();
              _isCustomCategory = false;
            });
          }
        } else if (state.operationStatus == OperationStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.operationErrorMessage ?? 'Failed to add expense',
              ),
            ),
          );
        }
      },

      child: Scaffold(
        appBar: AppBar(
            title:  Text(
            widget.isEditing ? 'Edit Expense' : 'Add Expense'
        )),

        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.isEditing ? 'Update your expense' : 'Record a new expense',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'Keep track of where your money goes.',
                    style: theme.textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 28),

                  // Amount
                  Text('Amount', style: theme.textTheme.titleMedium),

                  const SizedBox(height: 8),

                  TextFormField(
                    controller: _amountController,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: const InputDecoration(
                      prefixText: '₹ ',
                      hintText: '0.00',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter an amount';
                      }

                      final amount = double.tryParse(value.trim());

                      if (amount == null || !amount.isFinite || amount <= 0) {
                        return 'Enter a valid amount greater than zero';
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 20),

                  // Category
                  Text('Category', style: theme.textTheme.titleMedium),

                  const SizedBox(height: 8),

                  _buildCategoryField(),

                  const SizedBox(height: 20),

                  // Date
                  Text('Date', style: theme.textTheme.titleMedium),

                  const SizedBox(height: 8),

                  InkWell(
                    onTap: _pickDate,
                    borderRadius: BorderRadius.circular(12),
                    child: InputDecorator(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.calendar_today_outlined),
                      ),
                      child: Text(
                        DateFormat('dd MMM yyyy').format(_selectedDate),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Description
                  Text(
                    'Description (optional)',
                    style: theme.textTheme.titleMedium,
                  ),

                  const SizedBox(height: 8),

                  TextFormField(
                    controller: _descriptionController,
                    maxLines: 3,
                    maxLength: 250,
                    decoration: const InputDecoration(
                      hintText: 'What was this expense for?',
                      border: OutlineInputBorder(),
                      alignLabelWithHint: true,
                    ),
                  ),

                  const SizedBox(height: 28),

                  //Submit
                  BlocBuilder<ExpensesBloc, ExpensesState>(
                    buildWhen: (previous, current) =>
                        previous.operationStatus != current.operationStatus,
                    builder: ((context, state) {
                      final isSubmitting =
                          state.operationStatus == OperationStatus.loading;

                      return SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: FilledButton.icon(
                          onPressed: isSubmitting ? null : _submitExpense,
                          icon: isSubmitting
                              ? const SizedBox(
                                  width: 18,
                                  height: 18,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Icon(Icons.add),
                          label: Text(
                            isSubmitting
                                ? (widget.isEditing ? 'Updating...' : 'Saving...')
                                : (widget.isEditing ? 'Update Expense' : 'Save Expense'),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryField() {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        switch (state.status) {
          case CategoriesStatus.initial:
          case CategoriesStatus.loading:
            return const Center(child: CircularProgressIndicator());

          case CategoriesStatus.success:
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCategoryDropdown(state.categories),

                if (_isCustomCategory) ...[
                  const SizedBox(height: 12),
                  _buildCustomCategoryField(),
                ],
              ],
            );

          case CategoriesStatus.error:
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(state.errorMessage ?? 'Failed to load categories.'),
                TextButton(
                  onPressed: () {
                    context.read<CategoriesBloc>().add(const LoadCategories());
                  },
                  child: const Text('Retry'),
                ),
              ],
            );
        }
      },
    );

  }

  Widget _buildCategoryDropdown(List<Category> categories) {
    const customValue = '__custom__';

    final selectedValue = _isCustomCategory
        ? customValue
        : categories.any(
            (category) => category.name == _categoryController.text,
          )
        ? _categoryController.text
        : null;
    return DropdownButtonFormField<String>(
      initialValue: selectedValue,
      decoration: const InputDecoration(
        labelText: 'Category',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.category_outlined),
      ),
      items: [
        ...categories.map(
          (category) => DropdownMenuItem<String>(
            value: category.name,
            child: Text(category.name),
          ),
        ),
        DropdownMenuItem <String>(
            value: customValue,
            child: Text(' + Create new category')
        ),
      ],
      onChanged: (value) {
        setState(() {
          if (value == customValue) {
            _isCustomCategory = true;
            _categoryController.clear();
          } else if (value != null) {
            _isCustomCategory = false;
            _categoryController.text = value;
          }
        });
      },
      validator: (_) {
        if (_categoryController.text.trim().isEmpty) {
          return 'Please select or enter a category';
        }
        return null;
      },
    );
  }


  Widget _buildCustomCategoryField() {
    return TextFormField(
      controller: _categoryController,
      maxLength: 50,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        labelText: 'Custom category',
        hintText: 'e.g. Clothes',
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(Icons.edit_outlined),
        suffixIcon: IconButton(
            tooltip: 'Choose an existing category',
            icon: const Icon(Icons.close),
            onPressed: () {
              setState(() {
                _isCustomCategory = false;
                _categoryController.clear();
              });
            },
        ),
      ),

      validator: (value) {
        if(_isCustomCategory &&
            (value == null || value.trim().isEmpty)){
          return 'Please enter a category';
        }
        return null;
      },
    );
  }
}
