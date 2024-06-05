

class Delivery{
  final String image;
  final String place;
  Delivery({ 
    required this.image,
    required this.place,
  });
}

List<Delivery> allDelivery = [
  Delivery(
    image: 'assets/images/vanmieu.jpg', 
    place: "Văn Miếu - Quốc Tử Giám",
  ),
  Delivery(
    image: 'assets/images/chuamotcot.jpg', 
    place: "Chùa Một Cột",
  ),
  Delivery(
    image: 'assets/images/langbac.jpg', 
    place: "Lăng Chủ tịch Hồ Chí Minh",
  ),
  Delivery(
    image: 'assets/images/thaprua.jpg', 
    place: "Tháp Rùa Hồ Gươm",
  ),
  Delivery(
    image: 'assets/images/hoangthanh.jpg', 
    place: "Hoàng thành Thăng Long",
  ),
];