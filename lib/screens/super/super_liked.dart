import 'package:dating_ui/styleguides/colors.dart';
import 'package:dating_ui/styleguides/text_styles.dart';
import 'package:flutter/material.dart';

class SuperLikedScreen extends StatelessWidget {
  const SuperLikedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'SELECT',
              style: actionMenuStyle,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Super Liked Me',
              style: headingTextStyle.copyWith(color: Colors.black),
            ),
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  hintStyle:
                      whiteSubHeadingTextStyle.copyWith(color: hintTextColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  'Super Likes',
                  style: subTitleTextStyle.copyWith(color: Colors.black),
                ),
                SizedBox(width: 20),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: whiteSubHeadingTextStyle,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  '1h',
                  style: subTitleTextStyle.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: ListTile(
                  title: Text(
                    'Roseline',
                    style: titleStyle,
                  ),
                  subtitle: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/location_pin.png',
                        width: 15,
                        height: 15,
                        color: Colors.black,
                      ),
                      Text(
                        " 82 Kilometers",
                        style: whiteSubHeadingTextStyle.copyWith(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  leading: ClipOval(
                    child: Image.asset(
                      'assets/images/anne.jpeg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  trailing: SizedBox(
                    width: 75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'ONLINE',
                                style: whiteSubHeadingTextStyle.copyWith(
                                  color: Colors.green,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Icon(
                            Icons.star,
                            color: blueColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: 10,
          ))
        ],
      ),
    );
  }
}
