import 'package:flutter/material.dart';

import '../../../../core/utils/my_color.dart';
import '../../../../core/utils/my_image.dart';
import '../../../../core/utils/my_text_style.dart';

class ReviewTabbarViewWdiget extends StatelessWidget {
  const ReviewTabbarViewWdiget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>>items=[
      {"image":MyImage.gymManFour,"headingText":"Md Hafizur Rahman","ratting":"4.5","days":"2d ago","description":"Fame has a deep understanding of various workout technical and tailored each search to match my goal s abi"},
      {"image":MyImage.gymManFour,"headingText":"Mr John","ratting":"3.5","days":"4d ago","description":"Fame has a deep understanding of various workout technical and tailored each search to match my goal s abi"},
      {"image":MyImage.gymManSeven,"headingText":"Mr Kobir","ratting":"4.2","days":"5d ago","description":"Fame has a deep understanding of various workout technical and tailored each search to match my goal s abi"},
      {"image":MyImage.gymManFour,"headingText":"Mr John","ratting":"3.5","days":"4d ago","description":"Fame has a deep understanding of various workout technical and tailored each search to match my goal s abi"},
      {"image":MyImage.gymManSeven,"headingText":"Mr Kobir","ratting":"4.2","days":"5d ago","description":"Fame has a deep understanding of various workout technical and tailored each search to match my goal s abi"},


    ];
    return  ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: 320,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyColor.borderColor),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image:
                            AssetImage(items[index]["image"]),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index]["headingText"],
                        style: regularTextStyle24,
                      ),
                      Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(MyImage.star),
                            height: 20,
                            color: MyColor.orangeColor,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            items[index]["ratting"],
                            style: regularTextStyle24.copyWith(
                                fontSize: 16,
                                color: MyColor.grayColor),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            items[index]["days"],
                            style: regularTextStyle24.copyWith(
                                fontSize: 16,
                                color: MyColor.grayColor),
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Image(
                    image: AssetImage(MyImage.threeDotMenuIcon),
                    height: 25,
                    color: MyColor.grayColor,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                items[index]["description"],maxLines: 3,overflow: TextOverflow.ellipsis,
                style: regularTextStyle24.copyWith(
                    fontSize: 14, color: MyColor.grayColor),
              ),
            ],
          ),
        );
      },
    );
  }
}
