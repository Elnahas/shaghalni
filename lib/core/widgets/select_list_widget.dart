import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';

class SelectListWidget<T> extends StatefulWidget {
  final String title;
  final List<T> items;
  final int initialSelectedIndex;
  final ValueChanged<int> onItemSelected;
  final String Function(T) itemBuilder;

  const SelectListWidget({
    super.key,
    required this.items,
    required this.initialSelectedIndex,
    required this.onItemSelected,
    required this.title,
    required this.itemBuilder,
  });

  @override
  State<SelectListWidget<T>> createState() => _SelectListWidgetState<T>();
}

class _SelectListWidgetState<T> extends State<SelectListWidget<T>> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialSelectedIndex;
  }

  @override
  void didUpdateWidget(covariant SelectListWidget<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialSelectedIndex != widget.initialSelectedIndex) {
      setState(() {
        currentIndex = widget.initialSelectedIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(20),
          Text(
            widget.title,
            style: TextStyles.font18BoldBlack,
          ),
          verticalSpace(10),
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == index ? Colors.blue : Colors.white,
                ),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                      widget.onItemSelected(index);
                    },
                    child: ListTile(
                      selected: currentIndex == index,
                      selectedColor: Colors.white,
                      trailing: const Icon(Icons.chevron_right),
                      title: Text(widget.itemBuilder(widget.items[index]) ,),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
