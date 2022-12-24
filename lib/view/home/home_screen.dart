import 'package:flutter/material.dart';
import 'package:flutter_task/view/search/search.dart';

import '../../components/category_data.dart';
import '../../components/custom_appbar.dart';
import '../../components/custom_search_field.dart';
import '../../components/shop_card.dart';
import '../../components/upload_card.dart';
import '../see_all/see_all.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const CostumAppbar(),
              Custom_Search_Field(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ),
                  );
                },
              ),
              const Upload_card(),
              const SizedBox(height: 17),

              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(left: 18, right: 18),
                    child: Shop_Card(),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              // ponit
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => buildDot(index: index),
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 21, right: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        'Popular Categories',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SeeAll(),
                          ),
                        );
                      },
                      child: const Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Expanded(
                child: GridView.builder(
                  itemCount: categoryList.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 94,
                          height: 97,
                          decoration: BoxDecoration(
                            color: const Color(0xffEFEDE9),
                            image: DecorationImage(
                              image: AssetImage(
                                categoryList[index].image.toString(),
                              ),
                            ),
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            '${categoryList[index].name}',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 8,
      width: currentPage == index ? 8 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.teal : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
