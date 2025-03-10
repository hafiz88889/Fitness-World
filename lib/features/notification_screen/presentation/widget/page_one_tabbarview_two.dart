import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class PageOneTabbarviewTwo extends StatefulWidget {
  const PageOneTabbarviewTwo({super.key});

  @override
  State<PageOneTabbarviewTwo> createState() => _PageOneTabbarviewTwoState();
}
final List<Map<String,dynamic>>items=[
  {"image":MyImage.weightLiftIcon,"title":"Jogging Complete","subtitle":"You burn total 255kcal"},
  {"image":MyImage.weightLiftIcon,"title":"Workout Complete","subtitle":"Chest Pest Complete"},
  {"image":MyImage.five,"title":"Workout Suggestion","subtitle":"Chest Pest Complete"},
];
class _PageOneTabbarviewTwoState extends State<PageOneTabbarviewTwo> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
      return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(left: 12,right: 12,bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyColor.borderColor
        ),
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: MyColor.grayColor.withAlpha(150)
                ),
                child: SvgPicture.asset(items[index]["image"],colorFilter: ColorFilter.mode(MyColor.blackColor.withAlpha(100), BlendMode.srcIn),height: 30,)
            ),
            const SizedBox(width: 15,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(items[index]["title"],style: regularTextStyle24.copyWith(fontSize: 18,color: MyColor.blackColor.withAlpha(150)),),
                  Text(items[index]["subtitle"],style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),),
                ],
              ),
            ),
            Checkbox(
                activeColor: MyColor.blackColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)
                ),
                value: isSelect, onChanged: (value){
              setState(() {
                isSelect=value!;
              });
            })
          ],
        ),
      );
    },);

  }
  bool isSelect=false;
}
