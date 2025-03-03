import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class BrowseTabbarViewWidget extends StatelessWidget {
  const BrowseTabbarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>>itemList=[
      {"image1":MyImage.userIconTwo,"image2":MyImage.gymMan,"image3":MyImage.star,"text1":"Farnese Vandimion","text2":"1.5","text3":"21 Client","text4":"13:00","text5":"Human"},
      {"image1":MyImage.userIconTwo,"image2":MyImage.gymManFour,"image3":MyImage.star,"text1":"Gutsman D Berk","text2":"null","text3":"31 Client","text4":"12:00","text5":"AI"},
      {"image1":MyImage.userIconTwo,"image2":MyImage.gymManThree,"image3":MyImage.star,"text1":"X -AE-A-XII bugfiz","text2":"2.2","text3":"21 Client","text4":"05:03","text5":"Human"},
      {"image1":MyImage.userIconTwo,"image2":MyImage.gymLady,"image3":MyImage.star,"text1":"Farnese Vandimion","text2":"5.0","text3":"22 Client","text4":"05:55","text5":"AI"},
      {"image1":MyImage.userIconTwo,"image2":MyImage.gymLadyThree,"image3":MyImage.star,"text1":"Core Abs Workout","text2":"4.5","text3":"50 Client","text4":"05:55","text5":"Human"},
      {"image1":MyImage.userIconTwo,"image2":MyImage.gymManTwo,"image3":MyImage.star,"text1":"Core Abs Workout","text2":"80 reps","text3":"100 Client","text4":"05:55","text5":"AI"},
      {"image1":MyImage.userIconTwo,"image2":MyImage.gymManSeven,"image3":MyImage.star,"text1":"Core Abs Workout","text2":"80 reps","text3":"500 Client","text4":"05:55","text5":"Human"},
      {"image1":MyImage.userIconTwo,"image2":MyImage.gymMan,"image3":MyImage.star,"text1":"Core Abs Workout","text2":"80 reps","text3":"80 Client","text4":"05:55","text5":"AI"},
      {"image1":MyImage.userIconTwo,"image2":MyImage.gymManTwo,"image3":MyImage.star,"text1":"Core Abs Workout","text2":"80 reps","text3":"20","text4":"05:55","text5":"Human"},

    ];

    return   ListView.builder(
      itemCount: itemList.length,
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return  Container(
          margin:const EdgeInsets.only(bottom:15),
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: MyColor.borderColor
          ),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(itemList[index]["image2"]),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.whiteColor
                ),
              ),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: MyColor.grayColor.withAlpha(50)
                      ),
                      child:Text(itemList[index]["text5"],style: regularTextStyle18.copyWith(fontSize: 14),),
                    ),
                    const SizedBox(height: 10,),
                    Text(itemList[index]["text1"],style: regularTextStyle24,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                      Image(image: AssetImage(itemList[index]["image3"]),height: 20,color: MyColor.orangeColor,),
                        const SizedBox(width: 8,),
                        Text(itemList[index]["text2"],style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
                        const SizedBox(width: 20,),
                        Image(image: AssetImage(itemList[index]["image1"]),height: 20,color: MyColor.splashBacColorTwo,),
                        const SizedBox(width: 10,),
                        Text(itemList[index]["text3"],style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
                      ],
                    ),
                  ],
                ),
              ),
              Transform.rotate(
                  angle: -3,
                  child: SvgPicture.asset(MyImage.backIcon,height: 25,))
            ],
          ),
        );
      },);
  }
}
