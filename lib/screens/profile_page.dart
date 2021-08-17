import 'package:dating_ui/styleguides/colors.dart';
import 'package:dating_ui/styleguides/text_styles.dart';
import 'package:dating_ui/widgets/my_info.dart';
import 'package:dating_ui/widgets/opaque_image.dart';
import 'package:dating_ui/widgets/profile_info_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    OpaqueImage(
                      imageUrl: 'assets/images/anne.jpeg',
                    ),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'My Profile',
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              ),
                            ),
                            MyInfo(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Table(
                      children: [
                        TableRow(
                          children: [
                            ProfileInfoCard(
                              firstText: '13',
                              secondText: 'New matches',
                              widget: Icon(
                                Icons.star,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                            ProfileInfoCard(
                              firstText: '21',
                              secondText: 'Unmatched me',
                              widget: Image.asset(
                                'assets/icons/sad_smiley.png',
                                width: 32,
                                color: blueColor,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            ProfileInfoCard(
                              firstText: '264',
                              secondText: 'All matches',
                              widget: Image.asset(
                                'assets/icons/checklist.png',
                                width: 32,
                                color: blueColor,
                              ),
                            ),
                            ProfileInfoCard(
                              firstText: '21',
                              secondText: 'Rematches',
                              widget: Icon(
                                Icons.refresh,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            ProfileInfoCard(
                              firstText: '83',
                              secondText: 'Profile Visitors',
                              widget: Icon(
                                Icons.remove_red_eye,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                            ProfileInfoCard(
                              firstText: '42',
                              secondText: 'Super Likes',
                              widget: Icon(
                                Icons.favorite,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
