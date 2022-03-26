/**
 * Created by Brooks Johnson on 3/26/2022.
 */

public with sharing class SelectorFactory {
    public static Boolean withMocks = false;

    public static ISelector getSelector() {
        if (!withMocks) {
            return new Selector();
        } else {
            return new SelectorMock();
        }
    }
}