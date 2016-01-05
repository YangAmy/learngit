trigger MyTriggerNotBulk on Account (before insert) 
{
    
    //This trigger doesn’t work on a full record set 
    //when multiple records are inserted in the same transaction
    Account a = Trigger.New[0];
    a.Description='New description';
}