import 'package:emart/consts/consts.dart';

Widget ourButton({color, String? title, textColor, onPress}) {
  return ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: color, padding: EdgeInsets.all(15)),
      onPressed: onPress,
      child: title!.text.color(textColor).fontFamily(bold).make());
}
