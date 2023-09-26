import 'package:bblock_ecommerce/common_widgets/textfields/custom_search_filed.dart';
import 'package:bblock_ecommerce/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenUI extends StatefulWidget {
  const HomeScreenUI({super.key});
  static const id = 'home_screen_ui';

  @override
  State<HomeScreenUI> createState() => _HomeScreenUiState();
}

class _HomeScreenUiState extends State<HomeScreenUI> {
  int currentIndex = 0; // Initialize currentIndex

  final List<String> imageUrls = [
    'assets/images/ads1.png',
    'assets/images/ads1.png',
    'assets/images/ads1.png',
  ];

  final List<Map<String, dynamic>> items = [
    {'image': 'assets/images/bike.png', 'text': 'Bike'},
    {'image': 'assets/images/mobile.png', 'text': 'Smart Phone'},
    {'image': 'assets/images/bike.png', 'text': 'Bike'},
    {'image': 'assets/images/mobile.png', 'text': 'Smart Phone'},
  ];

  final List<Map<String, dynamic>> categories = [
    {'image': 'assets/svg/grocery.svg', 'title': 'Grocery'},
    {'image': 'assets/svg/computer.svg', 'title': 'Electornics'},
    {'image': 'assets/svg/automobile.svg', 'title': 'AutoMobile'},
    {'image': 'assets/svg/furnitures.svg', 'title': 'Furnitures'},
    {'image': 'assets/svg/grocery.svg', 'title': 'Grocery'},
    {'image': 'assets/svg/computer.svg', 'title': 'Electornics'},
    {'image': 'assets/svg/automobile.svg', 'title': 'AutoMobile'},
    {'image': 'assets/svg/furnitures.svg', 'title': 'Furnitures'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bTextWhiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bTextWhiteColor,
        leading: IconButton(
          icon: SvgPicture.asset('assets/svg/login_icon.svg'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const BblockSearchFiled(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            buildImageCarousel(),
            buildImageIndicators(),
            buildCategorySection(),
            buildCategoryList(),
            buildTopRankingSection(),
            const SizedBox(height: 10),
            buildGridView(),
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
          setState(() {
            currentIndex = index; // Update currentIndex
          });
        },
      ),
    );
  }

  Widget buildImageIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imageUrls.asMap().entries.map((entry) {
        int index = entry.key;
        return Container(
          width: MediaQuery.of(context).size.width * 0.08,
          height: 5.0,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: currentIndex == index ? mainColor : Colors.grey[300],
          ),
        );
      }).toList(),
    );
  }

  Widget buildCategoryList() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: categories.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 64,
                width: 64,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: categoryColor),
                child: SvgPicture.asset(
                  categories[index]['image'],
                  fit: BoxFit.cover,
                  height: 24,
                  width: 24,
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              Text(
                categories[index]['title'],
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: bTextBlackColor),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildCategorySection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Categories",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600, color: bTextBlackColor),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "See All",
            style: TextStyle(color: mainColor),
          ),
        ),
      ],
    );
  }

  Widget buildTopRankingSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Top Ranking",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600, color: bTextBlackColor),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "See All",
            style: TextStyle(color: mainColor),
          ),
        ),
      ],
    );
  }

  Widget buildGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 3,
          margin: const EdgeInsets.all(10),
          color: bTextWhiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                items[index]['image'],
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 10),
              Text(
                items[index]['text'],
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
    );
  }
}
