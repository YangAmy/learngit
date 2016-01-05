trigger ExampleTrigger on Contact (after insert,after delete) 
{

    if(Trigger.isinsert)
    {
        //recordCount 记录本次插入的记录条数
        integer recordCount = Trigger.New.size();
        //call a utility method from another class
        EmailManager.sendEmail('amy.yang@meginfo.com','Trailhead Trigger Tutorial',
                    recordCount+'contact(s) were inserted.');
    }
    else if(Trigger.isDelete)
    {
        // Process after delete
    }
}