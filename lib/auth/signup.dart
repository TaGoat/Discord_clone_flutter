import 'package:discord/auth/intro-screen.dart';
import 'package:discord/auth/splashscreen.dart';
import 'package:discord/utils/colors.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  SignupState createState() => SignupState();
}

class SignupState extends State<Signup> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void nextPage() {
    if (_currentPage < 3) {
      _pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      setState(() {
        _currentPage++;
      });
    }
  }

  void prevPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeOut);
      setState(() {
        _currentPage--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          PhoneEmailStep(nextPage: nextPage, prevPage: prevPage),
          NameStep(nextPage: nextPage, prevPage: prevPage),
          AccountStep(nextPage: nextPage, prevPage: prevPage),
          AgeStep(prevPage: prevPage),
        ],
      ),
    );
  }
}

class PhoneEmailStep extends StatefulWidget {
  final VoidCallback nextPage;
  final VoidCallback prevPage;

  const PhoneEmailStep({super.key, required this.nextPage, required this.prevPage});

  @override
  PhoneEmailStepState createState() => PhoneEmailStepState();
}

class PhoneEmailStepState extends State<PhoneEmailStep> {
  bool isEmail = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=>{
          Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => IntroScreen()),
          )
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text("Enter your phone or email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => isEmail = false),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: !isEmail ? AppColors.gray : AppColors.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child:
                          Text("Phone", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => isEmail = true),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: isEmail ? AppColors.gray : AppColors.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child:
                          Text("Email", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType:
                  !isEmail ? TextInputType.phone : TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: isEmail ? "Email" : "Phone",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  )),
            ),
            Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: widget.nextPage,
                child: Text("Next",
                    style: TextStyle(color: Colors.white, fontSize: 16))),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class NameStep extends StatelessWidget {
  final VoidCallback nextPage;
  final VoidCallback prevPage;

  const NameStep({super.key, required this.nextPage, required this.prevPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: prevPage),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text("What is your name?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 20),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  )),
            ),
            Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: nextPage,
                child: Text("Next",
                    style: TextStyle(color: Colors.white, fontSize: 16))),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class AccountStep extends StatelessWidget {
  final VoidCallback nextPage;
  final VoidCallback prevPage;

  const AccountStep({super.key, required this.nextPage, required this.prevPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: prevPage),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text("Create an account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 40),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  )),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  )),
            ),
            Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: nextPage,
                child: Text("Next",
                    style: TextStyle(color: Colors.white, fontSize: 16))),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class AgeStep extends StatelessWidget {
  final VoidCallback prevPage;

  const AgeStep({super.key, required this.prevPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: prevPage),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text("How old are you?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 40),
            TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                  labelText: "Date of birth",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  )),
            ),
            Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () => {Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => SplashScreen()),
                )},
                child: Text("Create an account",
                    style: TextStyle(color: Colors.white, fontSize: 16))),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
