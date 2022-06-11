/**
 * Created by Brooks Johnson on 4/30/2022.
 * Based on James Simones work
 * https://github.com/jamessimone/apex-mocks-stress-test/blob/master/src/classes/ICrud.cls
 */

public virtual class DML implements IDML {

    //By Exploiting compile time polymorphism we can have 'over loaded' methods
    // Multiple methods can have the same name with different parameters
    //This can also help in bulkifying your APIs
    public virtual SObject doInsert(SObject record) {
        return this.doInsert(new List<SObject>{
                record
        })[0];
    }

    public virtual List<SObject> doInsert(List<SObject> records) {
        Database.insert(records);
        return records;
    }

    public virtual SObject doUpdate(SObject record) {
        return this.doUpdate(new List<SObject>{
                record
        })[0];
    }

    public virtual List<SObject> doUpdate(List<SObject> records) {
        Database.update(records);
        return records;
    }

    //The Apex Database methods themselves are also overloaded
    //The can take a record,  a list, a list and boolean etc..
    public virtual SObject doDelete(SObject record) {
        return this.doDelete(new List<SObject>{
                record
        })[0];
    }

    public virtual List<SObject> doDelete(List<SObject> records) {
        return this.doDelete(records, false);
    }

    public virtual List<SObject> doDelete(List<SObject> records, Boolean allOrNothing) {
        Database.delete(records, allOrNothing);
        return records;
    }
}