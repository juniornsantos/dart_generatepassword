import 'dart:math';

void main() async{

  int numberPasswords = 5;
  print( 'Gerando ${numberPasswords} senhas:');
  await Future.delayed(Duration(seconds: 2));
  for (int i = 0; i < numberPasswords; i++) {
    print('Password ${i+1}: '+ generatePassword(15, false, true, false, true));
  }

}

String generatePassword( int length, bool _upper , bool _lower, bool _numbers, bool _symbols )
{
  int passLength = length;
  String upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String lower = 'abcdefghijklmnopqrstuvwxyz';
  String numbers = '1234567890';
  String symbols = '!@#\$%^&*()<>,./';  

  String allowedChars ='';
  allowedChars += (_upper ? upper : '');
  allowedChars += (_lower ? lower : '');
  allowedChars += (_numbers ? numbers : '');
  allowedChars += (_symbols ? symbols : '');

  String password = '';
  List<String> list = allowedChars.split('').toList();
  Random rand = Random();

  for (int i = 0; i < passLength; i++) {
    int index = rand.nextInt(list.length);
    password += list[index];
  }
  return password;

}