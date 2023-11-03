// ignore_for_file: empty_catches

import 'package:edusa_past_exams/core/imports/imports.dart';
import 'package:edusa_past_exams/core/widgets/terms.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Past Exams Papers'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.offAllNamed(
              '/welcome',
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: terms,
        ),
      ),
    );
  }
}
