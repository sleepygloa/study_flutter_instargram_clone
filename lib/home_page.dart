import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Instargram Clone',
                    style : TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
        )
      ),
      body: _buildBody()
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: SafeArea(
        child:SingleChildScrollView(
          child:Center(
            child:Column(
              children: <Widget>[
                Text('Instargram에 오신 것을 환영합니다.',
                  style: TextStyle(fontSize: 24.0)
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                Text('사진과 동영상을 보려면 팔로우해주세요.'),
                SizedBox(
                  width:260.0,
                  child:
                    Card(
                        elevation: 4.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width:80.0,
                                height:80.0,
                                child:CircleAvatar(
                                  backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2018/10/24/19/58/babys-hand-3771123__340.jpg'),
                                )
                              ),
                              Padding(padding: EdgeInsets.all(8.0)),
                              Text('이메일 주소', style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('이름'),
                              Padding(padding: EdgeInsets.all(8.0)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    width:70.0,
                                    height:70.0,
                                    child: Image.network('https://cdn.pixabay.com/photo/2018/10/24/19/58/babys-hand-3771123__340.jpg', fit:BoxFit.cover),
                                  ),
                                  Padding(padding: EdgeInsets.all(1.0)),
                                  SizedBox(
                                    width:70.0,
                                    height:70.0,
                                    child: Image.network('https://cdn.pixabay.com/photo/2021/04/03/15/24/poppy-6147973__340.jpg', fit:BoxFit.cover),
                                  ),
                                  Padding(padding: EdgeInsets.all(1.0)),
                                  SizedBox(
                                    width:70.0,
                                    height:70.0,
                                    child: Image.network('https://cdn.pixabay.com/photo/2021/02/02/21/44/kale-5975540__340.jpg', fit:BoxFit.cover),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.all(4.0)),
                              Text('Facebook 친구'),
                              Padding(padding: EdgeInsets.all(4.0)),
                              RaisedButton(
                                child:Text('팔로우'),
                                textColor: Colors.white,
                                color: Colors.blueAccent,
                                onPressed: ()=>{},
                              ),
                              Padding(padding: EdgeInsets.all(4.0)),
                            ],
                          ),
                        )
                    )
                )
              ],
            )
          )
        )
      )
    );
  }

}
