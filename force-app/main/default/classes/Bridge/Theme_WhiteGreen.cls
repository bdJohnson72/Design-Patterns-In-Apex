/**
 * Created by bjohnson on 1/19/23.
 */

public with sharing class Theme_WhiteGreen implements ITheme {


    public void styleHeader() {
        System.debug('Header - font size : 16px');
        System.debug('Background : Green, Color : Black');
    }

    public void styleFooter() {
        System.debug('Footer - font size : 14px');
        System.debug('Background : White, Color : Green');
    }

    public void styleMenu() {
        System.debug('Footer, Font size : 14px');
        System.debug('Background : White, Color : Green');
    }

    public void styleContent() {
        System.debug('menu - font size : 14px');
        System.debug('Background : White, Color : Green');
    }
}