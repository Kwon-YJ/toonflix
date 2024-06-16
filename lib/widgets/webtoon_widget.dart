import "package:flutter/material.dart";
import "package:flutter/src/widgets/framework.dart";
import "package:toonflix/screens/detail_screen.dart";

class Webtoon extends StatelessWidget {
  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  final String title, thumb, id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  DetailScreen(id: id, thumb: thumb, title: title),
              fullscreenDialog: true,
            ));
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: id,
                child: Container(
                  child: Image.network(thumb),
                  width: 250,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            offset: Offset(2, 1),
                            color: Colors.black.withOpacity(.9))
                      ]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
            ),
          )
        ],
      ),
    );
  }
}
