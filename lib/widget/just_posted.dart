import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';

class justPosted extends StatelessWidget {
  final String imageURL;
  final String jobText;
  final String comText;

  justPosted({this.imageURL, this.jobText, this.comText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageURL,
            width: 44,
            height: 45,
          ),
          SizedBox(width: 27),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(jobText, style: jobStyle),
                Text(comText, style: jobStyle2),
                SizedBox(
                  height: 18,
                ),
                Divider(
                  color: Color(0xffECEDF1),
                  thickness: 1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}