import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/diet_nutritio_screen/presentation/widget/volium_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DietNutritionPageNine extends StatelessWidget {
  const DietNutritionPageNine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image(
            image: AssetImage(MyImage.orangeImageTwo),
            height: 500,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35,left: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColor.whiteColor.withAlpha(200)),
                child: SvgPicture.asset(
                  MyImage.backIcon,
                  colorFilter: ColorFilter.mode(
                      MyColor.grayColor, BlendMode.srcIn),
                ),
              ),
            ),
          ),
          Positioned(
            top: 320,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: MyColor.whiteColor,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.grayColor.withAlpha(200)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: MyColor.grayColor)),
                        child: Text(
                          "Fruits",
                          style: regularTextStyle24,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: MyColor.grayColor)),
                        child: Text(
                          "250g",
                          style: regularTextStyle24,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Mandarin Orange",
                    style: regularTextStyle24.copyWith(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Good For Diet",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.grayColor, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        height: 5,
                        child: CircleAvatar(
                          backgroundColor: MyColor.grayColor,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "187kcal",
                        style: regularTextStyle24.copyWith(
                            color: MyColor.grayColor, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VoliumWidget(title: "Protein", title2: "58g", color: MyColor.blackColor, image: MyImage.fireIcon, height: 170),
                      VoliumWidget(title: "Crabs", title2: "58g", color: MyColor.splashBacColor, image: MyImage.resturentIcon, height: 130),
                      VoliumWidget(title: "Fat", title2: "88g", color: MyColor.splashBacColorTwo, image: MyImage.fireIcon, height: 80),
                    ],
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteHelper.dietNutritionPageTen);
            },
            style: ButtonStyle(
                backgroundColor:
                WidgetStateProperty.all(MyColor.splashBacColor),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add Meal",
                  style: regularTextStyle24.copyWith(
                      color: MyColor.whiteColor, fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  MyImage.addIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
