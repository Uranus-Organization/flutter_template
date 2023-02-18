import 'package:flutter/material.dart';
import 'package:quiche_vpn/util/util.dart';
import '../../../domain/model/dish.dart';

class GoldBodyWidget extends StatelessWidget {
  const GoldBodyWidget({
    required this.data,
    Key? key,
  }) : super(key: key);

  final List<Dish> data;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          final item = data[index];
          return Container(
            padding: const EdgeInsets.all(24),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppText.h3(item.name ?? ''),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: AppText.h4(item.category ?? ''),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: AppText.primary(item.description ?? ''),
                ),
                const SizedBox(height: 10),
                AppText.currency('\$${item.price ?? '0'}'),
              ],
            ),
          );
        },
        separatorBuilder: (_, __) {
          return Padding(
            padding: EdgeInsets.all(5.h),
            child: const Divider(
              color: AppColor.lightGray,
            ),
          );
        },
        itemCount: data.length);
  }
}
