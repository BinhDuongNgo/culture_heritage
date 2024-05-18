

class Delivery{
  final String image;
  final String name;
  Delivery({
    required this.image,
    required this.name,
  });
}

List<Delivery> allDelivery = [
  Delivery(
    image: 'assets/images/vanmieu.jpg', 
    name: "Văn Miếu - Quốc Tử Giám",
  ),
  Delivery(
    image: 'assets/images/chuamotcot.jpg', 
    name: "Chùa Một Cột",
  ),
  Delivery(
    image: 'assets/images/langbac.jpg', 
    name: "Lăng Chủ tịch Hồ Chí Minh",
  ),
  Delivery(
    image: 'assets/images/thaprua.jpg', 
    name: "Tháp Rùa Hồ Gươm",
  ),
  Delivery(
    image: 'assets/images/hoangthanh.jpg', 
    name: "Hoàng thành Thăng Long",
  ),
];