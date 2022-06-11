/**
 * Created by Brooks Johnson on 4/30/2022.
 */

public virtual class DMLMock extends DML {


    public override List<SObject> doInsert(List<SObject> records) {
        TestingUtils.generateIds(records);
        return records;
    }


    public override List<SObject> doUpdate(List<SObject> records) {
        return records;
    }


    public override List<SObject> doDelete(List<SObject> records, Boolean allOrNothing) {
        return records;
    }
}