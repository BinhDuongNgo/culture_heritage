import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';

class StepDelivery extends StatefulWidget {
  const StepDelivery({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StepDelivery createState() => _StepDelivery();
}

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
          padding: const EdgeInsets.only(
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
