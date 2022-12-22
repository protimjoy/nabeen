class UserModel {
  UserModel({
    this.name, this.status, this.img, this.designation, this.zone
  });
  String? name, status, img, designation,zone;
  static List<UserModel> users(){
    return [
      UserModel(
          name: "Joy Protim",
          status: 'online',
          img: 'images/newsImage.png',
          designation: 'Parliamentarian',
          zone: 'Zone 1'
      ),
      UserModel(
          name: "MD. Rooman",
          status: 'online',
          img: 'images/profile_image.png',
          designation: 'Parliamentarian',
          zone: 'Zone 1'
      ),
      UserModel(
          name: "Joy Protim",
          status: 'online',
          img: 'images/newsImage.png',
          designation: 'Parliamentarian',
          zone: 'Zone 1'
      ),
      UserModel(
          name: "MD. Rooman",
          status: 'online',
          img: 'images/profile_image.png',
          designation: 'Parliamentarian',
          zone: 'Zone 1'
      ),
      UserModel(
          name: "Joy Protim",
          status: 'online',
          img: 'images/newsImage.png',
          designation: 'Parliamentarian',
          zone: 'Zone 1'
      ),
      UserModel(
          name: "MD. Rooman",
          status: 'online',
          img: 'images/profile_image.png',
          designation: 'Parliamentarian',
          zone: 'Zone 1'
      ),
    ];
  }
}