/**
 * Created by adergham on 03/03/2015.
 */
class Dungeon{

    static def letters = "abcdefghijklmnopqrstuvwxyz"
    static def special = "!?-&"
    static def items = [
            [type:'A', name:'Medal'],
            [type:'B', name:'Boots of Speed'],
            [type:'C', name:'Headgear Armor Item'],
            [type:'D', name:'Ring of Protection'],
            [type:'E', name:'Ring of Fire Resistance'],
            [type:'F', name:'Ring of Spell Turning'],
            [type:'G', name:'Gauntlets of Ogre Power'],
            [type:'H', name:'Anklet'],
            [type:'I', name:'Brooch'],
            [type:'J', name:'Orb']
    ]

    def convertChar(letter){
        if(Character.isLetter(letter as char)){
            return letters.indexOf(letter.toLowerCase())%5
        } else if(Character.isDigit(letter as char)){
            return 5+(Character.getNumericValue(letter as char) % 5)
        } else if(special.indexOf(letter)>=0){
            return 7
        }
    }

    def convertNameToSum(name){
        def sum = name.collect({convertChar(it)}).sum()
        return reduceDigits(sum)
    }

    def reduceDigits(greatNumber){
        def recursiveReduce
        recursiveReduce = {
            def numberAsString = it.toString()
            if (numberAsString.length()==1){
                it
            } else {
                def sum  = numberAsString.collect({it as long}).sum()
                recursiveReduce(sum)
            }
        }
        return recursiveReduce(greatNumber)
    }

    def grantGift(name){
        return items[convertNameToSum(name) as int].name
    }
}
