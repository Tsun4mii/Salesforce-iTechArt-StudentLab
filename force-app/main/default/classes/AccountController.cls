public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
      return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
    }

    public static void upsertUser()
    {
      Account[] accList = [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
      Account newAcc = new Account(Name = 'Kek_Technologies', Active__c = 'Yes');
      accList[1] = newAcc;
      try{
        upsert accList;
      }
      catch(DmlException e)
      {
        
      }
    }
  }