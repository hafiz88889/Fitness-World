import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final List<Map<String, dynamic>> item = [
    {"image": MyImage.gymMan,},
    {"image": MyImage.gymLady,},
  ];
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
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
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 17),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColor.splashBacColorTwo.withAlpha(30)),
                  child: Text(
                    "2 of 17",
                    style: regularTextStyle24.copyWith(
                        color: MyColor.splashBacColorTwo,fontSize: 14),
                  ),
                )
              ],
            ),
            const SizedBox(height: 50,),
            Text(
              "What is your gender?",textAlign: TextAlign.center,
              style: regularTextStyle24.copyWith(
                  fontSize: 30),
            ),
            const SizedBox(height: 50,),
      Expanded(
          child:ListView.builder(
            itemCount: item.length,
              itemBuilder: (context,index){
                bool isSelected = index == selectedIndex;
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex=index;
                    });
                  },
                  child: Container(
                    height: 144,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image:DecorationImage(image: AssetImage(item[index]["image"],),),
                      color: MyColor.grayColor.withAlpha(30),
                      border: Border.all(color: isSelected?MyColor.splashBacColor:MyColor.grayColor.withAlpha(30),width: isSelected? 5:0)
                    ),
                  ),
                );
              },
          ),
      ),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.pushNamed(context, RouteHelper.passwordSentScreen);
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(MyColor.elevetedBackColor),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Prefer to skip, thanks!",
                      style: regularTextStyle18.copyWith(
                          color: MyColor.splashBacColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(MyImage.closeIcon,colorFilter: ColorFilter.mode(MyColor.splashBacColor, BlendMode.srcIn),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteHelper.screenThree);
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
                    SvgPicture.asset(MyImage.arrowRight,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
