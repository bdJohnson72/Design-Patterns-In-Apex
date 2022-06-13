/**
 * Created by brooks.johnson on 6/13/2022.
 */

public with sharing class MusicVisitor implements IMusicVisitor {
    public Double finalPrice = 0;

    public void visit(Music.Rock music) {
        System.debug('calculating rock music');
        finalPrice += 2;
    }

    public void visit(Music.Pop music) {
        System.debug('Calculating pop music');
        finalPrice += 3;
    }

    public void visit(Music.ElectronicMusic music) {
        System.debug('calculating electronic music');
        finalPrice += 4;
    }

    public void visit(Music.PopRock music) {
        System.debug('calculating pop rock music');
        finalPrice += 2.5;
    }
}