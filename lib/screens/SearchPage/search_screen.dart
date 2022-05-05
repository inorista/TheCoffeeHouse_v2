import 'package:flutter/material.dart';
import 'package:travel/size_config.dart';
import '../../models/quan.dart';

final adress = listS;
List<quan> timQuan;

class buildsearchScreen extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const buildsearchScreen({Key key, this.onChanged}) : super(key: key);
  @override
  SearchScreen createState() {
    return new SearchScreen();
  }
}

class SearchScreen extends State<buildsearchScreen> {
  List<quan> timQuan;
  String query = '';
  @override
  void initState() {
    super.initState();
    timQuan = adress;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: new SafeArea(
            child: Container(
                height: height + 100,
                child: Stack(children: [
                  Container(
                    padding: EdgeInsets.only(top: 60),
                    child: ListView.builder(
                      itemCount: timQuan.length,
                      itemBuilder: (context, index) {
                        final render = timQuan[index];
                        return buildQuan(render, height, width);
                      },
                    ),
                  ),
                  Positioned(
                      top: 0,
                      child: Container(
                        padding: EdgeInsets.only(left: 12, right: 12),
                        height: 58,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              width: 0.5,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 12, right: 12),
                                height: 40,
                                width: width - 66,
                                decoration: BoxDecoration(
                                  color: Color(0xffe2e2e2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                child: Row(children: [
                                  Container(
                                      padding: EdgeInsets.only(right: 12),
                                      child: Image.asset(
                                          "assets/images/search.png",
                                          height: 16)),
                                  Flexible(
                                      child: Opacity(
                                          opacity: 0.8,
                                          child: TextField(
                                              autocorrect: true,
                                              keyboardType: TextInputType
                                                  .number,
                                              style: TextStyle(fontSize: 16),
                                              textAlign: TextAlign.left,
                                              maxLines: 1,
                                              decoration:
                                                  InputDecoration.collapsed(
                                                      hintText:
                                                          "Tìm theo quận huyện"),
                                              onChanged: Filter))),
                                ])),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                  padding: EdgeInsets.only(left: 12),
                                  width: 40,
                                  child: Text("Hủy",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffb86d30),
                                      ))),
                            )
                          ],
                        ),
                      )),
                ]))));
  }

  void Filter(String query) {
    timQuan = adress.where((quan) {
      final titleLower = quan.ad_eng.toLowerCase();
      final searchLower = query.toLowerCase();
      return titleLower.contains(searchLower);
    }).toList();
    setState(() {
      this.query = query;
      this.timQuan = timQuan;
    });
  }

  Container buildQuan(quan Quan, double height, double width) {
    return Container(
        margin: EdgeInsets.only(top: 4, left: 12, right: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: Colors.white,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: height / 12,
                  width: height / 12,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      child: Image.asset(Quan.image, fit: BoxFit.fill))),
              Container(
                  padding: EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("THE COFFEE HOUSE",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff666666),
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.5)),
                      Container(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          constraints: BoxConstraints(
                              maxWidth: width / 1.5, maxHeight: 52),
                          child: Opacity(
                              opacity: 0.9,
                              child: Text(
                                Quan.address_full,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(fontSize: 16),
                              ))),
                      Opacity(
                          opacity: 0.7,
                          child: Text(
                            "Cách đây " + Quan.far + " km",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ))
                    ],
                  ))
            ],
          )
        ]));
  }
}
