import 'package:find_job/model/job_model.dart';
import 'package:find_job/pages/apply_page.dart';
import 'package:find_job/theme.dart';
import 'package:flutter/material.dart';

class justPoste extends StatelessWidget {
  final JobModel job;

  justPoste(this.job);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => applyPage(job),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              job.companyLogo,
              width: 44,
              height: 45,
            ),
            const SizedBox(width: 27),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(job.name, style: jobStyle),
                  Text(job.companyName, style: jobStyle2),
                  const SizedBox(
                    height: 18,
                  ),
                  const Divider(
                    color: Color(0xffECEDF1),
                    thickness: 1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
