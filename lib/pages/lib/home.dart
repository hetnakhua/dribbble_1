//library pages;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: RichText(
          text: TextSpan(
              text: 'Hello ',
              style: GoogleFonts.lato(
                fontSize: 28,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                    text: 'Nick',
                    style: GoogleFonts.lato(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ))
              ]),
        ),
        titleSpacing: 20,
        actions: [
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: 30,
              )),
          Container(
            padding: const EdgeInsets.all(8),
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/user-avatar_1.png'),
              radius: 20,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15, 24, 15, 0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              //fit: StackFit.loose,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF09090A),
                  ),
                  width: size.width,
                  height: 350,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFE0FF0E),
                  ),
                  width: size.width,
                  height: 200,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Amount',
              textAlign: TextAlign.left,
              style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '500.00 USD',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.arrow_right_alt,
                    color: Colors.black,
                  ),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFE0FF0E),
                  ),
                )
              ],
            ),
            Divider(
              height: 20,
              color: Colors.grey[300],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View all',
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 90,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF4C9),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset('assets/food_1.jpg'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Fast food',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[850],
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        '\$450.00',
                        style: GoogleFonts.lato(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[850],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
