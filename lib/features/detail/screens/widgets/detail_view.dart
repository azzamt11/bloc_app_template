import 'package:flutter/material.dart';
import 'package:bloc_app_template/features/detail/screens/widgets/detail_header_view.dart';
import 'package:bloc_app_template/features/detail/screens/widgets/detail_overview_view.dart';
import 'package:bloc_app_template/features/detail/screens/widgets/detail_review_view.dart';
import 'package:bloc_app_template/models/show_detail.dart';
import 'package:bloc_app_template/utilities/context_extensions.dart';
import 'package:bloc_app_template/widgets/kai_gap.dart';

class DetailView extends StatelessWidget {
  const DetailView(this.showDetail, {super.key});

  final ShowDetail showDetail;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: context.screenPadding.copyWith(left: 0, right: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderView(showDetail),
          KaiGap.s15,
          OverviewView(showDetail.overview),
          KaiGap.s20,
          if (showDetail.reviews.isNotEmpty) ReviewsView(showDetail.reviews),
        ],
      ),
    );
  }
}
