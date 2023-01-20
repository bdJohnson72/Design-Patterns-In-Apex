/**
 * Created by bjohnson on 1/20/23.
 */

public with sharing class BlogFramework extends WebFramework {

    public BlogFramework(ITheme theme){
        super(theme);
    }

    public override void capability() {
        System.debug('This app does not support menu and it is not styled');
    }


    public override void showMenuBody() {
        theme.styleContent();
    }
}