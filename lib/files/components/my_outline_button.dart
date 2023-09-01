import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: TextButton(
style: ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5
        ),),
  shape: MaterialStatePropertyAll(
     RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
       side:  BorderSide(color: Color(0xFFEDEDED)),
    ),

  )

),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: 40,
            ),
            SizedBox(width: kDefaultPadding),
            Text(text)
          ],
        ),
      //   padding: EdgeInsets.symmetric(
      //     vertical: kDefaultPadding,
      //     horizontal: kDefaultPadding * 2.5,
      //   ),
      //
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(50),
      //   ),
      //   borderSide: BorderSide(color: Color(0xFFEDEDED)),
       ),
    );
  }
}
