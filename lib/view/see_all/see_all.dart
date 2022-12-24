import 'package:flutter/material.dart';

import '../../components/category_data.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 21, right: 21, top: 20, bottom: 20),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  const Text(
                    'Popular Categories',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            GridView.builder(
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
          ],
        ),
      ),
    );
  }
}
