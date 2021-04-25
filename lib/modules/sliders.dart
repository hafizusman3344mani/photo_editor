import 'package:firexcode/firexcode.dart';

import '../image_editor_pro.dart';

class Sliders extends StatefulWidget {
  final int size;
  final sizevalue;
  final String textName;
  const Sliders({Key key, this.size, this.sizevalue,this.textName}) : super(key: key);
  @override
  _SlidersState createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  @override
  void initState() {
    slider = widget.sizevalue;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return xColumn.list(
      [
        widget.textName.text().toCenter().xap(value: 5),
        Divider(
          height: 1,
        ),
        Slider(
            value: slider,
            min: 0.0,
            max: 100.0,
            onChangeEnd: (v) {
              setState(() {
                fontsize[widget.size] = v.toInt();
              });
            },
            onChanged: (v) {
              setState(() {
                slider = v;
                print(v.toInt());
                fontsize[widget.size] = v.toInt();
              });
            }),
      ],
    ).xContainer(height: 90, padding: EdgeInsets.only(bottom:10.0));
  }
}
