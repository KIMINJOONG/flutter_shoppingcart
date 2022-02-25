import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShoppingCartDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40)
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children:[
            _buildDetailNameAndPrice(),
            _buildDetailRatingAndReviewCount(),
            _buildDetailColorOptions(),
            _buildDetailButton()
          ],
        ),
      ),
    );
  }


  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Urban Soft AL 10.0",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            "\$699",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Spacer(),
          Text("review"),
          Text(
            "(26)",
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
  Widget _buildDetailColorOptions() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Color option"),
          SizedBox(height: 10,),
          Row(
            children: [
              _buildDetailIcon(Colors.black),
              _buildDetailIcon(Colors.green),
              _buildDetailIcon(Colors.orange),
              _buildDetailIcon(Colors.grey),
              _buildDetailIcon(Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  // Stack 위젯
  Widget _buildDetailIcon(Color mColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle
            ),
          ),
          Positioned(
            // 가운데 규칙 : (외부 크기 - 내부 크기) / 2
            left: 5,
            top: 5,
            child: ClipOval(
              // ClipOval는 위젯이 모양이 잡을 수 있는 속성이 없을때 사용한다.
              child: Container(
                color: mColor,
                width: 40,
                height: 40,

              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDetailButton() {
    return SizedBox();
  }
}
