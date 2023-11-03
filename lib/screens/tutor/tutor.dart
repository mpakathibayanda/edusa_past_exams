// ignore_for_file: empty_catches

import 'package:edusa_past_exams/core/imports/imports.dart';

class Tutor extends StatelessWidget {
  const Tutor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool willPop = true;
        Get.offAllNamed('/welcome');
        return willPop;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.offAllNamed(
                '/welcome',
              );
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(child: tutorCard()),
        ),
      ),
    );
  }
}
