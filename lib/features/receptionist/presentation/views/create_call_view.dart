import 'package:flutter/material.dart';
import 'widgets/create_call_view_body.dart';


class ReceptionistCreateCallView extends StatelessWidget {
  const ReceptionistCreateCallView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CreateCallViewBody(),
        ),
      ),
    );
  }
}

