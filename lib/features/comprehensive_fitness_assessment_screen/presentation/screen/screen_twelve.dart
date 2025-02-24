import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/comprehensive_fitness_assessment_screen/presentation/widget/screen_twelve_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenTwelve extends StatefulWidget {
  const ScreenTwelve({super.key});

  @override
  State<ScreenTwelve> createState() => _ScreenTwelveState();
}

final List<String> supplements = [
  "Protein",
  "Whey",
  "BCAAs",
  "Vitamin D",
  "Beta-Alanine",
  "Tumeric",
  "Curcumin",
  "Glutamine",
  "Magnesium",
  "Iron",
  "Omega 4",
  "Omega 8",
  "Vitamin A",
  "Vitamin B",
  "Vitamin C",
  "Fiber",
  "Omega 12",
  "Omega 2",
  "Creatine",
  "Creatine 2"
];
final List<String> selectedSupplements = ["BCAAs", "Omega 2"];

class _ScreenTwelveState extends State<ScreenTwelve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.grayColor.withAlpha(50),
                      ),
                      child: SvgPicture.asset(MyImage.backIcon),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Assessment",
                    style: regularTextStyle24.copyWith(fontSize: 20),
                  ),
                  const Spacer(),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 17),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.splashBacColorTwo.withAlpha(30)),
                    child: Text(
                      "12 of 17",
                      style: regularTextStyle24.copyWith(
                          color: MyColor.splashBacColorTwo, fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Specify Supplement",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(fontSize: 30),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Please specify your supplement.",
                textAlign: TextAlign.center,
                style: regularTextStyle18.copyWith(
                    fontSize: 16, color: MyColor.grayColor),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Common",
                    textAlign: TextAlign.center,
                    style: regularTextStyle24.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "See All Supplements.",
                    textAlign: TextAlign.center,
                    style: regularTextStyle24.copyWith(
                        fontSize: 14, color: MyColor.splashBacColorTwo),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: supplements.map((supplement) {
                    final isSelected = selectedSupplements.contains(supplement);
                    return ChoiceChip(
                      showCheckmark: false,
                      padding: EdgeInsets.zero,
                      label: Text(supplement),
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
                          borderRadius: BorderRadius.circular(15),
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
              const SizedBox(
                height: 16,
              ),
              Text(
                "Selected",
                style: regularTextStyle18,
              ),
              Wrap(
                spacing: 8,
                children: selectedSupplements.map((supplement) {
                  return InputChip(
                      showCheckmark: true,
                      checkmarkColor: MyColor.splashBacColorTwo,
                    padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(color: Colors.transparent)),
                      label: Text(supplement),
                      onDeleted: () {
                        setState(() {
                          selectedSupplements.remove(supplement);
                        });
                      },
                      backgroundColor: MyColor.splashBacColorTwo.withAlpha(30),
                      labelStyle: regularTextStyle24.copyWith(
                          color: MyColor.splashBacColorTwo, fontSize: 14));
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: MyColor.whiteColor,
                  context: context, builder: (BuildContext context){

                return ScreenTwelveBottomsheet();
              });
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
                  "Continue",
                  style: regularTextStyle18.copyWith(
                      color: MyColor.whiteColor, fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  MyImage.arrowRight,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
