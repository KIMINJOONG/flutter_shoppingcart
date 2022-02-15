import 'package:flutter/material.dart';

class ShoppingCartDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40)
      ),
      child: Column(
        children:[
          _buildDetailNameAndPrice(),
          _buildDetailRatingAndReviewCount(),
          _buildDetailColorOptions(),
          _buildDetailButton()
        ],
      ),
    );
  }


  Widget _buildDetailNameAndPrice() {
    return SizedBox();
  }
  Widget _buildDetailRatingAndReviewCount() {
    return SizedBox();
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
