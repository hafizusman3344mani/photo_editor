import 'package:firexcode/firexcode.dart';
import 'package:photo_editor/data/data.dart';
import 'package:photo_editor/image_editor_pro.dart';

class Emojies extends StatefulWidget {
  @override
  _EmojiesState createState() => _EmojiesState();
}

class _EmojiesState extends State<Emojies> {
  List emojes = <dynamic>[];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: Colors.grey,
        height: MediaQuery.of(context).size.height * .08,
        child: Row(
          children: emojis.map((emoji) {
            return InkWell(
              onTap: () {

                if (emoji != null) {
                  type.add(1);
                  fontsize.add(20);
                  offsets.add(Offset.zero);
                  multiwidget.add(emoji);
                  howmuchwidgetis++;
                  Navigator.of(context).pop();
                }

              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white, width: 1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(35)),
                child: Image.asset(emoji),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  List<dynamic> emojis = [];
  @override
  void initState() {
    super.initState();
    emojis = getSmileys();
  }
}
