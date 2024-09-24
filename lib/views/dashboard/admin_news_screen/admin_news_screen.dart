import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../global_widget/colors.dart';
import '../../../global_widget/date_time_formator.dart';
import '../../../global_widget/global_button.dart';
import '../../../global_widget/global_container.dart';
import '../../../global_widget/global_sizedbox.dart';
import '../../../global_widget/global_textform_field.dart';
import '../../../global_widget/input_decoration.dart';
import '../../../global_widget/show_date_time_picker.dart';
import '../admin_login_screen/admin_login_screen.dart';
import 'admin_news_details.dart';

class AdminNewsScreen extends StatefulWidget {
  AdminNewsScreen({super.key});

  @override
  State<AdminNewsScreen> createState() => _AdminNewsScreenState();
}

class _AdminNewsScreenState extends State<AdminNewsScreen> {
  final List<Map<String, dynamic>> newsItems = [
    {
      'title': 'Swapnobaj',
      'image': 'assets/images/saeid.jpg',
      'date': '22/03/2024',
      'description':
          """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.""",
    },
    {
      'title': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'image': 'assets/images/saeid.jpg',
      'date': '23/03/2024',
      'description':
          """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.""",
    },
    {
      'title': 'Lorem Ipsum is simply dummy text',
      'image': 'assets/images/saeid.jpg',
      'date': '23/03/2024',
      'description':
          """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.""",
    },
    {
      'title': 'Lorem Ipsum is simply dummy text',
      'image': 'assets/images/saeid.jpg',
      'date': '23/03/2024',
      'description':
          """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.""",
    },
    {
      'title': 'Swapnobaj',
      'image': 'assets/images/saeid.jpg',
      'date': '23/03/2024',
      'description':
          """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.""",
    },
    {
      'title': 'Swapnobaj',
      'image': 'assets/images/saeid.jpg',
      'date': '23/03/2024',
      'description':
          """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.""",
    },
    // Add more items as needed
  ];

  final TextEditingController selectNewsDateCon = TextEditingController();
  final TextEditingController selectTitleCon = TextEditingController();
  final TextEditingController selectDescriptionCon = TextEditingController();

  String? _fileName;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _fileName = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: ColorRes.borderColor,
        backgroundColor: ColorRes.white,
        iconTheme: const IconThemeData(color: ColorRes.primaryColor),
        centerTitle: true,
        title: const Text(
          'News',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: ColorRes.primaryColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const SignInScreen());
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            GlobalContainer(
              backgroundColor: ColorRes.white,
              elevation: 1,
              width: Get.width,
              borderRadius: 8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GlobalTextFormField(
                      controller: selectNewsDateCon,
                      titleText: 'Select Date',
                      hintText: "Select Date".tr,
                      titleStyle: const TextStyle(color: ColorRes.textColor, fontSize: 12, fontWeight: FontWeight.w400, fontFamily: 'Roboto'),
                      isDense: true,
                      decoration: inputDropDecoration,
                      filled: true,
                      sufixIcon: GestureDetector(
                          onTap: () async {
                            var pickedDate = await showDateOnlyPicker(context);
                            if (pickedDate != null) {
                              String formattedDate = DateTimeFormatter.showDateOnlyYear.format(pickedDate);
                              setState(() {
                                selectNewsDateCon.text = formattedDate;
                              });
                            }
                          },
                          child: const Icon(Icons.calendar_month, color: ColorRes.textColor, size: 20)),
                    ),
                    const SizedBox(height: 10),
                    GlobalTextFormField(
                      controller: selectTitleCon,
                      titleText: 'Title',
                      hintText: 'Enter Title',
                      isDense: true,
                      decoration: inputDropDecoration,
                      filled: true,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Attachment',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ColorRes.textColor, fontFamily: 'Rubik'),
                      textAlign: TextAlign.left,
                    ),
                    sizedBoxH(5),
                    GlobalButtonWidget(
                      str: 'Choose File',
                      height: 50,
                      width: Get.width,
                      textSize: 14,
                      textColor: ColorRes.textColor,
                      radius: 5,
                      borderColor: ColorRes.borderColor,
                      buttomColor: Colors.transparent,
                      onTap: _pickFile,
                    ),
                    if (_fileName != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Selected file: $_fileName',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    const SizedBox(height: 10),
                    GlobalTextFormField(
                      controller: selectDescriptionCon,
                      titleText: 'Description',
                      hintText: 'Enter Description',
                      isDense: true,
                      decoration: inputDropDecoration,
                      maxLine: 5,
                      filled: true,
                    ),
                    const SizedBox(height: 20),
                    GlobalButtonWidget(
                      str: 'Submit',
                      height: 45,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            GlobalContainer(
              backgroundColor: ColorRes.backgroundColor,
              child: SizedBox(
                height: Get.height,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: newsItems.length,
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => AdminNewsDetailsScreen(
                                newsTitle: newsItems[index]['title'] ?? 'No Title', // Added null check
                                imagePath: newsItems[index]['image'] ?? 'assets/images/placeholder.png', // Added null check
                                date: newsItems[index]['date'] ?? 'No Date', // Added null check
                                details: newsItems[index]['description'] ?? 'No Description', // Added null check
                                index: index,
                              ));
                        },
                        child: Card(
                          margin: const EdgeInsets.only(top: 10),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    newsItems[index]['title'] ?? 'No Title', // Added null check
                                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: ColorRes.textColor),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Image.asset(
                                      newsItems[index]['image'] ?? 'assets/images/placeholder.png', // Added null check
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: ColorRes.primaryColor.withOpacity(0.05),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            newsItems[index]['date'] ?? 'No Date', // Added null check
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    selectNewsDateCon.dispose();
    selectTitleCon.dispose();
    selectDescriptionCon.dispose();
    super.dispose();
  }
}
