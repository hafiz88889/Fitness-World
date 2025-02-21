import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:flutter/material.dart';

class PageThirteenSliderWidget extends StatefulWidget {
  final String title;
  const PageThirteenSliderWidget({super.key,required this.title});

  @override
  State<PageThirteenSliderWidget> createState() => _PageThirteenSliderWidgetState();
}
RangeValues _selectedRange = const RangeValues(10, 15);
class _PageThirteenSliderWidgetState extends State<PageThirteenSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
        widget.title,
          style: regularTextStyle24,
        ),
        RangeSlider(
          labels:const RangeLabels("0", "15"),
          values: _selectedRange,
          min: 0,
          max: 60,
          divisions: 4,
          activeColor: MyColor.splashBacColor,
          inactiveColor:MyColor.borderColor,
          onChanged: (RangeValues values) {
            setState(() {
              _selectedRange = values;
            });
          },
        ),
      ],
    );
  }
}
