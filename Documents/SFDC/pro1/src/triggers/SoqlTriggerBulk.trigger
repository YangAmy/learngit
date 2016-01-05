trigger SoqlTriggerBulk on Account (after update) 
{
  
    List<Account> acctsWithOpps = [SELECT Id,(SELECT Name,CloseDate FROM Opportunities)
                                   FROM Account WHERE Id IN : Trigger.New];
    
    for(Account a : acctsWithOpps)
    {
        Opportunity[] relatedOpps = a.Opportunities;
    }
}