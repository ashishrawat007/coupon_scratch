import 'package:coupon_scratch/common/file_exports.dart';

class CouponsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    double w = media.width;
    double h = media.height -
        (MediaQuery.of(context).padding.top + AppBar().preferredSize.height);

    return Consumer<CouponsProvider>(
      builder: (context, provider, child) {
        return GridView.builder(
          itemCount: provider.coupons.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 1 / 1),
          itemBuilder: (BuildContext context, int index) {
            return IgnorePointer(
              ignoring: provider.coupons[index].isScratched ? true : false,
              child: InkWell(
                  onTap: () async {
                    await PhoneDialog(
                        ctx: context, data: provider.coupons[index]);
                  },
                  child: provider.coupons[index].isScratched
                      ? OpenedCoupon(value: provider.coupons[index].value)
                      : ClosedCoupon()),
            );
          },
        );
      },
    );
  }
}
