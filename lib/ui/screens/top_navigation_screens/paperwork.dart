import 'package:flutter/material.dart';

class PaperWork extends StatefulWidget {
  const PaperWork({Key key}) : super(key: key);

  @override
  createState() => _PaperWork();
}

class _PaperWork extends State<PaperWork> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
              Container(
              margin: EdgeInsets.only(left:10.0,bottom: 30),
              child: Align(
                    alignment: Alignment.centerLeft,
                    child:ListTile(
                      title: Text('Documents',
                      style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                          ),
                      subtitle: Text('Download the form, read it, sign it and upload to register to be a member of important music organazations.',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),

                      ),
                    ),
                  ),
            ),    
            card(
                'images/samro.jpeg',
                "SAMRO",
                'Sparrow',
                context),

            card(
                'images/risa.jpeg', 
                "RISA",
                'Sparrow',
                context),

            card(
                'images/sampra.jpeg',
                "SAMPRA",
                'Sparrow',
                context)
          ],
        ),
      ),
    );
  }

  Widget card(String image,String organ, String title, BuildContext context) {
    return Column(
      
      children: [
        Container(
          margin: EdgeInsets.only(left:30.0),
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
                child: Image.asset(image
                  ),
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
                          print("Upload");
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
