/**
 * Created by bjohnson on 1/20/23.
 */

public with sharing class CMSFramework extends WebFramework {

    public CMSFramework(ITheme theme) {
        super(theme);
    }

    public override void capability() {
        System.debug('This is a CMS Framework and supports workflow to ' +
                'publish public content');
    }
}