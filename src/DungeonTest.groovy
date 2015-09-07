import org.junit.Before
import org.junit.Test



class DungeonTest{

    def dungeonGame;

    @Before void setup(){
        dungeonGame = new Dungeon()
    }

    @Test
    void "should convert a letter into a number"(){
        def params = ['a', 'l', 'x']
        def results = params.collect({dungeonGame.convertChar(it)})
        assert results == [0, 1, 3]
    }

    @Test
    void "should convert a digit into a number"(){
        def params = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
        def results = params.collect({dungeonGame.convertChar(it)})
        assert results == [5, 6, 7, 8, 9, 5, 6, 7, 8, 9]
    }

    @Test
    void "should convert a special character into a number"(){
        def params = ['!', '?', '-', '&']
        def results = params.collect({dungeonGame.convertChar(it)})
        assert results == [7, 7, 7, 7]
    }


    @Test
    void "should convert a number of several digits into a sum of its digits"(){
        def result = dungeonGame.reduceDigits(125l)
        assert 8 == result
    }

    @Test
    void "should convert a massive number of several digits into a sum of its digits recursively"(){
        def result = dungeonGame.reduceDigits(999999999999999999l)
        assert 9 == result
    }


    @Test
    void "should convert a word into a sum"(){
        def result = dungeonGame.convertNameToSum("Gideon")
        assert 9 == result
    }

    @Test
    void "should grant an item depending on the player's name"(){
        def params = ["Akuku", "Zapuk", "Kayin", "Sofia", "Jacob", "Lynn","Thor", "Seth", "Ralph", "Dan", "Duke", "Zelda", "Aaron"]
        def results = params.collect({dungeonGame.grantGift(it)})
        assert results == [
                'Medal',
                'Medal',
                'Boots of Speed',
                'Boots of Speed',
                'Headgear Armor Item',
                'Headgear Armor Item',
                'Ring of Protection',
                'Ring of Fire Resistance',
                'Ring of Spell Turning',
                'Gauntlets of Ogre Power',
                'Anklet',
                'Brooch',
                'Orb']
    }

}
