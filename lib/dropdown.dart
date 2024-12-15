import 'package:flutter/material.dart';
import 'package:project1/parts.dart';

class MyDropdownMenu<T> extends StatefulWidget {
  final List<T> items;
  final Function(T) updateSelection;

  const MyDropdownMenu({
    super.key,
    required this.updateSelection,
    required this.items,
  });

  @override
  State<MyDropdownMenu> createState() => _MyDropdownMenuState<T>();
}

class _MyDropdownMenuState<T> extends State<MyDropdownMenu<T>> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownMenu(
        width: 270,
        dropdownMenuEntries: widget.items
            .map((e) => DropdownMenuEntry(value: e, label: e.toString()))
            .toList(),
        onSelected: (part) {
          widget.updateSelection(part as T);
        },
        hintText: 'Select a Part',
      ),
    );
  }
}

