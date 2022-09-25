
import 'package:coupon_scratch/common/file_exports.dart';

Future<dynamic> PhoneDialog({ctx, required CouponModel data}) {
  return showDialog(
    context: ctx,
    barrierDismissible: false,
    builder: (_) => AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Builder(
        builder: (context) {
          double height = MediaQuery.of(context).size.height;
          double width = MediaQuery.of(context).size.width;

          return Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Container(
                  width: width * 0.8,
                  height: height * 0.45,
                  color: Colors.blue.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Scratch Coupon",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Scratcher(
                          rebuildOnResize: false,
                          image: Image.asset("assets/gifti.png"),
                          brushSize: 30,
                          threshold: 30,
                          onChange: (value) {
                            final provider = Provider.of<CouponsProvider>(context,
                                listen: false);

                            if (value > 60.0) {
                              provider.changeCouponVisibility(
                                  key: data.couponKey);
                            }
                          },
                          color:
                              data.isScratched ? Colors.transparent : Colors.red,
                          child:
                          Container(
                            height: height * 0.23,
                            width: width * 0.45,
                            decoration: CommonStyles.openContainerDecoration,
                            child: Center(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text:
                                    "₹ ${data.value} \n",
                                    children: const [
                                      TextSpan(
                                        text: 'Cashback',
                                      ),
                                    ],
                                    style: Theme.of(context).textTheme.subtitle1
                                ),
                              ),
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(8)),
                  margin: EdgeInsets.only(top: 10, right: 10),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.clear,
                        color: Colors.black,
                      )))
            ],
          );
        },
      ),
    ),
  );
}
