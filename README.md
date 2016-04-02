# xke-dd-over-tdd - Ruby

## Setup Dev environment

### Install RVM

https://rvm.io/rvm/install

### Install terminal notification
http://jam.im/blog/2013/02/11/mac-osx-notifications-with-guard/

```
brew install terminal-notifier
```

### Install Bundler

```
gem install bundle
```

### Bundle application

```
bundle
```

### To run tests
```
bundle exec rspec
```

### To run tests on code changes
```
bundle exec guard
```


### REPL via Pry
```
bundle install pry
```




## Le Dungeon

Le but est d'accorder à un nouveau joueur un premier objet en fonction de son nom.




## Comment ?

Chaque lettre, chiffre, caractère est affecté à un chiffre (de 0 à 9).

| 0   | 1   | 2   | 3   | 4   |    | 5   | 6   | 7   | 8   | 9   |
| --- | --- | --- | --- | --- | ---| --- | --- | --- | --- | --- |
| A   | B   | C   | D   | E   |    |0    | 1   | 2   | 3   | 4   |
| F   | G   | H   | I   | J   |    |5    | 6   | 7   | 8   | 9   |
| K   | L   | M   | N   | O   |    |     |     | !   |     |     |
| P   | Q   | R   | S   | T   |    |     |     | ?   |     |     |
| U   | V   | W   | X   | Y   |    |     |     | -   |     |     |
| Z   |     |     |     |     |    |     |     | &   |     |     |

Convertissant le nom en la somme de chacune des valeurs, puis en réadditionnant les chiffres entre eux nous obtenons un résultat entre 0 et 9.

Par exemple, "Gideon" -> 1+3+3+4+4+3 = 18 -> 1+8 -> 9

Ce chiffre est ensuite reconverti en lettre (le Type) suivant le tableau ci-dessous :

| 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| A   | B   | C   | D   | E   | F   | G   | H   | I   | J   |

Par exemple, "Gideon" -> 9 -> Type J

Chaque type est ensuite associé à un item selon le tableau ci-dessous :

| Type | Item                    |
| ---- | ----------------------- |
| A    | Medal                   |
| B    | Boots of Speed          |
| C    | Headgear Armor Item     |
| D    | Ring of Protection      |
| E    | Ring of Fire Resistance |
| F    | Ring of Spell Turning   |
| G    | Gauntlets of Ogre Power |
| H    | Anklet                  |
| I    | Brooch                  |
| J    | Orb                     |

## Exemples de noms -> Item

|Type    | Names        |
| ------ | ------------ |
| Type A | Akuku, Zapuk |
| Type B | Kayin, Sofia |
| Type C | Jacob, Lynn  |
| Type D | Thor, Jennie |
| Type E | Seth  |
| Type F | Ralph, Jess, Emily  |
| Type G | Dan, Ann     |
| Type H | Duke, Wendy  |
| Type I | Axel, Zelda  |
| Type J | Aaron, Rosa  |
