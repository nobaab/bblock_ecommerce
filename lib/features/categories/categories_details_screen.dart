import 'package:bblock_ecommerce/common_widgets/appbar/custom_appbar.dart';
import 'package:bblock_ecommerce/common_widgets/textfields/custom_search_filed.dart';
import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:bblock_ecommerce/utils/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CategoriesDetailsUi extends StatefulWidget {
  const CategoriesDetailsUi({super.key});

  static const id = "categories_details_screen";

  @override
  State<CategoriesDetailsUi> createState() => _CategoriesDetailsUiState();
}

class _CategoriesDetailsUiState extends State<CategoriesDetailsUi> {
  final List<String> imageUrls = [
    'assets/images/ads1.png',
    'assets/images/ads2.jpg',
    'assets/images/ads1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bTextWhiteColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: "Electronics Devices",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 2, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BblockSearchFiled(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    buildImageCarousel(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Text(
                      "Top Rated Electronics Devices",
                      style: popinsTitle.copyWith(
                        color: bTextBlackColor,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 5,
                      ),
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 2,
                          color: bTextWhiteColor,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/phone.png",
                                  height: 51,
                                  width: 73,
                                ),
                                Text("Smart Phone", style: popinsDesc.copyWith(color: bTextBlackColor, fontSize: 16)),
                                SizedBox(width: MediaQuery.of(context).size.width * 0.33),
                                Container(
                                  height: MediaQuery.sizeOf(context).height * 0.06,
                                  width: 2,
                                  color: customDividerColor,
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: bTextBlackColor,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageCarousel() {
    return CarouselSlider(
      items: imageUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Image.asset(url, fit: BoxFit.cover);
          },
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 16 / 7,
        enlargeCenterPage: true,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          setState(() {});
        },
      ),
    );
  }
}
