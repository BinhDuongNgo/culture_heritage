import 'package:flutter/material.dart';
import 'package:order_tracker/order_tracker.dart';
import 'package:another_stepper/another_stepper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';

class StepDelivery extends StatefulWidget {
  @override
  _StepDelivery createState() => _StepDelivery();
}

// class _StepDelivery extends State<StepDelivery> {
//   List<TextDto> orderList = [
//     TextDto("Your order has been placed", "Fri, 25th Mar '22 - 10:47pm"),
//     TextDto("Seller ha processed your order", "Sun, 27th Mar '22 - 10:19am"),
//     TextDto("Your item has been picked up by courier partner.",
//         "Tue, 29th Mar '22 - 5:00pm"),
//   ];

//   List<TextDto> shippedList = [
//     TextDto("Your order has been shipped", "Tue, 29th Mar '22 - 5:04pm"),
//     TextDto("Your item has been received in the nearest hub to you.", null),
//   ];

//   List<TextDto> outOfDeliveryList = [
//     TextDto("Your order is out for delivery", "Thu, 31th Mar '22 - 2:27pm"),
//   ];

//   List<TextDto> deliveredList = [
//     TextDto("Your order has been delivered", "Thu, 31th Mar '22 - 3:58pm"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return OrderTracker(
//       status: Status.delivered,
//       activeColor: Colors.green,
//       inActiveColor: Colors.grey[300],
//       orderTitleAndDateList: orderList,
//       shippedTitleAndDateList: shippedList,
//       outOfDeliveryTitleAndDateList: outOfDeliveryList,
//       deliveredTitleAndDateList: deliveredList,
//     );
//   }
// }

class _StepDelivery extends State<StepDelivery> {
  List<StepperData> stepperData = [
    StepperData(
      title: StepperText("7h30': Xe đưa đón"),
      subtitle: StepperText("Xe ô tô của Công ty tại điểm hẹn, khởi hành đi Văn Miếu Quốc Tử Giám, Di sản văn hóa nổi tiếng Việt Nam."),
      iconWidget: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Icon(
          Icons.check_circle,
          color: Colors.white,
        ),
      ),
    ),
    StepperData(
      title: StepperText("8h00': Tham quan tìm hiểu"),
      subtitle: StepperText("Tham quan tìm hiểu từ Văn Miếu môn đến Đại Trung môn, Khuê Văn các, Thiên Quang tỉnh, Vườn bia Tiến sĩ, khu Đại Thành điện, Đại Bái đường, Hậu cung và khu nhà Thái học."),
      iconWidget: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Icon(
          Icons.check_circle,
          color: Colors.white,
        ),
      ),
    ),
    StepperData(
      title: StepperText("9h30': Xe đưa đón từ Văn Miếu đi Rạp chiếu phim"),
      subtitle: StepperText("Tại đây du khách sẽ được thưởng thức những bộ phim thiếu nhi nổi tiếng hấp dẫn và thú vị như: Bộ tứ siêu đẳng, chú chó siêu quậy…"),
      iconWidget: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Icon(
          Icons.check_circle,
          color: Colors.white,
        ),
      ),
    ),
    StepperData(
      title: StepperText("11h30': Xe đưa về"),
      subtitle: StepperText("Hướng dẫn viên chia tay đoàn hẹn gặp lại tour du lịch Văn Miếu Quốc Tử Giám."),
      iconWidget: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Icon(
          Icons.check_circle,
          color: Colors.white,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20, right: 20,
          ),
          child: AnotherStepper(
            stepperList: stepperData,
            stepperDirection: Axis.vertical,
            inActiveBarColor: Colors.greenAccent,
            iconHeight: 40,
            iconWidth: 40,
          ),
        ),
      ],
    );
  }
}
