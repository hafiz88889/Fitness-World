import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/my_image.dart';

class PersonalizePageTen extends StatelessWidget {
  const PersonalizePageTen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColor.whiteColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
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
                const SizedBox(width: 20,),
                Text(
                  "Checkout",
                  style: regularTextStyle24.copyWith(fontSize: 24),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(right: 25,left: 20,bottom: 15),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(image: AssetImage(MyImage.cardBackImage),fit: BoxFit.cover)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage(MyImage.visaCard),height: 80,color: MyColor.whiteColor,)
                      ],
                    ),
                  ),
                  Text("Md Hafizur Rahman",style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.whiteColor),),
                  const SizedBox(height: 10,),
                  Text("2411 4587 1125 1487",style: regularTextStyle24.copyWith(fontSize: 22,color: MyColor.whiteColor),),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            GlobalTextFieldWidget(title: "Card Holder Name", hintText: "Md Hafizur Rahman",prefix: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage(MyImage.userIcon),height: 20,),
            ),
              suffix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image(image: AssetImage(MyImage.editIcon,),height: 20,color: MyColor.grayColor,),
              ),
            ),
            GlobalTextFieldWidget(title: "Card Number", hintText: "2411 4587 1125 1487",prefix: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage(MyImage.questionMarkIcon),height: 20,),
            ),
              suffix: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(MyImage.visibilityIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),)
              ),
            ),
            Row(
              children: [
                Expanded(
                  child:  GlobalTextFieldWidget(title: "Expiry", hintText: "01/25",prefix: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage(MyImage.calenderIcon),height: 20,color: MyColor.grayColor,),
                ),
                ),
                ),
                Expanded(
                  child:  GlobalTextFieldWidget(title: "CVV", hintText: "784",prefix: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage(MyImage.calenderIcon),height: 20,color: MyColor.grayColor,),
                  ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
      ),
      bottomNavigationBar: Padding(padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: 54,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteHelper.personalizePageEleven);
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
                "Checkout",
                style: regularTextStyle24.copyWith(
                    color: MyColor.whiteColor, fontSize: 16),
              ),
              const SizedBox(
                width: 10,
              ),
              Image(image: AssetImage(MyImage.cartIcon),color: MyColor.whiteColor,height: 25,width: 25,)
            ],
          ),
        ),
      ),
      ),
    );
  }
}
