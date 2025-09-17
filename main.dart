import 'dart:io';

void main(){
  while(true){
  int numb=5;
  print("Guess the number from 1:10.");
  int guss=int.tryParse(stdin.readLineSync()??'')??0 ;
  if(numb==guss){print("yes");
  
  }
  else print("no");
  }

}