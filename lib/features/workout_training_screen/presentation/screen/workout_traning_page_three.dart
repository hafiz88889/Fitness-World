import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/workout_training_screen/presentation/widget/page_three_bottomsheet.dart';
import 'package:fitnessworld/features/workout_training_screen/presentation/widget/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WorkoutTraningPageThree extends StatefulWidget {
  const WorkoutTraningPageThree({super.key});

  @override
  State<WorkoutTraningPageThree> createState() => _WorkoutTraningPageThreeState();
}
final List<Map<String, dynamic>> products = [
  {"image": MyImage.pushUpMan,"text1":"Muai Thai Cardio","text2":"Min Maguson","text3":"800k","text4":"578kcal"},
  {"image": MyImage.gymLady,"text1":"Hit Interval","text2":"Muai Sakurajama","text3":"150k","text4":"578kcal"},
  {"image": MyImage.gymLady,"text1":"Hit Interval","text2":"Muai Sakurajama","text3":"150k","text4":"578kcal"},
  {"image": MyImage.gymLady,"text1":"Hit Interval","text2":"Muai Sakurajama","text3":"150k","text4":"578kcal"},

];
class _WorkoutTraningPageThreeState extends State<WorkoutTraningPageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                color: MyColor.blackColor
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.borderColor.withAlpha(150)
                      ),
                      child: SvgPicture.asset(MyImage.backIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text("Search Workout",style: regularTextStyle24.copyWith(fontSize: 30,color: MyColor.whiteColor),),
                  const TextFieldWorkOutTraning(),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(10),
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage(products[index]["image"]),fit: BoxFit.cover)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: MyColor.grayColor.withAlpha(120)
                          ),
                          child: Text("CickBoxing",style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.whiteColor),),
                        ),
                        const SizedBox(height: 30,),
                        Text(products[index]["text1"],style: regularTextStyle24.copyWith(color: MyColor.blackColor,fontSize: 30),),
                        const SizedBox(height: 5,),
                        Text(products[index]["text2"],style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 16),),
                        const SizedBox(height: 35,),
                        Row(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(MyImage.visibilityIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),
                                    const SizedBox(width: 5,),
                                    Text(products[index]["text3"],style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),),
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: (){
                               showModalBottomSheet(
                                 isDismissible: true,
                                   isScrollControlled: true,
                                   context: context, builder: (context) {
                                     return FractionallySizedBox(
                                       heightFactor: 0.80,
                                       child: PageThreeBottomsheet(),
                                     );
                                   },);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: MyColor.splashBacColor,
                                ),
                                child: Image(image: AssetImage(MyImage.playIcon),height: 20,width: 20,color: MyColor.whiteColor,),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(MyImage.fireIcon,colorFilter: ColorFilter.mode(MyColor.grayColor, BlendMode.srcIn),),
                            Text(products[index]["text4"],style: regularTextStyle18.copyWith(color: MyColor.grayColor,fontSize: 14),)
                          ],
                        ),

                      ],
                    ),
                  );
                },
            )
          ],
        ),
      ),
    );
  }
}
