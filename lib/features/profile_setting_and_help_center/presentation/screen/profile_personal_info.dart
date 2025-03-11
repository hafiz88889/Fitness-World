import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/features/sing_in_sign_up_screen/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/my_image.dart';

class ProfileSettingPageThree extends StatefulWidget {
  const ProfileSettingPageThree({super.key});

  @override
  State<ProfileSettingPageThree> createState() => _ProfileSettingPageThreeState();
}
final List<Map<String,dynamic>> bodyParts = [
  {"gender":"Regular ",},
  {"gender":"Couch ",},
  {"gender":"Nutrition",},

];
int selectIndex = 1;
RangeValues _selectedRange = const RangeValues(10, 15);
String selectItem = "Male";
List<String> category = ["Male", "Female", "Biking", "Weight lifting"];
class _ProfileSettingPageThreeState extends State<ProfileSettingPageThree> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    color: MyColor.blackColor
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: MyColor.whiteColor.withAlpha(100),
                                ),
                                child: SvgPicture.asset(
                                  MyImage.backIcon,
                                  colorFilter: ColorFilter.mode(
                                      MyColor.whiteColor, BlendMode.srcIn),
                                ),
                              ),
                            ),
                            Text("Personal Info",style: regularTextStyle24.copyWith(color: MyColor.whiteColor,fontSize: 20),),
                            Container(
                              padding: const EdgeInsets.all(12),
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: MyColor.whiteColor.withAlpha(100),
                              ),
                              child: SvgPicture.asset(
                                MyImage.settingIcn,
                                colorFilter: ColorFilter.mode(
                                    MyColor.whiteColor, BlendMode.srcIn),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 140,
                  right: 140,
                  child:Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 120,
                        width: 110,
                        decoration: BoxDecoration(
                            color: MyColor.whiteColor,
                            borderRadius: BorderRadius.circular(35),
                            image: DecorationImage(
                                image: AssetImage(MyImage.ladyProfile),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: 100,
                        left: 40,
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: MyColor.whiteColor,width: 5),
                              borderRadius: BorderRadius.circular(15),
                              color: MyColor.splashBacColor),
                          child: Image(
                            image: AssetImage(MyImage.editIcon),
                            color: MyColor.whiteColor,
                            height: 15,
                          ),
                        ),
                      )
                    ],
                  ),

                ),
              ],
            ),
            const SizedBox(height: 70,),
            GlobalTextFieldWidget(title: "Full Name", hintText: "MHR",
              suffix:  Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image(image: AssetImage(MyImage.editIcon),height: 15,color: MyColor.blackColor.withAlpha(150),),
              ),
              prefix: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage(MyImage.userIcon),height: 15,color: MyColor.blackColor,),
            ),
            ),
            GlobalTextFieldWidget(title: "Email Address", hintText: "info@gmail.com",
              suffix:  Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image(image: AssetImage(MyImage.editIcon),height: 15,color: MyColor.blackColor.withAlpha(150),),
              ),
              prefix: Padding(
                padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(MyImage.emailIcon,colorFilter: ColorFilter.mode(MyColor.blackColor, BlendMode.srcIn),height: 30,)
              ),
            ),
            GlobalTextFieldWidget(title: "Password", hintText: "********",
              suffix:  Padding(
                padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(MyImage.visibilityIcon,colorFilter: ColorFilter.mode(MyColor.grayColor.withAlpha(150), BlendMode.srcIn),height: 30,)
              ),
              prefix: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(MyImage.lockIcon,colorFilter: ColorFilter.mode(MyColor.blackColor, BlendMode.srcIn),height: 30,)
              ),
            ),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 15),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Weight",style: regularTextStyle24.copyWith(fontSize: 20),),
                   Text("Kilogram",style: regularTextStyle24.copyWith(fontSize: 14,color: MyColor.grayColor.withAlpha(150)),),
                 ],
               ),
               RangeSlider(
                 labels: const RangeLabels("0", "15"),
                 values: _selectedRange,
                 min: 0,
                 max: 60,
                 divisions: 4,
                 activeColor: MyColor.splashBacColor,
                 inactiveColor: MyColor.borderColor,
                 onChanged: (RangeValues values) {
                   setState(() {
                     _selectedRange = values;
                   });
                 },
               ),
               Text("Gender",style: regularTextStyle24.copyWith(fontSize: 16),),
               const SizedBox(height: 10,),
               Container(
                 padding:
                 const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: MyColor.borderColor,
                 ),
                 child: DropdownButtonHideUnderline(
                   child: DropdownButton<String>(
                       dropdownColor: MyColor.whiteColor,
                       icon: Transform.rotate(
                         angle: -1.5,
                         child: SvgPicture.asset(MyImage.backIcon),
                       ),
                       value: selectItem,
                       isExpanded: true,
                       items: category.map((String selected) {
                         return DropdownMenuItem(
                           value: selected,
                           child: Text(selected),
                         );
                       }).toList(),
                       onChanged: (String? newValue) {
                         setState(() {
                           selectItem = newValue!;
                         });
                       }),
                 ),
               ),
               GlobalTextFieldWidget(title: "Location", hintText: "Tokyo Japan",
                 suffix:  Padding(
                   padding: const EdgeInsets.all(14.0),
                   child: Image(image: AssetImage(MyImage.editIcon),height: 15,color: MyColor.blackColor.withAlpha(150),),
                 ),
                 prefix: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Image(image: AssetImage(MyImage.locationIcon),height: 15,color: MyColor.blackColor.withAlpha(150),),
                 ),
               ),
               const SizedBox(height: 12,),
               SizedBox(
                 height: 66,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: 3,
                   itemBuilder: (context, index) {
                     bool isSelected = index == selectIndex;
                     return GestureDetector(
                       onTap: () {
                         setState(() {
                           selectIndex = index;
                         });
                       },
                       child: Container(
                         margin: const EdgeInsets.only(right: 10),
                         padding: const EdgeInsets.all(15),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(25),
                             color: isSelected
                                 ? MyColor.splashBacColorTwo
                                 : MyColor.borderColor,
                             border: Border.all(
                                 color: isSelected
                                     ? MyColor.whiteColor.withAlpha(150)
                                     : Colors.transparent,
                                 width: isSelected ? 5 : 0)),
                         child: Row(
                           children: [
                             Image(image: AssetImage(isSelected?MyImage.radioButtonFilled:MyImage.radioButtonNotFilled),height: 25,color: isSelected?MyColor.whiteColor:MyColor.blackColor,),
                             const SizedBox(width: 10,),
                             Text(bodyParts[index]["gender"],
                                 style: regularTextStyle18.copyWith(
                                     color: isSelected
                                         ? MyColor.whiteColor
                                         : MyColor.blackColor)),
                             const SizedBox(width: 8),
                           ],
                         ),
                       ),
                     );
                   },
                 ),
               ),
               const SizedBox(height: 20,),
               SizedBox(
                 height: 54,
                 child: ElevatedButton(
                   onPressed: () {
                     //    Navigator.pushNamed(context, RouteHelper.virtualFitnessPageTwentyTwo);
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
                         "Save Setting",
                         style: regularTextStyle24.copyWith(
                             color: MyColor.whiteColor, fontSize: 18),
                       ),
                       const SizedBox(
                         width: 10,
                       ),
                       SvgPicture.asset(MyImage.rightMark,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),)
                     ],
                   ),
                 ),
               ),
             ],
           ),

           )
          ],
        ),
      ),
    );
  }
}
