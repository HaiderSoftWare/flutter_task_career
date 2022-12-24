import 'package:flutter/material.dart';
import 'package:flutter_task/model/category.dart';

import '../../components/category_data.dart';
import '../../components/custom_search_field.dart';
import '../../components/custom_shop_icon.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Category> item = categoryList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 14, right: 21, top: 8, bottom: 5),
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
                  const Expanded(
                    child: Text(
                      'SEARCH',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Custom_Shop_Icon(),
                ],
              ),
            ),
            Custom_Search_Field(
              onChanged: (name) {
                setState(() {
                  final suggestions = categoryList.where((element) {
                    final title = element.name!.toLowerCase();
                    final input = name.toLowerCase();
                    return title.contains(input);
                  }).toList();
                  item = suggestions;
                });
              },
            ),
            GridView.builder(
              itemCount: item.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
              ),
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
                            item[index].image.toString(),
                          ),
                        ),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        '${item[index].name}',
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
