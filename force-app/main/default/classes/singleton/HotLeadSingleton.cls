/**
 * @description A simple implementation of a singleton class.
 *
 */
public with sharing class HotLeadSingleton {
    public List<Lead> hotleads { get; set; }
    private static HotLeadSingleton instance;

    /**
     * @description The private constructor is at the core of the pattern. The object can not be created externally, but
     * only through the getInstance method
     */
    private HotLeadSingleton() {
        hotleads = getLeads();
    }

    /**
     * @return An instance of the object
     * @description The getInstance method checks to see if the private member property "instance" is null.
     * If so it returns the cached object. If it has yet been instantiated it creates a new object
     */
    public static HotLeadSingleton getInstance() {
        if (instance == null) {
            instance = new HotLeadSingleton();
        }
        return instance;
    }

    private List<Lead> getLeads() {
        return [
                SELECT Id, Is_Hot__c
                FROM Lead
                WHERE Is_Hot__c = TRUE
                LIMIT 10
        ];
    }
}