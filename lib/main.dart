import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/tweet.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});
  @override
  State<StatefulWidget> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    const Tweet(
      avatarturl:
          "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=3xxAkd2DZx4AX_hyvbY&_nc_ht=scontent.fbkk13-2.fna&oh=00_AfCIinCf5HWtbrmDtZOiA8T8mKqRW1tPY0NVddmgnNgDdA&oe=63A96692",
      postext: "สวัสดีครับผมชื่อ เต้",
      image: "Asset/myprofile.jpg",
      isEmpty: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://scontent.fbkk13-1.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=xDw3Y7m_njEAX-JLP2r&_nc_ht=scontent.fbkk13-1.fna&oh=00_AfA2F7YzK6pPLQ4Yef-T9i089h1arMetRcs_-2mlcu8ToQ&oe=639EA252"),
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_outlined, Colors.grey),
            buildIconButton(Icons.notifications_outlined, Colors.grey),
            buildIconButton(Icons.email_outlined, Colors.grey),
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            tweetList.insert(
              1,
              const Tweet(
                avatarturl:
                    "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=3xxAkd2DZx4AX_hyvbY&_nc_ht=scontent.fbkk13-2.fna&oh=00_AfCIinCf5HWtbrmDtZOiA8T8mKqRW1tPY0NVddmgnNgDdA&oe=63A96692",
                postext:
                    "ปัจจุบันศึกษาอยู่ที่มหาวิทยาลัยกรุงเทพ คณะวิศวกรคอมพิวเตอร์",
                image: "",
                isEmpty: false,
              ),
            );
            tweetList.insert(
              2,
              const Tweet(
                avatarturl:
                    "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=3xxAkd2DZx4AX_hyvbY&_nc_ht=scontent.fbkk13-2.fna&oh=00_AfCIinCf5HWtbrmDtZOiA8T8mKqRW1tPY0NVddmgnNgDdA&oe=63A96692",
                postext:
                    "ผมเริ่มศึกษาวิธีการเขียนโค้ดเพื่อสร้างโปรแกรมขึ้นมา ซึ่งโปรแกรมแรกเป็นโปรแกรมการบริหารจัดการการจองห้องของโรมแรมด้วยภาษา C",
                image: "Asset/Broom.png",
                isEmpty: true,
              ),
            );
            tweetList.insert(
              3,
              const Tweet(
                avatarturl:
                    "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=3xxAkd2DZx4AX_hyvbY&_nc_ht=scontent.fbkk13-2.fna&oh=00_AfCIinCf5HWtbrmDtZOiA8T8mKqRW1tPY0NVddmgnNgDdA&oe=63A96692",
                postext:
                    "โดยแสดงเมนูผ่าน Cmd ง่ายๆเพื่อกดตัวเลขเข้าไปใช้งานฟังชั่น",
                image: "Asset/Broom1.png",
                isEmpty: true,
              ),
            );
            tweetList.insert(
              4,
              const Tweet(
                avatarturl:
                    "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=3xxAkd2DZx4AX_hyvbY&_nc_ht=scontent.fbkk13-2.fna&oh=00_AfCIinCf5HWtbrmDtZOiA8T8mKqRW1tPY0NVddmgnNgDdA&oe=63A96692",
                postext:
                    "ต่อมาผมได้เรียนรู้ Python เป็นภาษาที่สองและได้ทำโปรเจคสร้างเกมจาก Pygame",
                image: "Asset/Bang.png",
                isEmpty: true,
              ),
            );
            tweetList.insert(
              5,
              const Tweet(
                avatarturl:
                    "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=3xxAkd2DZx4AX_hyvbY&_nc_ht=scontent.fbkk13-2.fna&oh=00_AfCIinCf5HWtbrmDtZOiA8T8mKqRW1tPY0NVddmgnNgDdA&oe=63A96692",
                postext:
                    "ต่อมาได้เรียนรู้ภาษา Java และได้ทำโปรเจค Hotelmanagement ",
                image: "Asset/UI2.png",
                isEmpty: true,
              ),
            );
            tweetList.insert(
              6,
              const Tweet(
                avatarturl:
                    "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=3xxAkd2DZx4AX_hyvbY&_nc_ht=scontent.fbkk13-2.fna&oh=00_AfCIinCf5HWtbrmDtZOiA8T8mKqRW1tPY0NVddmgnNgDdA&oe=63A96692",
                postext:
                    "หลังจากนั้นก็ได้รับงานในการออกแบบ API ให้กับระบบ Telesorting Sysytem ของ Fibo สำหรับแลกเปลี่ยนข้อมูลภายในระบบ",
                image: "",
                isEmpty: false,
              ),
            );
            tweetList.insert(
              7,
              const Tweet(
                avatarturl:
                    "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=3xxAkd2DZx4AX_hyvbY&_nc_ht=scontent.fbkk13-2.fna&oh=00_AfCIinCf5HWtbrmDtZOiA8T8mKqRW1tPY0NVddmgnNgDdA&oe=63A96692",
                postext:
                    "ต่อมาในปีที่สี่ได้ทำโปรเจค OMC ซึ่งเป็นโปรเจคตูเชงน้ำอัตโนมัติเป็นโปรเจคจบที่ทำอยู่ ณ ปัจจุบัน",
                image: "Asset/mainpage.jpg",
                isEmpty: true,
              ),
            );
            tweetList.insert(
              8,
              const Tweet(
                avatarturl:
                    "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=3xxAkd2DZx4AX_hyvbY&_nc_ht=scontent.fbkk13-2.fna&oh=00_AfCIinCf5HWtbrmDtZOiA8T8mKqRW1tPY0NVddmgnNgDdA&oe=63A96692",
                postext:
                    "โดยผมใช้เวลาจำนวนมากไปกับโปรเจคนี้้ทั้งศึกษาค้นคว้าข้อมูลและเขียนโปรแกรมรวมไปถึงการออกแบบการทำงานของโปรแกรม",
                image: "Asset/userflow.jpg",
                isEmpty: true,
              ),
            );
            tweetList.insert(
              9,
              const Tweet(
                avatarturl:
                    "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=3xxAkd2DZx4AX_hyvbY&_nc_ht=scontent.fbkk13-2.fna&oh=00_AfCIinCf5HWtbrmDtZOiA8T8mKqRW1tPY0NVddmgnNgDdA&oe=63A96692",
                postext:
                    "และล่าสุดในคลาสนี้ผมได้เรียนรู้้การเขียนแอพโดยใช้ Fultter รวมถึงคอนเซปเรื่อง UX/UI",
                image: "Asset/figma.jpg",
                isEmpty: true,
              ),
            );
          });
        },
      ),
    );
  } //buid

  Widget listOfTweets() {
    return Container(
      color: Colors.white,
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return tweetList[index];
          },
          separatorBuilder: (BuildContext context, index) => const Divider(
                height: 10,
              ),
          itemCount: tweetList.length),
    );
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      onPressed: () {
        setState(() {});
      },
      icon: Icon(
        icon,
        color: color,
      ),
    );
  }
}

// ignore: must_be_immutable
/*
class NewTweet extends StatelessWidget {
  final ValueChanged<String> callback;

  TextEditingController tweetController = TextEditingController();
  NewTweet({
    super.key,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "New Tweet",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 1, // เงา
          title: const Text(
            "New Tweet",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Container(
            margin: const EdgeInsets.all(10.0),
            child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.6435-9/69955022_1339730946196502_901187501383745536_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFFdCGa7JirjOwHNA1F7V_pJU94f2hgtVAlT3h_aGC1UAbxoVEAytSPlddMXj0jtgLOGY6wQPYgYcRMGsrgxobq&_nc_ohc=3xxAkd2DZx4AX_hyvbY&_nc_ht=scontent.fbkk13-2.fna&oh=00_AfCIinCf5HWtbrmDtZOiA8T8mKqRW1tPY0NVddmgnNgDdA&oe=63A96692")),
          ), //ฝั่งซ่้าย Action ฝั่งขวา
        ),
        body: Column(children: [
          TextField(
            controller: tweetController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: ("What's happening"),
              hintStyle: TextStyle(color: Colors.grey.shade400),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                callback(tweetController.text);
                Navigator.pop(context);
              },
              child: const Text("Tweet")),
        ]),
      ),
    );
  }
}
*/