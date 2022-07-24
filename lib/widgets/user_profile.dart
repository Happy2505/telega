import 'package:flutter/material.dart';
import 'package:lesson_1/widgets/app.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(height: 20),
            _MenuWidget(),
            SizedBox(height: 20),
            _SecondMenuWidget(),
            SizedBox(height: 18),
            _PremiumWidget()
          ],
        ),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          SizedBox(height: 25),
          CircleAvatar(backgroundImage: AssetImage('assets/1.jpg'), radius: 55,),
          SizedBox(height: 25),
          Text(
            'Максим',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 2),
          Text('+7 999 627-89-24  @Maxim_ka1', style: TextStyle(color: Colors.grey),),
        ],
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      color: Colors.white24,
      width: double.infinity,
      child: Column(
        children: [
          _MenuWidgetsRow(icon: Icons.bookmark, text: 'Избранное'),
          _MenuWidgetsRow(icon: Icons.call_sharp, text: 'Недавние звонки'),
          _MenuWidgetsRow(icon: Icons.computer, text: 'Устройства'),
          _MenuWidgetsRow(icon: Icons.folder, text: 'Папки с чатами'),
        ],

      ),
    );
  }
}

class _SecondMenuWidget extends StatelessWidget {
  const _SecondMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      width: double.infinity,
      child: Column(
        children: [
          _MenuWidgetsRow(icon: Icons.edit_notifications_rounded, text: 'Уведомления и звук'),
          _MenuWidgetsRow(icon: Icons.lock, text: 'Конфиденциальность'),
          _MenuWidgetsRow(icon: Icons.storage_rounded, text: 'Данные и память'),
          _MenuWidgetsRow(icon: Icons.style_rounded, text: 'Оформление'),
          _MenuWidgetsRow(icon: Icons.language_rounded, text: 'Язык'),
          _MenuWidgetsRow(icon: Icons.face_unlock_outlined, text: 'Стикеры и эмодзи'),
        ],

      ),
    );
  }
}

class _PremiumWidget extends StatelessWidget {
  const _PremiumWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      width: double.infinity,
      child: Column(
        children: [
          _MenuWidgetsRow(icon: Icons.star, text: 'Telegram Preimum'),
        ],

      ),
    );
  }
}




class _MenuWidgetsRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _MenuWidgetsRow({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 15),
          Expanded(child: Text(text, style: TextStyle(color: Colors.white))),
          Icon(Icons.chevron_right, color: Colors.white38,)
        ],
      ),
    );
  }
}



