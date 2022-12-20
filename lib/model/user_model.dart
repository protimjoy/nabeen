class UserModel {
  UserModel({
    this.name,
    this.status,
    this.img,
    this.designation
  });
  String? name, status, img, designation;
  static List<UserModel> users(){
    return [
      UserModel(
        name: "Sheikh Hasina",
        status: 'online',
        img: 'images/profile_image.png',
        designation: 'Parliamentarian'
      ),
      UserModel(
        name: "Khaleda Jia",
        status: 'online',
        img: 'images/profile_image.png',
        designation: 'Parliamentarian'
      ),
      UserModel(
          name: "Joy Protim",
          status: 'online',
          img: 'images/profile_image.png',
          designation: 'Parliamentarian'
      ),
      UserModel(
          name: "MD. Rooman",
          status: 'online',
          img: 'images/profile_image.png',
          designation: 'Parliamentarian'
      ),
    ];
  }
}
