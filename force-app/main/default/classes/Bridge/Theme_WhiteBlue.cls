/**
 * Created by bjohnson on 1/19/23.
 */

public with sharing class Theme_WhiteBlue implements ITheme {


    public void styleHeader() {
        System.debug('Header font size : 16 px');
        System.debug('Background: Blue, Color: black');
    }

    public void styleFooter() {
        System.debug('Footer - font size : 14 px');
        System.debug('Background : White, Color: blue');
    }

    public void styleMenu() {
        System.debug('Menu - font size : 12 px');
        System.debug('Background : blue, Color: white');
    }

    public void styleContent() {
        System.debug('Content - font size : 16px');
        System.debug('Background : white, Color: blue');
    }
}