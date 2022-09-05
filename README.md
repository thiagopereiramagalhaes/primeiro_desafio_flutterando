# Desafio de layout da Flutterando

**Descrição: Utilizar o flutter para desenvolver uma tela baseado no App Tinder.** 

**Link do desafio: [(47) Curso de Flutter #27 - Primeiro desafio de Layout - YouTube](https://www.youtube.com/watch?v=9zkKGkFj3qg&list=PLlBnICoI-g-d-J57QIz6Tx5xtUDGQdBFB&index=27)**

## Resultado:

Ao realizar o segundo curso da Flutterando, resolvi desenvolver o desafio proposto. Esse desafio consiste em desenvolver uma tela inicial de login, baseado no APP Tinder.

![Android Emulator - Pixel_4_API_31_5554 8_28_2022 2_28_46 PM.png](https://github.com/thiagopereiramagalhaes/primeiro_desafio_flutterando/blob/master/Android%20Emulator%20-%20Pixel_4_API_31_5554%208_28_2022%202_28_46%20PM.png?raw=true)

## Solução

Para o desafio, comecei criando um arquivo chamado “login_page”. Nesse arquivo, podemos encontrar todo o código necessário para a criação da tela de login.

![login_page.dart - primeiro_desafio_flutterando - Visual Studio Code 9_2_2022 1_21_14 PM.png](Desafio%20de%20layout%20da%20Flutterando%202c586569f1024e09a19208b13f6d6b52/login_page.dart_-_primeiro_desafio_flutterando_-_Visual_Studio_Code_9_2_2022_1_21_14_PM.png)

Dentro de “login_page” adicionei uma classe StatefulWidget chamada “LoginPage”. É possível conferir [clicando aqui](https://github.com/thiagopereiramagalhaes/primeiro_desafio_flutterando/blob/master/lib/login_page.dart).

### Requisitos

É fácil perceber que para essa tela temos quatro requisitos:

1. Uma cor de fundo;
2. Um ícone no topo;
3. Dois parágrafos;
4. Um botão.

Usei o Widget stack(é responsável por sobrepor vários filhos) com um container que leva a cor de fundo e sobrepondo com um novo widget chamado body.

```dart
Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: const Color.fromARGB(255, 253, 118, 123)),
          _body(),
        ],
      ),
    );
  }
```

Facilitando a legibilidade do código, criei um novo widget para o corpo da nova tela. Como todos os elementos se encontram no centro da tela, adicionei todos dentro de um center que tem como filho uma coluna.

**Imagem**

A imagem, como todos os outros requisitos, vai dentro de um flexible. Para que o seu espaçamento seja sempre proporcional entre todos os outros elementos.

Usei um sizedbox para dimensionar a imagem e um [image.network](http://image.network/) para capturar uma imagem da internet. No espaçamento, um spacer() entre todos os flexible.

```dart
Flexible(
	flex: 10,
	child: SizedBox(
		width: 130,
		height: 130,
		child: Image.network(
			'https://www.pngkit.com/png/full/55-558373_tinder-apple-tv-survey-methodology.png'),
		),
),
const Spacer(),
```

**Texto**

Com o texto usei uma coluna como filho de flexible, assim, os textos são tratados como parágrafos.

```dart
Flexible(
	flex: 5,
  child: Column(
	  children: const [
	    Text('Location Changer',
		    style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25)),
      Text('Plugin app for Tinder',
        style: TextStyle(color: Colors.white, fontSize: 17)),
		],
	),
),
```

**Botão**

No botão foi utilizado um sizedbox para regular o seu tamanho, obtendo o tamanho da tela com mediaquery e dividindo pela metade para obter a sua largura. Para esse botão usamos um elevatedbutton.

```dart
Flexible(
            flex: 20,
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width / 2,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text('Login With Facebook',
                      style: TextStyle(
                          color: Color.fromARGB(255, 253, 118, 123),
                          fontSize: 15)),
                  onPressed: () {
                    // ignore: avoid_print
                    print(true);
                  }),
            ),
          ),
```
