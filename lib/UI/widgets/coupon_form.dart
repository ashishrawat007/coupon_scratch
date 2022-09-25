import 'package:coupon_scratch/common/file_exports.dart';

class CouponForm extends StatefulWidget {
  const CouponForm({Key? key}) : super(key: key);

  @override
  _CouponFormState createState() => _CouponFormState();
}

class _CouponFormState extends State<CouponForm> {
  final _fieldController = TextEditingController();
  final couponFieldFocus = FocusNode();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _fieldController.dispose();
    couponFieldFocus.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CouponsProvider>(context, listen: false);
    final media = MediaQuery.of(context).size;
    double w = media.width;
    double h = media.height -
        (MediaQuery.of(context).padding.top + AppBar().preferredSize.height);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: h * 0.05),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty || !value.containsNumber) {
                return "Enter a valid Value";
              }
            },
            focusNode: couponFieldFocus,
            decoration: const InputDecoration(
                hintText: "Enter a Number"),
            keyboardType: TextInputType.number,
            controller: _fieldController,
          ),
          SizedBox(height: h * 0.05),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                maximumSize: Size(w, h * 0.9),
                minimumSize: Size(w, h * 0.08),
              ),
              onPressed: () async {
                if (_formKey.currentState?.validate() == true) {
                  couponFieldFocus.unfocus();
                  provider.addCoupons(no: int.parse(_fieldController.text));
                }
              },
              child: Text("Generate Coupons")),
          SizedBox(height: h * 0.05),

        ],
      ),
    );
  }
}
