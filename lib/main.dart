import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 이 부분이 앱이 실행되는 공간
}
// StatelessWidget의 축약어 stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 텍스트 위젯 Text('안녕')
      // 아이콘 위젯 Icon(Icons.star)
      // 이미지 위젯 Image.asset('경로')
      // 이미지 assets 폴더를 만든 후 pubspec.yaml에 assets파일을 등록해줘야 사용가능
      // pubspec.yaml은 의존성 정보등을 포함한 파일임
      // 박스 위젯 Container() or SizedBox()
      // 박스가 원하는 위치에 생기지 않는다면 Center()와 같은 부모위젯을 만들어주면 된다
      // Scaffold() 상중하로 나눠주는 위젯
      // Scaffold(
      //         appBar: AppBar(),
      //         body: Container(
      //              child: Icon(Icons.star),
      //              ),
      //         bottomNavigationBar: BottomAppBar(),
      //       )
      // 여기에서 아이콘을 일렬로 배치하고 싶다면 body: Container 대신에
      // body:Row( children: [Icon(Icons.star),Icon(Icons.star),])로 사용가능
      // 새로로 배치하고 싶으면 Column
      // 그리고 간격을 조정하고 싶다면 Row() 안에
      // mainAxisAlignment 파라미터를 생성해서
      // mainAxisAlignment: MainAxisAlignment.spaceAround, 이런식으로 사용 가능
      // Row의 mainAxisAlignment은 가로축이고 crossAxisAlignment은 세로축이다
      // 파라미터의 자동완성은 ctrl + space 맥은 ctrl + opt + space

      //home: Scaffold(
      //         appBar: AppBar(
      //           title: Text('앱임'),
      //           backgroundColor: Colors.blue,
      //         ),
      //         body: Container(
      //           child: Text('안녕'),
      //         ),
      //         bottomNavigationBar: BottomAppBar(
      //           child: Container(
      //             height: 70,
      //             child: Row( 여기에 커서를 놓고 왼쪽 전구를 클릭하면 쉽게 컨테이너를 감쌀 수 있다
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 Icon(Icons.phone),
      //                 Icon(Icons.message),
      //                 Icon(Icons.contact_page)
      //               ],
      //             ),
      //           ),
      //         ),
      //       )

      // 마진, 패딩 쓰는 법
      //Container(
      //           width: 50, height: 50, color: Colors.blue,
      //           margin: EdgeInsets.all(20),
      //         ),
      // 마진을 특정 부분만 주고 싶다면
      // margin: EdgeInsets.fromLTRB(0, 30, 0, 0

      // 테두리 등을 넣고싶다면
      // decoration: BoxDecoration(
      //             border: Border.all(color: Colors.black)
      //           )
      // boxDecoration 옵션을 키게 되면 옵션 밖에서 color를 정의 못하고
      // 옵션 안쪽에서 정의해줘야 한다

      // 컨테이너를 정렬하고 싶다면 Align으로 감싸기

      // 박스의 value를 무한하게 주고 싶다면
      // double.infinity
      //child: Container(
      //             width: double.infinity, height: 50, color: Colors.blue,
      //           ),

      // 글자 디자인 하고싶다면
      // body: SizedBox(
      //           child: Text('안녕하세요',
      //           style: TextStyle( color: Colors.red),
      //           ),
      //         )

      // 헥스 칼라를 넣고 싶다면
      // style: TextStyle( color: Color(0xffaaaaaa)),

      // RGB로 넣고싶다면
      // style: TextStyle( color: Color.fromRGBO(r, g, b, opacity)),

      // button을 넣고 싶다면
      // TextButton(), IconButton(), ElevatedButton()

      // AppBar() 안에 넣을 수 있는 것들
      // title : 왼쪽 제묵
      // leading : 왼쪽에 넣을 아이콘
      // actions : 우측 아이콘들 []

      // 박스 폭을 50%로 설정하려면
      // Flexible()로 감싸야 함
      // body: Row(
      //           children: [
      //             Flexible(child: Container(color: Colors.red,), flex: 3,),
      //             Flexible(child: Container(color: Colors.blue,), flex: 7,),
      //           ],
      //         ),

      // Expanded를 사용하면 Flexible 사용 안해도 나머지를 채울 수 있음
      // body: Row(
      //           children: [
      //             Expanded(child: Container(color: Colors.red,), ),
      //             Container(width: 100,color: Colors.blue,),
      //           ],
      //         ),

      // 커스텀 위젯 만들기
      // stless 로 위젯만들고 이름 정한다음
      // 리턴에 실행 할 위젯 명시해주고
      // main에 가져와서 쓰기

      // var a = SizedBox() 이런식으로 변수에 담아서 사용도 가능
      // 변하지 않는 ui 들은 변수 함수로 축약해도 상관없으나
      // 데이터가 변하는 것들은 성능의 이슈가 있을 수 있음

      // Column에 내용이 아무리 많아도 스크롤이 생기지 않음
      // 스크롤을 생기게 하려면 ListView()를 써야 함
      // controller 옵션으로 스크롤 감시도 가능

      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [

          ],
        ),
      )
    );
  }
}
