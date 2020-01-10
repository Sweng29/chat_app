import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => new _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedCategory = 0;
  List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedCategory = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30.0),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: index == selectedCategory
                        ? Colors.white
                        : Colors.white60,
                    letterSpacing: 1.3,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
