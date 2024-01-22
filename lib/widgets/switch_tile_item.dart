import 'package:flutter/material.dart';

class SwitchTileItem extends StatefulWidget {
  SwitchTileItem({
    super.key,
    required this.title,
    required this.toggleChecked,
    required this.onToggle,
  });

  final String title;
  bool toggleChecked;
  final Function(bool) onToggle;

  @override
  State<SwitchTileItem> createState() => _SwitchTileItemState();
}

class _SwitchTileItemState extends State<SwitchTileItem> {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: widget.toggleChecked,
      onChanged: (isChecked) {
        setState(() {
          widget.toggleChecked = isChecked;
          widget.onToggle(isChecked);
        });
      },
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      subtitle: Text(
        'Only include ${widget.title.toLowerCase()} meals.',
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
    ;
  }
}
