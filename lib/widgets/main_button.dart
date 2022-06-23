import 'package:flutter/material.dart';
import 'package:michiganyelp/resources/constants.dart';
import 'package:michiganyelp/resources/utils.dart';

class MainButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool loading;
  final VoidCallback onPressed;
  const MainButton({
    Key? key,
    required this.child,
    required this.color,
    required this.loading,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        fixedSize: Size(
          screenSize.width * 0.5,
          40,
        ),
      ),
      onPressed: onPressed,
      child: !loading
          ? child
          : const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: CircularProgressIndicator(
                  color: WHITE,
                ),
              ),
            ),
    );
  }
}
