// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';

class ReBookingCard2 extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ReBookingCard2 createState() => _ReBookingCard2();
}

class _ReBookingCard2 extends State<ReBookingCard2> {
  String content =
      "Lăng Chủ tịch Hồ Chí Minh là nơi lưu giữ di hài của Bác và là điểm đến mà mỗi thế hệ người Việt đều mong mỏi viếng thăm để bày tỏ tình cảm và lòng biết ơn sâu sắc dành cho vị cha già dân tộc. Lăng Chủ tịch Hồ Chí Minh hay Lăng Hồ Chủ tịch còn được gọi với tên thân thương là lăng Bác tọa lạc tại địa chỉ số 2 Hùng Vương, thuộc phường Điện Biên, quận Ba Đình, TP. Hà Nội. Công trình là nơi gìn giữ di hài của Bác theo nguyện vọng, tình cảm của Ban chấp hành trung ương Đảng và nhân dân. Lăng Bác được khởi công vào ngày 02/9/1973 và khánh thành vào ngày 29/8/1975. Công trình lăng Bác được xây dựng gồm 3 lớp, cao 21,6 mét và rộng 41,2 mét. Bên dưới là bậc thềm tam cấp dẫn lên kết cấu trung tâm với phòng di hài và những hành lang, cầu thang. Phần trên cùng là mái lăng được thiết kế theo hình tam cấp. Bên ngoài lăng được ốp đá granite xám, quanh bốn mặt là những hàng cột đá hoa cương vuông vức và ở giữa nổi bật dòng chữ “CHỦ TỊCH HỒ-CHÍ-MINH” bằng đá hồng có màu mận chín. Khu vực bên trong được làm bằng chất liệu đá xám và đỏ được đánh bóng. Khuôn viên quanh lăng trồng nhiều loài cây, hoa đặc trưng của các vùng miền trên cả nước. Đây là điểm tham quan nổi tiếng của Thủ đô, nơi bất kỳ người dân Việt Nam nào cũng muốn được đặt chân đến một lần.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        leadingWidth: 150,
        toolbarHeight: 100,
      ),
      // ignore: prefer_const_constructors
      body: ListView(
        padding: EdgeInsets.all(14),
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/langbac.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  height: 400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                  bottom: 10,
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lăng Chủ tịch Hồ Chí Minh",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            ),
                            Text(
                              "3K",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 30,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Container(
                  child: ReadMoreText(
                    content,
                    trimLines: 10,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Xem thêm ",
                    trimExpandedText: " Ẩn bớt ",
                    lessStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                  left: 100,
                  right: 100,
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Rebooking now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
