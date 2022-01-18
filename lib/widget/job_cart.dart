import 'package:find_job/model/category_model.dart';
import 'package:find_job/pages/cate_page.dart';
import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';

class jobCart extends StatelessWidget {
  final CateModel category;

  jobCart({this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => detailePage(category: category),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        margin: const EdgeInsets.only(right: defaultMargin),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              category.imageUrl,
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            category.name,
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      ),
    );
  }
}
