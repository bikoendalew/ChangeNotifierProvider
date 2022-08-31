class Filee{
  final int userId;
  final int id;
  final String title;
  const Filee({ required this.userId, required this.id,required this.title
});
 factory Filee.fromJson(Map<String,dynamic>json){
    return Filee(
        userId:json['userId'],
        id:json['id'],
        title:json['title']
    );

  }


}
