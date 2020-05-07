class Post {
  const Post({this.title, this.author, this.imageUrl});

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
      title: 'person1',
      author: '顾惜朝',
      imageUrl: 'https://static.xue.com/media/tea_man.jpg'),
  Post(
      title: 'person2',
      author: '戚少商',
      imageUrl: 'https://static.xue.com/media/tea_man.jpg'),
  Post(
      title: 'person3',
      author: '霍乱法',
      imageUrl: 'https://static.xue.com/media/tea_man.jpg'),
  Post(
      title: 'person4',
      author: '冯乱水',
      imageUrl: 'https://static.xue.com/media/tea_man.jpg'),
  Post(
      title: 'person5',
      author: '张乱虎',
      imageUrl: 'https://static.xue.com/media/tea_man.jpg'),
  Post(
      title: 'person6',
      author: '宋乱步',
      imageUrl: 'https://static.xue.com/media/tea_man.jpg')
];
