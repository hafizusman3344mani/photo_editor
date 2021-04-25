import 'package:firexcode/firexcode.dart';

class BottomBarContainer extends StatelessWidget {
  final Color colors;
  final Function ontap;
  final IconData icons;
  final bool isPressed;

  const BottomBarContainer(
      {Key key, this.ontap, this.icons, this.colors,this.isPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(
          color: isPressed?Colors.white:Colors.black,
          border: Border.all(color: Colors.white,width: 1,style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Icon(icons,color: isPressed?Colors.black:Colors.white,),
      ),
    );
  }
}
