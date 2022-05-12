import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  final String text;
  final onTap;
  const InputButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            child: Card(
              elevation: 15,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(10),
                  backgroundColor: MaterialStateProperty.all(Color(0xff1F319D)),
                ),
                onPressed: onTap,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
