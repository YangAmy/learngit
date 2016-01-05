// send an email to a new customer
trigger SendContactEmail on Contact (after insert) 
{
    //代码规范：{} 必须回车
    //         = 两边必须有空格
    //         == 两边必须有空格
    //         SOQL语句必须小写
    //         变量名字必须有意义
        
           
    //使用set可以去掉重复，其实Trigger.New是不重复的
    Set<Contact> contactWithEmail = new Set<Contact>();
    
    //先挑出Email不为空的
    for(Contact c : Trigger.New)
    {
        if(String.isNotBlank(c.Email))
        {
            contactWithEmail.add(c);
        }
    }
    
    //若全部为空，则直接返回，也不用执行下面的SOQL语句，提高效率
    if(contactWithEmail.size() == 0)
    {
        return;
    }
    
    Id templateEmailId = [select Id
                          from EmailTemplate
                          where DeveloperName='WelcomeEmail'].Id;
    
    //sendEmail方法中的参数必须为List类型
    List<Messaging.SingleEmailMessage> messages = new List<Messaging.SingleEmailMessage>();
    
    for(Contact c : contactWithEmail)
    {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        //设置了setTargetObjectId，就不用设置address了
        //mail.setToAddresses(new String[]{c.Email});
        mail.setTargetObjectId(c.Id);
        mail.setTemplateId(templateEmailId);
        messages.add(mail);
    }
    Messaging.sendEmail(messages);
}