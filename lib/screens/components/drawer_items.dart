import "package:amptric/values/constants.dart";
import "package:flutter/material.dart";
//import "package:google_fonts/google_fonts.dart";

class AmpDrawerItems extends StatelessWidget {
  const AmpDrawerItems(
      {super.key,
      required this.name,
      required this.icon,
      required this.onPressed});
  final String name;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 55,
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
              color: priAmpColor,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              name,
              style: const TextStyle(
                  fontFamily: 'roboto', fontSize: 20, color: priAmpColor),
            )
          ],
        ),
      ),
    );
  }
}
