/**
 * Created by Brooks Johnson on 3/26/2022.
 */

public with sharing class SelectorMock implements ISelector {

    public List<SObject> data;


    public List<SObject> query(String queryString) {
        return this.data;
    }
}