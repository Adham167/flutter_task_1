import 'package:flutter/material.dart';
import 'package:flutter_task_1/widgets/button_widget.dart';
import 'package:flutter_task_1/widgets/delivery_address_widget.dart';
import 'package:flutter_task_1/widgets/order_details_widget.dart';
import 'package:flutter_task_1/widgets/order_status_widget.dart';
import 'package:flutter_task_1/widgets/top_thank_you_widget.dart';

class ConfirmOrderView extends StatelessWidget {
  const ConfirmOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TopThankYouWidget(),
                        SizedBox(height: 16),
                        OrderDetailsWidget(),
                        SizedBox(height: 16),
                        OrderStatusWidget(),
                        SizedBox(height: 16),
                        DeliveryAddressWidget(),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}
