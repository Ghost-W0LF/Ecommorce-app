import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomorce/common/Widgets/rounded%20Image/roundedImage.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/constants/imagge_string.dart';
import 'package:ecomorce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class banner_pageIndicator extends StatefulWidget {
  const banner_pageIndicator({
    super.key,
  });

  @override
  State<banner_pageIndicator> createState() => _banner_pageIndicatorState();
}

class _banner_pageIndicatorState extends State<banner_pageIndicator> {
  int currentIndex = 0;
  List<Widget> itemsList = [
    roundedImage(
      imageUrl: TImage.banner1,
    ),
    roundedImage(
      imageUrl: TImage.banner2,
    ),
    roundedImage(
      imageUrl: TImage.banner3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSize.md),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: false,
                  initialPage: 0,
                  viewportFraction: 1,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              items: itemsList,
            ),
            const SizedBox(
              height: TSize.spaceBtwitems,
            ),
            //PAGE INDICATOR
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  itemsList.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 10,
                          width: index == currentIndex ? 20 : 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Tcolors.white),
                              color: index == currentIndex
                                  ? Tcolors.primary
                                  : Tcolors.darkGrey,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      )),
            )
          ],
        ));
  }
}
