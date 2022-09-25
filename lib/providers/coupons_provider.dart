


import 'package:coupon_scratch/common/file_exports.dart';

class CouponsProvider with ChangeNotifier
{
  List<CouponModel> _coupons = [];
  List<CouponModel> get coupons =>  [..._coupons];

  void addCoupons({no})
  {
    _coupons.clear();
    for( int i =1 ; i<=no;i++)
    {
      print(i);
      if((i/2)%2 == 0  || i ==1) //even
        _coupons.add(CouponModel(couponKey: i,value: 10));
      else if(i%2 == 0)
        _coupons.add(CouponModel(couponKey: i,value: 15));
      else{
        _coupons.add(CouponModel(couponKey: i,value: _coupons[i-2].value));
      }
    }
    notifyListeners();
  }

  void changeCouponVisibility({key})
  {
   var index = _coupons.indexWhere((element) => element.couponKey == key);
   _coupons[index].isScratched = true;
    notifyListeners();
  }
}