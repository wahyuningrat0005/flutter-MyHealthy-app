import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';

class IdentityInput extends StatelessWidget {
  const IdentityInput({
    super.key,
    required this.name,
    required this.address,
  });
  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              name,
              style: SecondaryTextStyle.copyWith(
                  color: Colors.black, fontWeight: medium)),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    style: SecondaryTextStyle.copyWith(color: Colors.black),
                    decoration: InputDecoration.collapsed(
                        hintText: address,
                        hintStyle:
                            SecondaryTextStyle.copyWith(color: Colors.black)),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
