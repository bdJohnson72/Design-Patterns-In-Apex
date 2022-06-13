/**
 * Created by brooks.johnson on 6/13/2022.
 */

public abstract  class Music {
    protected String title;
    protected String album;

    public abstract String getMusicDetail();
    public abstract void accept(IMusicVisitor visitor);

    public class Rock extends Music {

        public Rock(String title, String album){
            this.title = title;
            this.album = album;
        }


        public override String getMusicDetail() {
            return 'rock music: Title ' +  title + ' Album ' + album;
        }


        public override void accept(IMusicVisitor visitor) {
            visitor.visit(this);
        }
    }

    public class ElectronicMusic extends Music {

        public ElectronicMusic(String title, String album){
            this.title = title;
            this.album = album;
        }


        public override String getMusicDetail() {
            return 'Electronic music: Title ' +  title + ' Album ' + album;
        }


        public override void accept(IMusicVisitor visitor) {
            visitor.visit(this);
        }
    }

    public virtual class Pop extends Music {

        public Pop(String title, String album) {
            this.title = title;
            this.album = album;
        }


        public virtual override String getMusicDetail() {
            return 'Pop music: Title ' +  title + ' Album ' + album;
        }


        public virtual override void accept(IMusicVisitor visitor) {
            visitor.visit(this);
        }
    }
    public class PopRock extends Pop{
        protected  String title;
        protected String Album;

        public PopRock(String title, String Album) {
            super(title, Album);
            this.title = title;
            this.Album = Album;
        }
        public override String getMusicDetail() {
            return 'Pop Rock music: Title ' +  title + ' Album ' + album;
        }


        public override void accept(IMusicVisitor visitor) {
            visitor.visit(this);
        }
    }
}