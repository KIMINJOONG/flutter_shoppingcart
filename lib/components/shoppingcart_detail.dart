import 'package:flutter/material.dart';

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
    return Row(
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
    );
  }
  Widget _buildDetailColorOptions() {
    return SizedBox();
  }
  Widget _buildDetailIcon() {
    return SizedBox();
  }

  Widget _buildDetailButton() {
    return SizedBox();
  }
}
