/**
 * Created by bjohnson on 1/20/23.
 */

public with sharing abstract class WebFramework {

    protected ITheme theme;
    private String title;
    private String keyword;
    private String content;

    public WebFramework(ITheme theme){
        this.theme = theme;
    }

    //concrete web framework must implement this
    public abstract void capability();

    private void setProperties(String title, String keyword, String content){
        this.title = title;
        this.keyword = keyword;
        this.content = content;
    }

    private void printTitle() {
        System.debug('Title: ' + this.title);
    }

    private void printKeyword() {
        system.debug('Keyword: ' + this.keyword);
    }

    public virtual void showHeader_Footer(){
        this.theme.styleHeader();
        this.theme.styleFooter();
    }

    public virtual void showMenuBody(){
        this.theme.styleMenu();
        this.theme.styleContent();
    }

}