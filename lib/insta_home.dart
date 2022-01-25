import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaHome extends StatefulWidget {

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor:  const Color(0xfff8faf8),
          centerTitle: true,
          elevation: 1.0,
          leading:  Icon(Icons.camera_alt,color: Colors.black,),
          title: SizedBox(
              height: 35.0, child: Image.asset("assets/images/insta_logo.png")),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.send,color: Colors.black),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Expanded(flex: 1, child: new InstaStories()),
            Flexible(child:
            ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) => index == 0
                  ?  SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                  Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) => Stack(
                      alignment: Alignment.bottomRight,
                      children: <Widget>[
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/flash.png")),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        ),
                        index == 0
                            ? const Positioned(
                            right: 10.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              radius: 10.0,
                              child: Icon(
                                Icons.add,
                                size: 14.0,
                                color: Colors.white,
                              ),
                            ))
                            : Container()
                      ],
                    ),
                  ),)
                  ],
                ),
                height: 80,
              )
                  : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/flash.png")),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              "Grant Gustin",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const IconButton(
                          icon: Icon(Icons.more_vert),
                          onPressed: null,
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Image.asset("assets/images/flash_two.png")
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(isPressed
                                  ? Icons.favorite
                                  : FontAwesomeIcons.heart),
                              color: isPressed ? Colors.red : Colors.black,
                              onPressed: () {
                                setState(() {
                                  isPressed = !isPressed;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            const Icon(
                              FontAwesomeIcons.comment,
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            const Icon(FontAwesomeIcons.paperPlane),
                          ],
                        ),
                        const Icon(FontAwesomeIcons.bookmark)
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Liked by flash, arrow and 528,331 others",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/flash.png")),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a comment...",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child:
                    Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
                  )
                ],
              ),
            ))
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 60.0,
          alignment: Alignment.center,
          child: BottomAppBar(
            child: Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.home,
                  ),
                  onPressed: () {},
                ),
                const IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  onPressed: null,
                ),
                const IconButton(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
        )
    );
  }
}