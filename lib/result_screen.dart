import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  late double result;

  Result(this.result);

  bool isResult(dynamic result){
    if (result>18.5 && result < 24.9){
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 18, 52, 1),
      appBar: AppBar(
        title: Text(
            'RESULT'
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(15, 21, 60, 1),
        shadowColor: Colors.black,
        elevation: 30,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                            '${isResult(result)? 'Normal' : 'Not normal'}',
                            style: TextStyle(
                              color: isResult(result)? Colors.green : Colors.red,
                              fontSize: 20,
                            ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                          '${result.floorToDouble()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                          'Thank you for using BMI Calculator, Stay Healthy ❤.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color.fromRGBO(39, 42, 78, 1),
                ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Color.fromRGBO(255, 0, 103,1),
              child: MaterialButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text(
                    'THANK YOU',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
