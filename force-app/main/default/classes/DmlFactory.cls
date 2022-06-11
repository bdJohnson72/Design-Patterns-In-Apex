/**
 * Created by Brooks Johnson on 4/30/2022.
 */

public with sharing class DmlFactory {

    public static Boolean mock = false;

    public static IDML getInstance() {
        if (!mock) {
            return new DML();
        } else {
            return new DMLMock();
        }
    }

}