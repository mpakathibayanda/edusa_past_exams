import 'package:edusa_past_exams/core/imports/imports.dart';

class Term1 extends StatefulWidget {
  const Term1({Key? key}) : super(key: key);

  @override
  State<Term1> createState() => _Term1State();
}

class _Term1State extends State<Term1> {
  @override
  Widget build(BuildContext context) {
    final data = Get.arguments;
    return WillPopScope(
      onWillPop: () async {
        bool willPop = true;
        Get.offAllNamed('/past_papers');
        return willPop;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Get.offAllNamed(
              '/past_papers',
            ),
          ),
          title: const Text(
            'Select A Paper',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: term1Papers(data: data),
          ),
        ),
      ),
    );
  }
}
