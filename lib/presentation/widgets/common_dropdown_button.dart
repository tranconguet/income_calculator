import 'package:flutter/material.dart';

class CommonDropdownButton<T> extends StatefulWidget {
  const CommonDropdownButton({
    Key? key,
    this.items,
    this.onChanged,
    this.initialValue,
    this.margin,
  }) : super(key: key);

  final List<DropdownMenuItem<T>>? items;
  final void Function(T?)? onChanged;
  final T? initialValue;
  final EdgeInsetsGeometry? margin;

  @override
  State<CommonDropdownButton<T>> createState() => _CommonDropdownButtonState<T>();
}

class _CommonDropdownButtonState<T> extends State<CommonDropdownButton<T>> {
  T? _value;

  @override
  void initState() {
    _value = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: widget.margin,
      alignment: Alignment.center,
      child: DropdownButton<T>(
        items: widget.items,
        value: _value,
        onChanged: (T? value) {
          setState(() {
            _value = value;
          });
          if (value != null) widget.onChanged?.call(value);
        },
        underline: const SizedBox.shrink(),
        alignment: Alignment.center,
        isExpanded: true,
      ),
    );
  }
}
