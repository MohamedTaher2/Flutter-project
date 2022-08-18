import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goshop/Home/Login/cubit/states.dart';

class ShopLoginCubit extends Cubit<ShopLoginState>
{
  ShopLoginCubit() : super(ShopLoginInitialState());
  static ShopLoginCubit get(context)=> BlocProvider.of(context);

  void userLogin()
  {

  }

}