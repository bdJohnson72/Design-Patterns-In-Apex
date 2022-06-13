/**
 * Created by brooks.johnson on 6/13/2022.
 */

@IsTest
public with sharing class VisitorTest {

    @IsTest
    static void testVisitor(){
        List<Music> musicList = new List<Music>();
        musicList.add(new Music.Rock('Go Johnny Go', 'Chuck Berry is On Top'));
        musicList.add(new Music.Pop('When Doves Cry', 'Price'));
        musicList.add(new Music.ElectronicMusic('No idea', 'Make Beleive'));
        musicList.add(new Music.PopRock('Sweet Home Alabama', 'Second Helping'));

        MusicVisitor visitor = new MusicVisitor();
        for (Music music : musicList){
            music.accept(visitor);
        }
        System.assert(visitor.finalPrice == 11.5);
    }

}