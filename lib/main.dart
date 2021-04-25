import 'dart:io';
import 'package:firexcode/firexcode.dart';
import 'package:photo_editor/image_editor_pro.dart';

void main() {
  runApp(PhotoEditorApp());
}

class PhotoEditorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage().xMaterialApp();
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File _image;

  Future<void> getimageditor() =>
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ImageEditorPro(
          appBarColor: Color(0xff0e0a47),
          bottomBarColor: Color(0xff0e0a47),
        );
      })).then((geteditimage) {
        if (geteditimage != null) {
          setState(() {
            _image = geteditimage;
          });
        }
      }).catchError((er) {
        print(er);
      });

  @override
  Widget build(BuildContext context) {
    return _image == null ? Center(
      child: ElevatedButton(
        child: Text('Open'), onPressed: () => getimageditor(),),
    ) : Container();
  }
}
