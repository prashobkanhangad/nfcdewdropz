import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 0, 0, 0)),
              color: Color.fromARGB(255, 235, 234, 234),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Container(
            width: screensize.width,
            height: screensize.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.w,
                ),
                CircleAvatar(
                  radius: 100.w,
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  child: Image.asset('asset/logodewdropz.png'),
                ),
                SizedBox(
                  height: 20.w,
                ),
                Text(
                  'Dewdropz Wedding Cinema',
                  style: TextStyle(fontSize: 22.w, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.w,
                ),
                SizedBox(
                  height: 5.w,
                ),
                socialmedia(),
                address(),
                SizedBox(
                  height: 20.w,
                ),
                button()
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class button extends StatelessWidget {
  const button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 40.w,
            width: 150.w,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 37, 119, 82),

                // color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.w))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.save,
                  size: 24.sp,
                  color: Colors.white,
                ),
                Text(
                  'Save Contact',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: 40.w,
            width: 150.w,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 37, 119, 82),

                // color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.w))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.share,
                  size: 24.sp,
                  color: Colors.white,
                ),
                Text(
                  'Share Location',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class address extends StatelessWidget {
  const address({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.only(left: 10),
      color: Color.fromARGB(255, 188, 241, 217),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 10.w,
          ),
          Row(
            children: [
              Icon(
                Icons.call,
                size: 24.sp,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                '+91 7012 117 177',
                style: TextStyle(
                  fontSize: 18.w,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.call,
                size: 24.sp,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                '+91 9947 181 306',
                style: TextStyle(
                  fontSize: 18.w,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.email,
                size: 24.sp,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'krishobkichu77@gmail.com',
                style: TextStyle(
                  fontSize: 18.w,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 24.sp,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'North Kottachery, Kanhangad  ',
                style: TextStyle(
                  fontSize: 18.w,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 24.sp,
                color: Color.fromARGB(255, 188, 241, 217),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Kasargod, Kerala, 671 316  ',
                style: TextStyle(
                  fontSize: 18.w,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
    );
  }
}

class socialmedia extends StatelessWidget {
  const socialmedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Find Us On',
            style: TextStyle(fontSize: 16.sp),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => launchUrl(Uri.parse(
                    'https://www.facebook.com/profile.php?id=100054593103004&mibextid=LQQJ4d')),
                child: Icon(
                  color: Color.fromARGB(255, 25, 118, 194),
                  Icons.facebook,
                  size: 28.sp,
                ),
              ),
              GestureDetector(
                // onTap: () => launchUrl(Uri.parse('https://wa.me/917012117177')),
                child: FaIcon(
                  color: Color.fromARGB(255, 48, 149, 52),
                  FontAwesomeIcons.whatsapp,
                  size: 28.sp,
                ),
              ),
              // GestureDetector(onTap: () => Get.to(YoutubeAppDemo()),
              GestureDetector(
                onTap: () => launchUrl(Uri.parse(
                    'https://youtube.com/@dewdropzweddingcinema6521')),
                child: FaIcon(
                  color: Colors.red,
                  FontAwesomeIcons.youtube,
                  size: 28.sp,
                ),
              ),
              // ),
              GestureDetector(
                onTap: () => launchUrl(Uri.parse(
                    'https://instagram.com/dewdropz_wedding_cinemas?igshid=NzAzN2Q1NTE=')),
                child: FaIcon(
                  color: Color.fromARGB(255, 130, 40, 166),
                  FontAwesomeIcons.instagram,
                  size: 28.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
