# Função gerar senhas aleatórias em Dart
Olá pessoal 👋, esse é um aplicativo que fiz em Dart para gerar senhas fortes, espero que gostem!!!<br/>
Tendo o Dart instalado você pode executar em qualquer lugar.


## Gerando senhas aleatórias
### Gerar senha com base em alguns critérios (Parametros)
```go
  * parameter int (length) : comprimento da senha
  * parameter bool (upper) : a senha deve conter letras maiúsculas
  * parameter bool (lower) : a senha deve conter letras minúsculas
  * parameter bool (numbers) : a senha deve conter números
  * parameter bool (symbols) : a senha deve conter caracteres especiais
```

### Função completa
```go
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

```

```go
void main() async{
  int numberPasswords = 5;
  print( 'Gerando ${numberPasswords} senhas:');
  await Future.delayed(Duration(seconds: 2));
  for (int i = 0; i < numberPasswords; i++) {
    print('Password ${i+1}: '+ generatePassword(15, false, true, false, true));
  }
}
```
```go
Gerando 5 senhas:
Password 1: @>b<ghjt^c@y$ki
Password 2: ,g$e$t*dq&//rv*
Password 3: *t@k^tdi&u.b/m^
Password 4: yi@(h.#$n>a*)*y
Password 5: m.l!#,ju!)dot#l
```
## Support
Você pode obter suporte da comunidade por meio de:

<a href = "https://api.whatsapp.com/send?phone=5588998686890"><img src="https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white" target="_blank"></a>
 <a href = "https://t.me/JuniorNogueira"><img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white" target="_blank"></a>