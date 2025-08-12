import 'package:flutter/material.dart';
import 'package:work_1/utils/constants/image_constants.dart';

class MessageScrn extends StatelessWidget {
  const MessageScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                bool isSmschecked = false;
                bool isEmailchecked = false;
                bool isWhatsappchecked = false;
                showDialog(
                  context: (context),
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return Flexible(
                          child: Dialog(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          ImageConstants.messageImg,
                                          width: 32.03,
                                          height: 32.03,
                                        ),
                                        SizedBox(width: 11),
                                        Text(
                                          "Send a Message",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(width: 60),
                                        Image.asset(ImageConstants.closeImg),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Text(
                                          "Message Type :",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(width: 12),
                                        Row(
                                          children: [
                                            Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.blue,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                color: Colors.white,
                                              ),
                                              child: SizedBox(
                                                width: 10,
                                                height: 10,
                                                child: Center(
                                                  child: Checkbox(
                                                    value: isSmschecked,
                                                    onChanged: (value) {
                                                      setState(
                                                        () => isSmschecked =
                                                            value!,
                                                      );
                                                    },
                                                    activeColor: Colors
                                                        .blue, // background when checked
                                                    checkColor: Colors
                                                        .white, // tick color

                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        color: Colors.white,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            4,
                                                          ), // rounded corners
                                                    ),

                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Text(
                                              "SMS",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 10),
                                        Row(
                                          children: [
                                            Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.blue,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                color: Colors.white,
                                              ),
                                              child: SizedBox(
                                                width: 10,
                                                height: 10,
                                                child: Center(
                                                  child: Checkbox(
                                                    value: isEmailchecked,
                                                    onChanged: (value) {
                                                      setState(
                                                        () => isEmailchecked =
                                                            value!,
                                                      );
                                                    },
                                                    activeColor: Colors
                                                        .blue, // background when checked
                                                    checkColor: Colors
                                                        .white, // tick color

                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        color: Colors.white,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            4,
                                                          ), // rounded corners
                                                    ),

                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Text(
                                              "Email",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.blue,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                color: Colors.white,
                                              ),
                                              child: SizedBox(
                                                width: 10,
                                                height: 10,
                                                child: Center(
                                                  child: Checkbox(
                                                    value: isWhatsappchecked,
                                                    onChanged: (value) {
                                                      setState(
                                                        () =>
                                                            isWhatsappchecked =
                                                                value!,
                                                      );
                                                    },
                                                    activeColor: Colors
                                                        .blue, // background when checked
                                                    checkColor: Colors
                                                        .white, // tick color

                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        color: Colors.white,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            4,
                                                          ), // rounded corners
                                                    ),

                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Text(
                                              "Whatsapp",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 280,
                                          height: 24,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              labelText: "To:",
                                              prefixText: "+91",
                                              suffixIcon: Icon(
                                                Icons.arrow_drop_down,
                                              ),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 26),
                                    SizedBox(
                                      width: 370,
                                      height: 163,

                                      child: TextField(
                                        minLines: 5,
                                        maxLines: 8,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color(0xffF3F4F7),
                                          hintText:
                                              "Enter your message here...",
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xffF3F4F7),
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),

                                      child: Row(
                                        children: [
                                          Image.asset(
                                            ImageConstants.archiveImg,
                                          ),
                                          SizedBox(width: 2),
                                          Text(
                                            "Save Draft",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          SizedBox(width: 20),

                                          Text(
                                            "Discard",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          SizedBox(width: 10),

                                          Container(
                                            width: 92,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),

                                            child: Center(
                                              child: Row(
                                                children: [
                                                  SizedBox(width: 18),
                                                  Image.asset(
                                                    ImageConstants.sendImg,
                                                  ),
                                                  SizedBox(width: 1.44),

                                                  Text(
                                                    "Send",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
              child: Text("show"),
            ),
          ],
        ),
      ),
    );
  }
}
