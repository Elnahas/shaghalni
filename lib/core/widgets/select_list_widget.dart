import 'package:flutter/material.dart';
import 'package:shaghalni/core/helpers/spacing.dart';
import 'package:shaghalni/core/theming/app_text_styles.dart';

class SelectListWidget extends StatefulWidget {
  final String title;
  final List<String> items;
  final int initialSelectedIndex;
  final ValueChanged<int> onItemSelected;

  const SelectListWidget({
    super.key,
    required this.items,
    required this.initialSelectedIndex,
    required this.onItemSelected, required this.title,
  });

  @override
  State<SelectListWidget> createState() => _SelectListWidgetState();
}

class _SelectListWidgetState extends State<SelectListWidget> {
  @override
  Widget build(BuildContext context) {
    var currentIndex = widget.initialSelectedIndex;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(20),
           Text(widget.title , style: TextStyles.font18BoldBlack,),
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
                      title: Text(widget.items[index]),
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
