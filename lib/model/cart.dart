import 'package:flutter/widgets.dart';
import 'package:loja_tennis/model/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      nome: 'Zoom FREAK',
      preco: '236',
      imagePaht: 'lib/images/zoomfreak.png',
      descricao: 'Descricao Legal',
    ),

    Shoe(
      nome: 'Air Jordan',
      preco: '220',
      imagePaht: 'lib/images/AirJordan.png',
      descricao: 'Descricao Legal',
    ),

    Shoe(
      nome: 'Kyrie 6',
      preco: '220',
      imagePaht: 'lib/images/tenisLegal.png',
      descricao: 'outro tennis legal',
    ),

    Shoe(
      nome: 'KDtrey 6',
      preco: '220',
      imagePaht: 'lib/images/KDtrey.webp',
      descricao: 'outro tennis joia',
    ),
  ];


  List<Shoe> userCart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();

  }
}
