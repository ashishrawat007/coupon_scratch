import 'package:coupon_scratch/common/file_exports.dart';

class OpenedCoupon extends StatelessWidget {

  final value;
  OpenedCoupon({required this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CommonStyles.openContainerDecoration,
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text:
              "₹ ${value}  ",
              children: const [
                TextSpan(
                  text: 'Cashback',
                ),
              ],
              style: Theme.of(context).textTheme.subtitle1
          ),
        ),
      ),
    );
  }
}
