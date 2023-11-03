// ignore_for_file: empty_catches

import 'package:edusa_past_exams/core/imports/imports.dart';

class StudyMaterial extends StatelessWidget {
  const StudyMaterial({Key? key}) : super(key: key);

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
          title: const Text('Study Material'),
          centerTitle: true,
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
          padding: const EdgeInsets.all(60),
          child: studys(),
        ),
      ),
    );
  }
}
