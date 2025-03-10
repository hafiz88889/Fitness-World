import 'package:fitnessworld/core/utils/my_color.dart';
import 'package:fitnessworld/core/utils/my_image.dart';
import 'package:fitnessworld/core/utils/my_text_style.dart';
import 'package:fitnessworld/core/utils/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommunityPageOne extends StatelessWidget {
  const CommunityPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ShaderMask(
              shaderCallback: (Rect bounds) {
                return  LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, MyColor.blackColor],
                ).createShader(bounds);
              },
              blendMode: BlendMode.darken,
              child: Image(
                image: AssetImage(MyImage.twoManOneWoman),
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 420,
              ),
              Text(
                "Fitness Community & Resource",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                  fontSize: 36,color: MyColor.whiteColor),
              ),
              const SizedBox(height: 10,),
              Text(
                "Say goodbye to manual nutrition .Ai\n nutrition is here for you!",
                textAlign: TextAlign.center,
                style: regularTextStyle24.copyWith(
                    fontSize: 16,
                    color: MyColor.whiteColor,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteHelper.communityPageTwo);
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
                          "Explore Community",
                          style: regularTextStyle24.copyWith(
                              color: MyColor.whiteColor, fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          MyImage.rightArrowIcon,colorFilter: ColorFilter.mode(MyColor.whiteColor, BlendMode.srcIn),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
