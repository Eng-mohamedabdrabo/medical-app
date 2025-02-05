import 'package:flutter/material.dart';

class CustomMedicalRecordImage extends StatelessWidget {
  const CustomMedicalRecordImage({
    super.key, required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
