
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  title:'named routes Demo',
  initialRoute: '/lulu',
  routes: {
    '/lulu':(context)=>FirstRoute(),
    '/zoe' :(context)=>SecondRoute(),
  },
));

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 40;
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}


class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
        padding: const EdgeInsets.all(22),
        child:Row(
            children:[
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom:8),
                    child: Text('룰루, 요정마법사',
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Lulu,the Fae Sorceress'),


                ],
              ),
              ),
              FavoriteWidget(),
              Container(
                width: 60,
                height: 30,
                margin:EdgeInsets.only(left:8),
                child: ElevatedButton(
                  child:Text('Zoe'),
                  onPressed:() {
                    Navigator.pushNamed(context,'/zoe');
                  },
                  style:ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.purpleAccent),

                  )
              ),
              )

            ]
        )
    );

    Widget textSection = Container(
      padding: const EdgeInsets.only(left:32,right: 32),
      child: Text(
        '요들 마법사 룰루는 친구인 요정 픽스와 함께 룬테라를 돌아다니며, 꿈결 같은 환상과 상상 속에서나 존재할 법한 생명체를 만들어내는 것으로 유명하다. 룰루는 내키는 대로 현실을 빚어내고, 세상의 법칙을 비틀어 버린다. 룰루가 보기에 이 세상의 물리 법칙에 따르는 제약은 시시하고 따분하다. 룰루의 마법은 좋게 본다 해도 비정상적이고 나쁘게 보면 위험하다고까지 할 수도 있겠지만, 룰루의 신념은 확고하다. 사람들에게 마법 한 번씩 맛보여 주는 게 뭐 그리 큰일이냐는 것이다.',
        softWrap:true,
      )
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions:[Icon(Icons.star)],leading:Icon(Icons.list),title:Text('룰루')),
        body:Column(
            children:[
              Image.asset('assets/lulu.jpeg',width: 500,height:300,fit: BoxFit.cover,
        ),
          titleSection,
              textSection,
        ]
        ),
        bottomNavigationBar: BottomAppBar(
          child:SizedBox(
            height:50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          )
        ),
      )
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
        padding: const EdgeInsets.all(22),
        child:Row(
            children:[
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom:8),
                    child: Text('조이, 여명의 성위',
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text('Zoe, the Aspect of Twilight'),


                ],
              ),
              ),
              FavoriteWidget(),
    Container(
    width: 60,
    height: 30,
    margin:EdgeInsets.only(left:8),
      child: ElevatedButton(child:Text('lulu'),
          onPressed:() {Navigator.pop(context);
          },
          style:ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.deepPurple),
          )
      ),
    )

            ]
        )
    );

    Widget textSection = Container(
        padding: const EdgeInsets.only(left:32,right: 32),
        child: Text(
          '상상력과 변화의 화신인 장난꾸러기 조이는 타곤의 우주 전령으로, 세계를 뒤흔드는 중요한 사건들을 알린다. 조이는 존재만으로도 현실 세계를 지배하는 불가사의한 수학 원리를 왜곡하고, 가끔은 아무런 악의나 노력 없이도 대재앙을 일으킨다. 이것이 그녀가 자신의 의무에 경쾌하고도 태연하게 임하는 이유일지도 모른다. 조이는 장난을 치고 인간들을 골탕 먹이는 등 즐겁게 보낼 시간이 많다. 그녀를 만나면 매우 즐겁고 삶을 긍정적으로 바라보게 될 수도 있지만, 그녀와의 만남에는 언제나 보이는 것 이상이 있을 뿐 아니라 매우 위험해질 때도 많다.',
          softWrap:true,
        )
    );

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(actions:[Icon(Icons.star)],leading:Icon(Icons.list),title:Text('조이')),
          body:Column(
              children:[
                Image.asset('assets/zoe.png',width: 500,height:300,fit: BoxFit.cover,
                ),
                titleSection,
                textSection,
              ]
          ),
          bottomNavigationBar: BottomAppBar(
              child:SizedBox(
                height:50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.phone),
                    Icon(Icons.message),
                    Icon(Icons.contact_page),
                  ],
                ),
              )
          ),
        )
    );
  }
}