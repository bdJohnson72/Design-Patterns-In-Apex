/**
 * Created by Brooks Johnson on 3/26/2022.
 */

public with sharing class Selector implements ISelector {

    private String queryString;

    public List<SObject> query(String queryString) {
        return Database.query(queryString);
    }

}