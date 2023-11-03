import 'package:edusa_past_exams/core/imports/imports.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  Future<bool?> showWarning(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            'Do you want to QUIT the App?',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.deepOrange,
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text(
                'Yes',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text(
                'No',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool isQuiting = false;
        final quiting = await showWarning(context);
        isQuiting = quiting ?? false;
        return isQuiting;
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 40,
                      bottom: 80,
                      top: 80,
                      right: 12,
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/logo/app_icon.png'),
                          height: 120,
                          width: 90,
                        ),
                        SizedBox(height: 30),
                        Text(
                          'WELCOME TO EDUSA: GRADE 12 MATH',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 254, 59, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  button(
                    onPressed: () {
                      Get.offNamed('/past_papers');
                    },
                    title: 'Past Exams Papers',
                  ),
                  const SizedBox(height: 45),
                  button(
                    onPressed: () {
                      Get.offNamed('/study');
                    },
                    title: 'Study Material',
                  ),
                  const SizedBox(height: 45),
                  button(
                    onPressed: () {
                      Get.offNamed('/tutor');
                    },
                    title: 'Math Tutor',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
