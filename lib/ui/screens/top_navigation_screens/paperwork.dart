import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

class PaperWork extends StatefulWidget {
  const PaperWork({Key key}) : super(key: key);

  @override
  createState() => _PaperWork();
}

class _PaperWork extends State<PaperWork> {
 
  String _fileName;
  List<PlatformFile> _paths;
  bool _multiPick = true;
  FileType _pickingType = FileType.any;


  void _openFileExplorer() async {
    try {
      _paths = (await FilePicker.platform.pickFiles(
        type: _pickingType,
        allowMultiple: _multiPick,
        allowedExtensions: null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (ex) {
      print(ex);
    }
    if (!mounted) return;
    setState(() {
      // Upload file here
      print(_paths.first.name);
      print(_paths.first.path);
      print(_paths.first.extension);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0, bottom: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ListTile(
                  title: Text(
                    'Documents',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  subtitle: Text(
                    'Download the form, read it, sign it and upload to register to be a member of important music organazations.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
            card('images/capasso.jpeg', "Cappaso", context),
            card('images/samro.jpeg', "SAMRO", context),
            card('images/risa.jpeg', "RISA", context),
            card('images/sampra.jpeg', "SAMPRA", context)
          ],
        ),
      ),
    );
  }

  Widget card(String image, String organ, BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 30.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(organ),
          ),
        ),
        Card(
          color: Colors.white,
          elevation: 8.0,
          margin: EdgeInsets.fromLTRB(30, 10, 30, 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Image.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      FlatButton(
                        child: Text(
                          "Download",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        onPressed: () {
                          print("Download");
                        },
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      FlatButton(
                        child: Text(
                          "Upload",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        onPressed: () {
                          _openFileExplorer();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
