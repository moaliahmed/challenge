class Comment {
  bool arrowUp;

  bool arrowDown;

  late int nLike;
  final String author;
  final String content;
  final List<Comment> replies;

  Comment(
      {this.arrowUp = false,
      this.arrowDown = false,
      required this.nLike,
      required this.author,
      required this.content,
      this.replies = const []});
}

class Video {
  late int like;
  bool arrowUp;

  bool arrowDown;

  final String video;

  final List<Comment> comment;

  Video(
      {required this.video,
      required this.comment,
      required this.like,
      this.arrowDown = false,
      this.arrowUp = false});
}

List<Video> data = [
  Video(
      arrowUp: false,
      arrowDown: false,
      video: 'assets/video.mp4',
      like: 277,
      comment: [
        Comment(
            arrowUp: false,
            arrowDown: false,
            author: 'mohamed',
            content: 'this is great video ',
            nLike: 2,
            replies: []),
        Comment(
          arrowUp: false,
          author: 'ahmed',
          content: 'this is great video ',
          nLike: 2,
          replies: [],
        ),
        Comment(
          arrowUp: false,
          arrowDown: false,
          author: 'Yasser',
          content:
              'this is great videossssssssssssssssssssssssssss sssssssssssssssssssssssssssssss ssfffffffffffffffffffff',
          nLike: 1,
          replies: [],
        ),
        Comment(
            author: 'mohamed',
            content: 'this is great video ',
            nLike: 2,
            replies: []),
        Comment(
          author: 'ahmed',
          content: 'this is great video ',
          nLike: 2,
          replies: [],
        ),
        Comment(
          author: 'Yasser',
          content:
              'this is great videossssssssssssssssssssssssssss sssssssssssssssssssssssssssssss ssfffffffffffffffffffff',
          nLike: 1,
          replies: [],
        ),
      ]),
  Video(
      arrowUp: false,
      arrowDown: false,
      video: 'assets/video2.mp4',
      like: 277,
      comment: [
        Comment(
            arrowUp: false,
            arrowDown: false,
            author: 'mohamed',
            content: 'this is great video ',
            nLike: 2,
            replies: []),
        Comment(
          arrowUp: false,
          author: 'ahmed',
          content: 'this is great video ',
          nLike: 2,
          replies: [],
        ),
        Comment(
          arrowUp: false,
          arrowDown: false,
          author: 'Yasser',
          content:
              'this is great videossssssssssssssssssssssssssss sssssssssssssssssssssssssssssss ssfffffffffffffffffffff',
          nLike: 1,
          replies: [],
        ),
        Comment(
            author: 'mohamed',
            content: 'this is great video ',
            nLike: 2,
            replies: []),
        Comment(
          author: 'ahmed',
          content: 'this is great video ',
          nLike: 2,
          replies: [],
        ),
        Comment(
          author: 'Yasser',
          content:
              'this is great videossssssssssssssssssssssssssss sssssssssssssssssssssssssssssss ssfffffffffffffffffffff',
          nLike: 1,
          replies: [],
        ),
      ]),
  Video(
      arrowUp: false,
      arrowDown: false,
      video: 'assets/video3.mp4',
      like: 277,
      comment: [
        Comment(
            arrowUp: false,
            arrowDown: false,
            author: 'mohamed',
            content: 'this is great video ',
            nLike: 2,
            replies: []),
        Comment(
          arrowUp: false,
          author: 'ahmed',
          content: 'this is great video ',
          nLike: 2,
          replies: [],
        ),
        Comment(
          arrowUp: false,
          arrowDown: false,
          author: 'Yasser',
          content:
              'this is great videossssssssssssssssssssssssssss sssssssssssssssssssssssssssssss ssfffffffffffffffffffff',
          nLike: 1,
          replies: [],
        ),
        Comment(
            author: 'mohamed',
            content: 'this is great video ',
            nLike: 2,
            replies: []),
        Comment(
          author: 'ahmed',
          content: 'this is great video ',
          nLike: 2,
          replies: [],
        ),
        Comment(
          author: 'Yasser',
          content:
              'this is great videossssssssssssssssssssssssssss sssssssssssssssssssssssssssssss ssfffffffffffffffffffff',
          nLike: 1,
          replies: [],
        ),
      ]),
  Video(
      arrowUp: false,
      arrowDown: false,
      video: 'assets/video4.mp4',
      like: 277,
      comment: [
        Comment(
            arrowUp: false,
            arrowDown: false,
            author: 'mohamed',
            content: 'this is great video ',
            nLike: 2,
            replies: []),
        Comment(
          arrowUp: false,
          author: 'ahmed',
          content: 'this is great video ',
          nLike: 2,
          replies: [],
        ),
        Comment(
          arrowUp: false,
          arrowDown: false,
          author: 'Yasser',
          content:
              'this is great videossssssssssssssssssssssssssss sssssssssssssssssssssssssssssss ssfffffffffffffffffffff',
          nLike: 1,
          replies: [],
        ),
        Comment(
            author: 'mohamed',
            content: 'this is great video ',
            nLike: 2,
            replies: []),
        Comment(
          author: 'ahmed',
          content: 'this is great video ',
          nLike: 2,
          replies: [],
        ),
        Comment(
          author: 'Yasser',
          content:
              'this is great videossssssssssssssssssssssssssss sssssssssssssssssssssssssssssss ssfffffffffffffffffffff',
          nLike: 1,
          replies: [],
        ),
      ]),

];
