import 'package:flutter/material.dart';
import 'homescreen.dart';

class CreateAccountBody extends StatefulWidget {
  @override
  _CreateAccountBody createState() => _CreateAccountBody();
}

class _CreateAccountBody extends State<CreateAccountBody> {
  DateTime _dateTime;
  String genderSelection;
  List listItem = ["Nam", "Nữ", "Khác"];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: MaterialButton(
                    elevation: 10,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white38),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {},
                    color: Colors.white70,
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          labelText: "Nhập tên của bạn *",
                          labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: MaterialButton(
                    elevation: 10,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white38),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {},
                    color: Colors.white70,
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          labelText: "Nhập họ của bạn",
                          labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: MaterialButton(
                    elevation: 10,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white38),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {},
                    color: Colors.white70,
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          labelText: "Email của bạn",
                          labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: MaterialButton(
                    elevation: 10,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white38),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {},
                    color: Colors.white70,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(_dateTime == null
                              ? "Chọn ngày sinh"
                              : _dateTime.toString()),
                          Text(
                            "",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black38,
                            ),
                          ),
                          IconButton(
                              padding: const EdgeInsets.only(left: 17.5),
                              icon: new Icon(
                                Icons.date_range,
                                size: 25,
                                color: Colors.brown,
                              ),
                              onPressed: () {
                                showDatePicker(
                                        context: context,
                                        initialDate: _dateTime == null
                                            ? DateTime.now()
                                            : _dateTime,
                                        firstDate: DateTime(2001),
                                        lastDate: DateTime(2222))
                                    .then((date) {
                                  setState(() {
                                    _dateTime = date;
                                  });
                                });
                              })
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: MaterialButton(
                    elevation: 10,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white38),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {},
                    color: Colors.white70,
                    child: DropdownButton(
                      elevation: 10,
                      isExpanded: true,
                      underline: SizedBox(),
                      hint: Text(
                        "Chọn giới tính",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      dropdownColor: Colors.white,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      iconSize: 30,
                      value: genderSelection,
                      onChanged: (newValue) {
                        setState(() {
                          genderSelection = newValue;
                        });
                      },
                      items: listItem.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(
                            valueItem,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: MaterialButton(
                  minWidth: double.infinity,
                  elevation: 2,
                  height: 50,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white38),
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  color: Colors.black12,
                  child: Text(
                    "Tạo tài khoản",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }
}
