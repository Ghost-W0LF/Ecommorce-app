import 'package:ecomorce/common/Widgets/custom_container.dart';
import 'package:ecomorce/utils/constants/colors.dart';
import 'package:ecomorce/utils/helpers/helper_function.dart';

import 'package:flutter/material.dart';


class textImage extends StatelessWidget {
  const textImage({
    super.key,
    required this.imageIcon,
    required this.imageText,
  });

  final List<String> imageIcon;
  final List<String> imageText;

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        SizedBox(
            height: 100,
            child: ListView.builder(

                //padding: EdgeInsets.all(9),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: imageIcon.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: custom_container(
                                  color:
                                      dark ? Tcolors.accent : Tcolors.LightGrey,
                                  height: 60,
                                  width: 60,
                                  rds: 200,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(
                                        image: AssetImage(imageIcon[index]),
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                        Center(
                          child: Text(
                            imageText[index],
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        )
                      ],
                    ),
                  );
                })),
      ],
    );
  }
}
