import 'package:emart/consts/consts.dart';
import 'package:emart/views/category_screen/item_details.dart';
import 'package:emart/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  6,
                  (index) => "Baby Clothing"
                      .text
                      .size(12)
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .white
                      .rounded
                      .size(110, 60)
                      .margin(EdgeInsets.symmetric(horizontal: 4))
                      .make()),
            ),
          ),
          20.heightBox,
          Expanded(
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imgP5,
                            height: 150, width: 200, fit: BoxFit.cover),
                        "Laptop 4GB/64GB"
                            .text
                            .fontFamily(semibold)
                            .color(Vx.black)
                            .make(),
                        10.heightBox,
                        "\$600"
                            .text
                            .color(darkBlue)
                            .fontFamily(bold)
                            .size(18)
                            .make()
                      ],
                    )
                        .box
                        .white
                        .margin(EdgeInsets.symmetric(horizontal: 5))
                        .roundedSM
                        .outerShadowSm
                        .padding(const EdgeInsets.all(12))
                        .make()
                        .onTap(() {
                      Get.to(() => ItemDetails(title: "Dummy item"));
                    });
                  }))
        ]),
      ),
    ));
  }
}
