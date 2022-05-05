import 'package:flutter/material.dart';
import 'package:travel/size_config.dart';
import '../../../../loginForm_/login.dart';

class box_tichdiem extends StatelessWidget {
  const box_tichdiem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.only(left: 12, right: 12),
        padding: EdgeInsets.only(top: 4, bottom: 14),
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 0.8,
                    blurRadius: 1.2,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.only(top: 18),
              child: Image.asset(
                "assets/images/card.png",
                height: 32,
              ),
            ),
            VerticalSpacing(
              of: 26,
            ),
            Container(
              constraints: BoxConstraints(maxWidth: width - 80),
              child: Opacity(
                opacity: 0.8,
                child: Text(
                  "Sử dụng app để tích điểm và đổi những ưu đãi chi dành riêng cho thành viên bạn nhé!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "OpenSans",
                  ),
                ),
              ),
            ),
            VerticalSpacing(of: 20),
            Container(
                padding:
                    EdgeInsets.only(bottom: 4, top: 4, left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Color(0xffe3c8ae)),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Text("Đăng nhập",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "OpenSans_Bold",
                        fontWeight: FontWeight.w700,
                        color: Color(0xffb86d30),
                      )),
                ))
          ],
        ));
  }
}
