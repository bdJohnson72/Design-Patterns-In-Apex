/**
 * Created by Brooks Johnson on 4/30/2022.
 * This is a stripped down verion of James Simones
 */

public interface IDML {
    SObject doInsert(SObject record);
    List<SObject> doInsert(List<SObject> records);
    SObject doUpdate(SObject record);
    List<SObject> doUpdate(List<SObject> records);
    SObject doDelete(SObject record);
    List<SObject> doDelete(List<SObject> records);
    List<SObject> doDelete(List<SObject> records, Boolean allOrNothing);

}