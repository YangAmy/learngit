trigger SoqlTriggerBulk2 on Account (after update) 
{
    
    for(Opportunity opp:[SELECT Id,Name,CloseDate FROM Opportunity WHERE AccountId IN:Trigger.New])
    {
        
    }
}