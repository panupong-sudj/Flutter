import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tweet extends StatelessWidget {
  final String avatarturl;
  final String postext;
  final String image;
  final bool isEmpty;
  const Tweet(
      {super.key,
      required this.avatarturl,
      required this.postext,
      required this.image,
      required this.isEmpty});

  @override
  Widget build(BuildContext context) {
    return tweet();
  }

  Widget tweet() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tweetAvatar(),
        tweetbody(),
      ],
    );
  }

  Widget tweetbody() {
    return Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        tweetHeader(),
        isEmpty ? tweetImage(postext) : tweetText(postext),
        tweetButton(),
      ]),
    );
  }

  Widget tweetText(String text) {
    isEmpty == true;
    return Text(text, style: const TextStyle(fontSize: 19));
  }

  Widget tweetImage(String text) {
    isEmpty == false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: const TextStyle(fontSize: 19)),
        const SizedBox(height: 4.0),
        Image(
          fit: BoxFit.contain,
          width: 800,
          image: AssetImage(image),
        )
      ],
    );
  }

  Widget tweetButton() {
    return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10, right: 86),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            tweetIconButton(FontAwesomeIcons.message, "22k"),
            tweetIconButton(FontAwesomeIcons.retweet, ""),
            tweetIconButton(FontAwesomeIcons.heart, "325K"),
            tweetIconButton(FontAwesomeIcons.share, ""),
          ],
        ));
  }

  Widget tweetIconButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 18.0,
        ),
        Container(
          margin: const EdgeInsets.all(6.0),
          child: Text(
            text,
            style: const TextStyle(color: Colors.grey, fontSize: 15),
          ),
        )
      ],
    );
  }

  Widget tweetHeader() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5.0),
          child: const Text(
            "Pn_Sun",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Text(
          "@Mr.sun 10s",
          style: TextStyle(color: Colors.grey),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.angleDown,
              size: 14.0,
              color: Colors.grey,
            ))
      ],
    );
  }

  Widget tweetAvatar() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatarturl),
          ),
        ],
      ),
    );
  }
}
