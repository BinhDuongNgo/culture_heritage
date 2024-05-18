class FeaturedListedModals {
  final String image;
  final String place;
  final String infomation;
  FeaturedListedModals({
    required this.image,
    required this.place,
    required this.infomation,
  });
}

List<FeaturedListedModals> featuredListed = [
  FeaturedListedModals(
    image: 'assets/images/vanmieu.jpg',
    place: "Văn Miếu - Quốc Tử Giám",
    infomation:
        "Là một quần thể di tích lịch sử, văn hóa, tôn giáo quan trọng của Việt Nam. Đây là nơi thờ Khổng Tử và các bậc tiên hiền của Nho học, đồng thời cũng là nơi đào tạo nhân tài cho đất nước trong suốt nhiều thế kỷ. Văn Miếu được xây dựng vào năm 1070, dưới thời vua Lý Thánh Tông.",
  ),
  FeaturedListedModals(
    image: 'assets/images/langbac.jpg',
    place: "Lăng Chủ tịch Hồ Chí Minh",
    infomation:
        "Công trình là nơi gìn giữ di hài của Bác theo nguyện vọng, tình cảm của Ban chấp hành trung ương Đảng và nhân dân. Lăng Bác được khởi công vào ngày 02/9/1973 và khánh thành vào ngày 29/8/1975. Công trình lăng Bác được xây dựng gồm 3 lớp, cao 21,6 mét và rộng 41,2 mét.",
  ),
];
