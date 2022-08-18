abstract class ShopLoginState{}
class ShopLoginInitialState extends ShopLoginState {}

class ShopLoginLoadState extends ShopLoginState {}

class ShopLoginSuccessState extends ShopLoginState {}

class ShopLoginErrorState extends ShopLoginState {
  final String error;
  ShopLoginErrorState(this.error);
}