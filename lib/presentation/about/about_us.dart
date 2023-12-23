import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[700],
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.green[900],
        title: const Text(
          'درباره ما',
          style: TextStyle(
            fontFamily: 'iranSans',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Expanded(
          child: ListView(
            children: const [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  'ما در این اپلیکیشن به نام "فال گیر خودکار" توانسته‌ایم یک تجربه جذاب و منحصربه‌فرد را برای کاربران خود فراهم کنیم. با این اپلیکیشن، کاربران می‌توانند به سادگی و به صورت خودکار از تعبیر فال‌های مختلفی از جمله فال تاروت، جادویی، روزانه و... بهره‌مند شوند.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'vazir',
                  ),
                ),
              ),
              SizedBox(height: 5),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  'تمامی فال‌های ارائه شده در این اپلیکیشن، با دقت و دانش تخصصی از جانب کارشناسان و استادان متخصص ارائه می‌شوند تا به کاربران کمک کنند تا بهترین تفسیر را برای سوالات و نیازهایشان داشته باشند.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'vazir',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  'ویژگی‌های اصلی این اپلیکیشن شامل :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'iranSans',
                  ),
                ),
              ),
              SizedBox(height: 15),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  '1)  تنوع در فال‌ها: ارائه انواع مختلف فال‌ها از جمله تاروت، جادویی، روزانه، عشق و روابط، شانس و... برای پاسخ به نیازهای مختلف کاربران.\n\n2) خودکارسازی: این اپلیکیشن با بهره‌گیری از الگوریتم‌های پیشرفته، به صورت خودکار فال‌ها را برای کاربران ارائه می‌دهد، بدون نیاز به تداخل انسانی. \n\n3) دقت و تخصص: تفسیرات ارائه شده توسط این اپلیکیشن، بر اساس دانش و تخصص کارشناسان متخصص صورت می‌گیرد تا بهترین تجربه ممکن برای کاربران فراهم شود. \n\n4) رابط کاربری کارآمد: رابط کاربری ساده و دوستانه که امکان دسترسی آسان و سریع به فال‌ها را برای همه ارائه می‌دهد.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'lalezar',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
