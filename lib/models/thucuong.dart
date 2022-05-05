import 'package:flutter/material.dart';

//MON PHAI THU
class thucuongphaithu {
  final String image, title, subtitle;
  final String gia;
  final int price;

  thucuongphaithu(
      {@required this.image,
      @required this.title,
      @required this.subtitle,
      @required this.gia,
      @required this.price});
}

// demo thucuong
thucuongphaithu thucuong1 = thucuongphaithu(
    title: "Trà Sữa Oolong Nướng",
    image: "assets/images/phaithu_1.png",
    subtitle:
        'Đậm đà chuẩn gu - bởi trà oolong nướng đậm vị hoà cùng lớp sữa thơm béo. Hương vị chân ái đúng gu đậm đà - trà oolong được "sao" (nướng) lâu hơn cho vị đậm đà, hoà quyện với sữa thơm ngậy. Cho từng ngụm mát lạnh, lưu luyến vị trà sữa đậm đà mãi nơi cuống họng.',
    gia: "50.000đ",
    price: 50000);
thucuongphaithu thucuong2 = thucuongphaithu(
    title: "Trà đen Macchiato",
    image: "assets/images/phaithu_2.png",
    subtitle:
        'Trà đen được ủ mới mỗi ngày, giữ nguyên được vị chát mạnh mẽ đặc trưng của lá trà, phủ bên trên là lớp Macchiato "homemade" bồng bềnh quyến rũ vị phô mai mặn mặn mà béo béo.',
    gia: "50.000đ",
    price: 50000);
thucuongphaithu thucuong3 = thucuongphaithu(
    title: "Hồng Trà Lattle Macchiato",
    image: "assets/images/phaithu_3.png",
    subtitle:
        "Đúng gu tinh tế, healthy với vị trà nhẹ nhàng, quyện cùng sữa tươi và macchiato thơm béo. Sự kết hợp hoàn hảo bởi hồng trà dịu nhẹ và sữa tươi, nhấn nhá thêm lớp macchiato trứ danh của Nhà, cho bạn từng ngụm thưởng thức tinh tế, dễ chịu.",
    gia: "50.000đ",
    price: 50000);

//CA PHE CATEGORY
class thucuongcaphe {
  final String image, title, subtitle;
  final String gia;
  final int price;
  thucuongcaphe(
      {@required this.image,
      @required this.title,
      @required this.subtitle,
      @required this.gia,
      @required this.price});
}

thucuongcaphe cafe1 = thucuongcaphe(
    image: "assets/images/cafe_1.png",
    title: "Cà Phê Sữa Đá",
    subtitle:
        "Cà phê phin kết hợp cùng sữa đặc là một sáng tạo đầy tự hào của người Việt Nam",
    gia: "32.000đ",
    price: 32000);
thucuongcaphe cafe2 = thucuongcaphe(
    image: "assets/images/cafe_2.png",
    title: "Bạc Xỉu",
    subtitle:
        'Theo chân những người gốc Hoa đến định cư tại Sài Gòn, Bạc sỉu là cách gọi tắt của "Bạc tẩy sỉu phé" trong tiếng Quảng Đông, chính là: Ly sữa trắng kèm một chút cà phê.',
    gia: "32.000đ",
    price: 32000);
thucuongcaphe cafe3 = thucuongcaphe(
    image: "assets/images/cafe_3.png",
    title: "Cà Phê Đen",
    subtitle:
        'Một tách cà phê đen thơm ngào ngạt, phảng phất mùi cacao là món quà tự thưởng tuyệt vời nhất cho những ai mê đắm tinh chất nguyên bản nhất của cà phê. Một tách cà phê trầm lắng, thi vị giữa dòng đời vồn vã.',
    gia: "32.000đ",
    price: 32000);

class sizing {
  final String title;
  final String gia;
  final int price;

  sizing({@required this.title, @required this.gia, @required this.price});
}

sizing sizing1 = sizing(title: "Vừa", gia: "+ 0đ", price: 0);
sizing sizing2 = sizing(title: "Lớn", gia: "+ 5.000đ", price: 5000);

class topping {
  final String title;
  final String gia;
  final int price;

  topping({@required this.title, @required this.gia, @required this.price});
}

topping topping1 =
    topping(title: "Trân châu trắng", gia: "+ 10.000đ", price: 10000);
topping topping2 =
    topping(title: "Trân châu đen", gia: "+ 10.000đ", price: 10000);
topping topping3 =
    topping(title: "Trân châu Hoàng kim", gia: "+ 10.000đ", price: 14000);

class tratraicay {
  final String image, title, subtitle;
  final String gia;
  final int price;

  tratraicay(
      {@required this.image,
      @required this.title,
      @required this.subtitle,
      @required this.gia,
      @required this.price});
}

tratraicay tra1 = tratraicay(
    title: "Trà trái vải",
    image: "assets/images/tra1.png",
    subtitle:
        'Là thức uống "bắt vị" được lấy cảm hứng từ trái Vải - thức quả tròn đầy, quen thuộc trong cuộc sống người Việt - kết hợp cùng Trà làm từ những lá trà tươi hảo hạng.',
    gia: "45.000đ",
    price: 45000);
tratraicay tra2 = tratraicay(
    title: "Trà hạt sen",
    image: "assets/images/tra2.png",
    subtitle:
        'Sự kết hợp của Trà hương thơm nhẹ, vị nồng hậu cùng Hạt sen tươi mềm có vị ngọt, sáp, vừa ngon miệng vừa có tác dụng an thần, tốt cho cơ thể.',
    gia: "45.000đ",
    price: 45000);
tratraicay tra3 = tratraicay(
    title: "Trà đào cam sả",
    image: "assets/images/tra3.png",
    subtitle:
        'Vị thanh ngọt của đào Hy Lạp, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này. Sản phẩm hiện có 2 phiên bản Nóng và Lạnh phù hợp cho mọi thời gian trong năm.',
    gia: "45.000đ",
    price: 45000);

class daxay {
  final String image, title, subtitle;
  final String gia;
  final int price;

  daxay(
      {@required this.image,
      @required this.title,
      @required this.subtitle,
      @required this.gia,
      @required this.price});
}

daxay daxay1 = daxay(
    title: "Cà phê đá xay",
    image: "assets/images/dx1.png",
    subtitle:
        'Một phiên bản "upgrade" từ ly cà phê sữa quen thuộc, nhưng lại đầy tỉnh táo và tươi mát hơn bởi lớp đá xay mát lạnh đi kèm. Nhấp 1 ngụm là thấy đã, ngụm thứ hai thêm tỉnh táo và cứ thế lôi cuốn bạn đến giọt cuối cùng.',
    gia: "58.000đ",
    price: 58000);
daxay daxay2 = daxay(
    title: "Cookies đá xay",
    image: "assets/images/dx2.png",
    subtitle:
        'Những mẩu bánh cookies giòn rụm kết hợp ăn ý với sữa tươi và kem tươi béo ngọt, đem đến cảm giác lạ miệng gây thích thú. Một món uống phá cách dễ thương.',
    gia: "58.000đ",
    price: 58000);
daxay daxay3 = daxay(
    title: "Sô-cô-la đá xay",
    image: "assets/images/dx3.png",
    subtitle:
        'Vị đắng của cà phê kết hợp cùng vị cacao ngọt ngào của sô-cô-la, vị sữa tươi ngọt béo, đem đến trải nghiệm vị giác cực kỳ thú vị.',
    gia: "65.000đ",
    price: 65000);
