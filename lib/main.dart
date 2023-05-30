import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Quran(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Quran extends StatefulWidget {
  const Quran({Key? key}) : super(key: key);

  @override
  _QuranState createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  int index = 0;
  List ayat = [
    {
      "aya":
          "قُلْ يَا أَهْلَ الْكِتَابِ لِمَ تَصُدُّونَ عَن سَبِيلِ اللَّهِ مَنْ آمَنَ تَبْغُونَهَا عِوَجًا وَأَنتُمْ شُهَدَاءُ ۗ وَمَا اللَّهُ بِغَافِلٍ عَمَّا تَعْمَلُونَ",
      "describe":
          "قل -أيها الرسول- لليهود والنصارى: لِمَ تمنعون من الإسلام من يريد الدخول فيه تطلبون له زيغًا وميلا عن القصد والاستقامة، وأنتم تعلمون أن ما جئتُ به هو الحق؟ وما الله بغافل عما تعملون، وسوف يجازيكم على ذلك"
    },
    {
      "aya": "اقْتَرَبَ لِلنَّاسِ حِسَابُهُمْ وَهُمْ فِي غَفْلَةٍ مُّعْرِضُونَ",
      "describe":
          "دنا وقت حساب الناس على ما قدَّموا من عمل، ومع ذلك فالكفار يعيشون لاهين عن هذه الحقيقة، معرضين عن هذا الإنذارَ",
    },
    {
      "aya":
          "وَأَنذِرْهُمْ يَوْمَ الْحَسْرَةِ إِذْ قُضِيَ الْأَمْرُ وَهُمْ فِي غَفْلَةٍ وَهُمْ لَا يُؤْمِنُونََ",
      "describe":
          "أنذر – أيها الرسول – الناس يوم الندامة حين يُقضى الأمر، ويُجَاءُ بالموت كأنَّه كبش أملح، فيُذْبَح، ويُفصل بين الخلق، فيصير أهل الإيمان إلى الجنة، وأهل الكفر إلى النار، وهم اليوم في هذه الدنيا في غفلة عمَّا أُنذروا به، فهم لا يصدقون، ولا يعملون العمل الصالح"
    },
    {
      "aya":
          "وَمِنْ حَيْثُ خَرَجْتَ فَوَلِّ وَجْهَكَ شَطْرَ الْمَسْجِدِ الْحَرَامِ ۖ وَإِنَّهُ لَلْحَقُّ مِن رَّبِّكَ ۗ وَمَا اللَّهُ بِغَافِلٍ عَمَّا تَعْمَلُونَ",
      "describe":
          "من أي مكان خَرَجْتَ -أيها النبي- مسافرًا، وأردت الصلاة، فوجِّه وجهك نحو المسجد الحرام. وإنَّ توجُّهك إليه لهو الحق الثابت من ربك. وما الله بغافل عما تعملونه، وسيجازيكم على ذلك"
    },
    {
      "aya":
          "وَلَا تَحْسَبَنَّ اللَّهَ غَافِلًا عَمَّا يَعْمَلُ الظَّالِمُونَ ۚ إِنَّمَا يُؤَخِّرُهُمْ لِيَوْمٍ تَشْخَصُ فِيهِ الْأَبْصَارُ",
      "describe":
          "لا تحسبن -أيها الرسول- أن الله غافل عما يعمله الظالمون: من التكذيب بك وبغيرك من الرسل، وإيذاء المؤمنين وغير ذلك من المعاصي، إنما يؤخِّرُ عقابهم ليوم شديد ترتفع فيه عيونهم ولا تَغْمَض؛ مِن هول ما تراه. وفي هذا تسلية لرسول الله محمد صلى الله عليه وسلم"
    },
    {
      "aya":
          "وَلِكُلٍّ دَرَجَاتٌ مِّمَّا عَمِلُوا ۚ وَمَا رَبُّكَ بِغَافِلٍ عَمَّا يَعْمَلُونَ",
      "describe":
          "لكل عامل في طاعة الله تعالى أو معصيته مراتب من عمله، يبلِّغه الله إياها، ويجازيه عليها. وما ربك -أيها الرسول- بغافل عما يعمل عباده"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            Text(
              " بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِ",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[600]),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              ayat[index]["aya"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900]),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              ayat[index]["describe"],
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[600]),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    elevation: 10,
                    onPressed: () {
                      setState(() {
                        if (index != ayat.length - 1) index++;
                      });
                    },
                    backgroundColor: Colors.green[600],
                    child: Text("Next")),
                SizedBox(
                  width: 90,
                ),
                FloatingActionButton(
                    elevation: 10,
                    onPressed: () {
                      setState(() {
                        if (index != 0) index--;
                      });
                    },
                    backgroundColor: Colors.green[600],
                    child: Text("Back")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
