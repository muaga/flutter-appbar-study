import 'package:flutter/material.dart';

class ContentAndMap extends StatelessWidget {
  const ContentAndMap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(style: BorderStyle.solid, width: 0.1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "장난감정리함 판매합니다.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "가구/인테리어",
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.black54,
                    decoration: TextDecoration.underline),
              ),
              Text(
                " · 2일 전",
                style: TextStyle(fontSize: 10, color: Colors.black54),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text("1년 정도 썼는데 장난감을 담아두는 용도로만 사용해 상태 좋아요"),
          SizedBox(height: 15),
          Row(
            children: [
              Text("크기", style: TextStyle(fontWeight: FontWeight.w700)),
              SizedBox(width: 20),
              Text("90.5 x 36 x 86 cm", style: TextStyle(fontSize: 14)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("거래 희망 장소", style: TextStyle(fontWeight: FontWeight.w700)),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Text("두산위브"),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 7),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  "assets/map.png",
                ),
              ),
              Positioned(
                right: 8,
                bottom: -4,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      textStyle: TextStyle(fontSize: 13),
                      minimumSize: Size(30, 25),
                      padding: EdgeInsets.symmetric(horizontal: 5)),
                  child: Row(
                    children: [
                      Text("지도 보기"),
                      SizedBox(width: 2),
                      Icon(Icons.open_in_full, size: 12),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "채팅 3 · 관심 17 · 조회 221",
            style: TextStyle(fontSize: 10, color: Colors.black54),
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {},
            child: Text(
              "이 게시글 신고하기",
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.black54,
                  decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_back_ios, color: Colors.black),
      style: IconButton.styleFrom(
        minimumSize: Size(24, 24),
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {}, icon: Icon(Icons.ios_share, color: Colors.black)),
      IconButton(
          onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.black)),
    ],
  );
}
