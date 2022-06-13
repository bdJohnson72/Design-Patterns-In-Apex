/**
 * Created by brooks.johnson on 6/13/2022.
 */

public interface IMusicVisitor {

    void visit(Music.Rock music);
    void visit(Music.Pop music);
    void visit(Music.ElectronicMusic music);
    void visit(Music.PopRock music);

}