import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class BookCouchBottomsheet extends StatefulWidget {
  const BookCouchBottomsheet({super.key});

  @override
  State<BookCouchBottomsheet> createState() => _BookCouchBottomsheetState();
}
final List<Map<String,dynamic>>itmes=[
  {"cardName":"Master Card","logo":MyImage.masterCard,"radiofilled":MyImage.radioButtonFilled,"radionotfilled":MyImage.radioButtonNotFilled},
  {"cardName":"Visa Pay","logo":MyImage.visaCard,"radiofilled":MyImage.radioButtonFilled,"radionotfilled":MyImage.radioButtonNotFilled},
  {"cardName":"Google Pay","logo":MyImage.googlePay,"radiofilled":MyImage.radioButtonFilled,"radionotfilled":MyImage.radioButtonNotFilled},
  {"cardName":"Amazon Pay","logo":MyImage.amazonPay,"radiofilled":MyImage.radioButtonFilled,"radionotfilled":MyImage.radioButtonNotFilled},
];
int selectIndex=1;
class _BookCouchBottomsheetState extends State<BookCouchBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(35),),
        color: MyColor.whiteColor
      ),
        child: Column(
        children: [
          Container(
            height: 4,
        width: 70,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
          color: MyColor.grayColor.withAlpha(100)
    ),
    ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Personal Information",style: regularTextStyle24),
              Image(image: AssetImage(MyImage.questionMarkIcon),height: 25,color: MyColor.grayColor.withAlpha(150),),
            ],
          ),
          const SizedBox(height: 15,),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: itmes.length,
            itemBuilder: (context, index) {
              bool isSelect=index==selectIndex;
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectIndex=index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 13),
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColor.borderColor,
                    boxShadow: [
                      BoxShadow(
                          color: isSelect?MyColor.splashBacColor.withAlpha(150):Colors.transparent,
                          spreadRadius: isSelect?5:0,
                          blurRadius: isSelect?3:0
                      )
                    ]
                ),
                child: Row(
                  children: [
                    Expanded(child: Text(itmes[index]["cardName"],style: regularTextStyle24.copyWith(fontSize: 16),)),
                    Image(image: AssetImage(itmes[index]["logo"]),height: 50,width: 60,),
                    const SizedBox(width: 10,),
                    Image(image:AssetImage( isSelect?itmes[index]["radiofilled"]:itmes[index]["radionotfilled"]),height: 25,width: 25,),
                  ],
                ),
              ),
            );
          },
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 54,
            child: ElevatedButton(
              onPressed: () {
             Navigator.pushNamed(context, RouteHelper.personalizePageTen);
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
                    "Select",
                    style: regularTextStyle24.copyWith(
                        color: MyColor.whiteColor, fontSize: 16),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                  )
                ],
              ),
            ),
          ),
      ],
    ),
    );
  }
}
