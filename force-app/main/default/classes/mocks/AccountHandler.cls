/**
 * Created by Brooks Johnson - Insulet on 2/12/23.
 */

public with sharing class AccountHandler {
    /**
     * Created by Brooks Johnson - Insulet on 2/6/23.
     */


        //code for filtering changed Accounts etc..
        public static void updateAddresses(Map<Id, Account> accountsById){
            List<Contact> contactsToUpdate = new List<Contact>();
            List<Contact> contacts = [SELECT Id, MailingStreet, MailingCity, MailingCountry, AccountId,
                    MailingState, MailingPostalCode FROM Contact WHERE AccountId =: accountsById.keySet()];
            for(Contact contact : contacts){
                if (accountsById.containsKey(contact.AccountId)) {
                    Account account = accountsById.get(contact.AccountId);
                    contact.MailingPostalCode = account.BillingPostalCode;
                    contact.MailingCity = account.BillingCity;
                    contact.MailingCountry = account.BillingCountry;
                    contact.MailingState = account.BillingState;
                    contact.MailingStreet = account.BillingStreet;
                    contactsToUpdate.add(contact);
                }
            }
            update contactsToUpdate;
        }
    }
