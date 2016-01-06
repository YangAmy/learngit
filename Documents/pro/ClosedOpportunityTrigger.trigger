trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) 
{

    List<Task> tasList = new List<Task>();
     
    for(Opportunity opp : Trigger.New)
    {
        if(opp.StageName == 'Closed Won')
        {
           tasList.add(new Task(subject='Follow Up Test Task', WhatId=opp.Id));
        }
    }
    if(tasList.size()==200)
    {
        insert tasList;
    }
}