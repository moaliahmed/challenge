import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:challenge/view/video_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:challenge/data/local_data.dart';

class CommentScreen extends StatefulWidget {
  CommentScreen({super.key, required this.controller, required this.comment});

  final VideoPlayerController controller;
  final List<Comment> comment;
  TextEditingController textEditingController = TextEditingController();

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  void addItem(String value) {
    widget.comment.add(Comment(nLike: 0, author: 'mohamed', content: value));
    setState(() {});
  }

  void deleteItem(index) {
    widget.comment.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black26,
      body: Column(
        children: [
          VideoViewController(controller: widget.controller),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(18)),
              child: ListView.builder(
                itemCount: widget.comment.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.grey[850],
                    margin: const EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(99),
                                    ),
                                  ),
                                  child: const Icon(Icons.person)),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                widget.comment[index].author,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 29),
                            child: Text(
                              widget.comment[index].content,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  scaffoldKey.currentState!.showBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    (context) => Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey[900],
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                          )),
                                      height: 490,
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const ListTile(
                                            leading: Icon(
                                              Icons.ios_share_rounded,
                                              color: Colors.white,
                                              size: 28,
                                            ),
                                            title: Text(
                                              'Share',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            ),
                                          ),
                                          const ListTile(
                                            leading: Icon(
                                              Icons.save_alt_outlined,
                                              color: Colors.white,
                                              size: 28,
                                            ),
                                            title: Text(
                                              'Save',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            ),
                                          ),
                                          const ListTile(
                                            leading: Icon(
                                              Icons
                                                  .notification_important_outlined,
                                              color: Colors.white,
                                              size: 28,
                                            ),
                                            title: Text(
                                              'Stop reply notifications',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            ),
                                          ),
                                          const ListTile(
                                            leading: Icon(
                                              Icons.copy,
                                              color: Colors.white,
                                              size: 28,
                                            ),
                                            title: Text(
                                              'Copy Text',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            ),
                                          ),
                                          const ListTile(
                                            leading: Icon(
                                              Icons.compare_arrows_outlined,
                                              color: Colors.white,
                                              size: 28,
                                            ),
                                            title: Text(
                                              'Collapse thread',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            ),
                                          ),
                                          const ListTile(
                                            leading: Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                              size: 28,
                                            ),
                                            title: Text(
                                              'Edit',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              AwesomeDialog(
                                                context: context,
                                                dialogType: DialogType.warning,
                                                animType: AnimType.rightSlide,
                                                title: 'Are you sure',
                                                desc:
                                                    'you can\'t restore comments that have been deleted ',
                                                btnCancelOnPress: () {},
                                                btnOkOnPress: () {
                                                  deleteItem(index);
                                                  Navigator.of(context).pop();
                                                },
                                              ).show();
                                            },
                                            child: const ListTile(
                                              leading: Icon(
                                                Icons.delete,
                                                color: Colors.white,
                                                size: 28,
                                              ),
                                              title: Text(
                                                'Delete',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.grey[800],
                                                borderRadius: const BorderRadius
                                                    .horizontal(
                                                  right: Radius.circular(20),
                                                  left: Radius.circular(20),
                                                ),
                                              ),
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 40,
                                              margin: const EdgeInsets.all(8),
                                              alignment: Alignment.center,
                                              child: const Text(
                                                'Close',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 24),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.format_list_bulleted,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.reply_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'reply',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (widget.comment[index].arrowUp) {
                                    widget.comment[index].arrowUp = false;
                                    widget.comment[index].nLike--;
                                  } else {
                                    if (widget.comment[index].arrowDown) {
                                      widget.comment[index].arrowDown = false;
                                      widget.comment[index].arrowUp = true;
                                      widget.comment[index].nLike += 2;
                                    } else {
                                      widget.comment[index].arrowUp = true;
                                      widget.comment[index].nLike++;
                                    }
                                  }
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.arrow_upward_outlined,
                                  color: widget.comment[index].arrowUp
                                      ? Colors.red
                                      : Colors.white,
                                ),
                              ),
                              Text(
                                '${widget.comment[index].nLike}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (widget.comment[index].arrowDown) {
                                    widget.comment[index].arrowDown = false;
                                    widget.comment[index].nLike++;
                                  } else {
                                    if (widget.comment[index].arrowUp) {
                                      widget.comment[index].arrowUp = false;
                                      widget.comment[index].arrowDown = true;
                                      widget.comment[index].nLike -= 2;
                                    } else {
                                      widget.comment[index].arrowDown = true;
                                      widget.comment[index].nLike--;
                                    }
                                  }
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.arrow_downward_outlined,
                                  color: widget.comment[index].arrowDown
                                      ? Colors.red
                                      : Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    controller: widget.textEditingController,
                    decoration: InputDecoration(
                      hintText: 'write a comment',
                      hintStyle: const TextStyle(color: Colors.white),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.grey[800],
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (widget.textEditingController.text.isEmpty) {
                    } else {
                      addItem(widget.textEditingController.text);
                      widget.textEditingController.text = '';
                    }
                  },
                  icon: const Icon(
                    Icons.send_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
