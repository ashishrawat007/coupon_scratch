import 'package:coupon_scratch/common/file_exports.dart';

class ClosedCoupon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
        "assets/gifti.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
