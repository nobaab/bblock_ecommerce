import 'package:bblock_ecommerce/common_widgets/appbar/custom_appbar.dart';
import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:bblock_ecommerce/features/categories/categories_details_screen.dart';
import 'package:bblock_ecommerce/utils/styles.dart';
import 'package:flutter/material.dart';

class AllCategoriesScrrenUI extends StatelessWidget {
  const AllCategoriesScrrenUI({super.key});

  static const id = "all_categories_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bTextWhiteColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: "Categories",
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: 20,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => Navigator.pushNamed(context, CategoriesDetailsUi.id),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                  color: filledColor,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 2, 5, 0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/electric.png",
                          height: 125,
                          width: 116,
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Electronics Devices",
                                style: popinsTitle.copyWith(color: bTextBlackColor),
                              ),
                              Text(
                                "Lorem ipsum is a placeh holder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content",
                                style: popinsDesc.copyWith(color: bTextBlackColor),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
