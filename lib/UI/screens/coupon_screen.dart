import 'package:coupon_scratch/UI/widgets/coupon_form.dart';
import 'package:coupon_scratch/common/file_exports.dart';

class CouponScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    double w = media.width;
    double h = media.height -
        (MediaQuery.of(context).padding.top + AppBar().preferredSize.height);

    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            height: h,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                CouponForm(),
                Expanded(child: CouponsGridView())
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text("Home Screen"),
    );
  }
}
