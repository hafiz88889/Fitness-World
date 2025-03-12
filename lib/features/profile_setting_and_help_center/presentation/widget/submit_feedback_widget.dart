import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/community_resourse_screen/presentation/screen/community_page_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubmitFeedbackWidget extends StatefulWidget {
  const SubmitFeedbackWidget({super.key});

  @override
  State<SubmitFeedbackWidget> createState() => _SubmitFeedbackWidgetState();
}
final List<String> supplements = [
  "Performance",
  "Support",
  "Bug",
  "UI",
  "UX",
  "Crashe",
  "Loading",
  "Navigation",
  "Leadership",
  "Pricing",
];
final List<String> selectedSupplements = ["BCAAs", "Omega 2"];
class _SubmitFeedbackWidgetState extends State<SubmitFeedbackWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
            color: MyColor.whiteColor,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Which of the Area \nneed Improve",
                  textAlign: TextAlign.center,
                  style: regularTextStyle24.copyWith(fontSize: 26),
                ),
                const SizedBox(height: 15,),
                Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: supplements.map((supplement) {
                      final isSelected =
                      selectedSupplements.contains(supplement);
                      return ChoiceChip(
                        labelPadding: const EdgeInsets.all(8),
                        showCheckmark: false,
                        padding: EdgeInsets.zero,
                        label: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child:  Text(supplement),
                        ),
                        selected: isSelected,
                        onSelected: (bool selected) {
                          setState(() {
                            if (selected) {
                              selectedSupplements.add(supplement);
                            } else {
                              selectedSupplements.remove(supplement);
                            }
                          });
                        },
                        selectedColor: MyColor.splashBacColor,
                        backgroundColor: MyColor.borderColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                                color: isSelected
                                    ? MyColor.whiteColor.withAlpha(100)
                                    : Colors.transparent,
                                width: isSelected ? 5 : 0)),
                        labelStyle: regularTextStyle24.copyWith(
                            color: isSelected
                                ? MyColor.whiteColor
                                : MyColor.grayColor),
                      );
                    }).toList()),
                const SizedBox(height: 50,),
                SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      //    Navigator.pushNamed(context, RouteHelper.screenThree);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all(MyColor.blackColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Submit Feedback",
                          style: regularTextStyle18.copyWith(
                              color: MyColor.whiteColor, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(MyImage.arrowRight)
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
        Positioned(
          bottom: 520,
          left: 140,
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: MyColor.blackColor,
                border: Border.all(color: MyColor.whiteColor, width: 8)),
            child: SvgPicture.asset(
              MyImage.emojiIconOne,
              colorFilter:
                  ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
              height: 40,
            ),
          ),
        )
      ],
    );
  }
}
