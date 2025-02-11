import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenEighteen extends StatefulWidget {
  const ScreenEighteen({super.key});

  @override
  State<ScreenEighteen> createState() => _ScreenEighteenState();
}
final TextEditingController _controller=TextEditingController();
int isMin=0;
const int isMax=250;
class _ScreenEighteenState extends State<ScreenEighteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: Padding(padding: const EdgeInsets.all(12),
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
              padding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 17),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColor.splashBacColorTwo.withAlpha(30)),
              child: Text(
                "17 of 18",
                style: regularTextStyle24.copyWith(
                    color: MyColor.splashBacColorTwo, fontSize: 14),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          "AI Textual Analysis",
          textAlign: TextAlign.center,
          style: regularTextStyle24.copyWith(fontSize: 30),
        ),
          const SizedBox(height: 12,),
          Text(
            "Freely write down any fitness concerns on your mind. Coach sandow AI will listen. 👍",
            textAlign: TextAlign.center,
            style: regularTextStyle18.copyWith(fontSize: 16,color: MyColor.grayColor),
          ),
          const SizedBox(height: 40,),
          Expanded(
              child:Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: MyColor.borderColor,
                  border: Border.all(color: MyColor.grayColor,width: 5)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: TextField(
                          controller: _controller,
                          maxLines: null,
                          maxLength: isMax,
                        onChanged: (value){
                           setState(() {
                             isMin=value.length;
                           });
                        },
                          style: regularTextStyle18,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "I can’t do more than 22 squats. Also my elbow can’t bend above 24°. Is this fine, coach? xD",
                            hintStyle: regularTextStyle18.copyWith(color: MyColor.grayColor.withAlpha(100)),
                            counterText: ""
                          ),
                        ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: MyColor.whiteColor
                              ),
                              child: SvgPicture.asset(MyImage.arrowRoundLaft),
                            ) ,
                            const SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: MyColor.whiteColor
                              ),
                              child: SvgPicture.asset(MyImage.arrowRoundRight),
                            ) ,
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(MyImage.copyIcon),
                            Text("$isMin/$isMax",style: regularTextStyle18.copyWith(
                              fontSize: 16,fontWeight: FontWeight.w700,color: MyColor.blackColor.withAlpha(100)
                            ),),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ) ,
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColor.splashBacColorTwo,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),side: BorderSide(width: 5,color: MyColor.whiteColor.withAlpha(150)))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(MyImage.voiceIcon),
                    const SizedBox(width: 10,),
                    Text("Use voice Instead",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor,),)
                  ],
                )),
          ),
          const SizedBox(height: 40,),
          SizedBox(
            height: 56,
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, RouteHelper.profileScreenOne);
            },
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyColor.blackColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Continue",style: regularTextStyle24.copyWith(fontSize: 16,color: MyColor.whiteColor,),),
                    const SizedBox(width: 10,),
                    SvgPicture.asset(MyImage.rightArrowIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),),
                  ],
                )),
          ),
        ],
      ),
      ),
    );
  }
}


//
// import 'package:flutter/material.dart';
//
// class TextualAnalysisScreen extends StatefulWidget {
//   @override
//   _TextualAnalysisScreenState createState() => _TextualAnalysisScreenState();
// }
//
// class _TextualAnalysisScreenState extends State<TextualAnalysisScreen> {
//   final TextEditingController _controller = TextEditingController();
//   int charCount = 0;
//   final int maxChars = 250;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () {
//             // Navigate back
//           },
//         ),
//         title: Text(
//           "Assessment",
//           style: TextStyle(color: Colors.black),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Center(
//               child: Text(
//                 "17 of 17",
//                 style: TextStyle(color: Colors.black, fontSize: 16),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Header
//             Text(
//               "AI Textual Analysis",
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text(
//               "Freely write down any fitness concerns on your mind. Coach Sandow AI will listen. 👍",
//               style: TextStyle(fontSize: 16, color: Colors.grey),
//             ),
//             SizedBox(height: 16),
//
//             // Input field
//             Expanded(
//               child: Container(
//                 padding: const EdgeInsets.all(16.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   border: Border.all(color: Colors.grey),
//                   color: Colors.grey[100],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         controller: _controller,
//                         maxLength: maxChars,
//                         maxLines: null,
//                         onChanged: (value) {
//                           setState(() {
//                             charCount = value.length;
//                           });
//                         },
//                         style: TextStyle(fontSize: 16),
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: "Type your thoughts here...",
//                           counterText: ""
//                         ),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         // Undo and redo buttons
//                         Row(
//                           children: [
//                             IconButton(
//                               icon: Icon(Icons.undo),
//                               onPressed: () {
//                                 // Handle undo
//                               },
//                             ),
//                             IconButton(
//                               icon: Icon(Icons.redo),
//                               onPressed: () {
//                                 // Handle redo
//                               },
//                             ),
//                           ],
//                         ),
//                         // Character count
//                         Text(
//                           "$charCount/$maxChars",
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//
//             // "Use voice instead" button
//             ElevatedButton(
//               onPressed: () {
//                 // Handle voice input action
//               },
//               style: ElevatedButton.styleFrom(
//                 minimumSize: Size(double.infinity, 50),
//                 backgroundColor: Colors.blue,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               child: Text(
//                 "Use voice instead",
//                 style: TextStyle(color: Colors.white, fontSize: 16),
//               ),
//             ),
//             SizedBox(height: 16),
//
//             // Continue button
//             ElevatedButton(
//               onPressed: () {
//                 // Continue action
//               },
//               style: ElevatedButton.styleFrom(
//                 minimumSize: Size(double.infinity, 50),
//                 backgroundColor: Colors.black,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Continue",
//                     style: TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                   SizedBox(width: 8),
//                   Icon(Icons.arrow_right_alt, color: Colors.white),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
