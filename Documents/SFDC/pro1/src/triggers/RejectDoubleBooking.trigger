trigger RejectDoubleBooking on Session_Speaker__c (before insert,before update) 
{
  List<id> speakerIds = new List<Id>();
  Map<Id,DateTime> requested_bookings = new Map<Id,DateTime>();
    
  for(Session_Speaker__c newItem : Trigger.New)
  {
    requested_bookings.put(newItem.Session__c,null);
    //   speakerIds.add(newItem.Speaker__c.Id);是错的
    //   直接存储的就是ID
    speakerIds.add(newItem.Speaker__c);
  }
    
  List<Session__c> related_sessions = [select ID, Session_Date__c 
                                      from Session__c 
                                      where ID IN :requested_bookings.keySet()];
    
  for(Session__c related_session : related_sessions) 
  {
    requested_bookings.put(related_session.Id,related_session.Session_Date__c);
  }
     

  List<Session_Speaker__c> related_speakers = [select ID, Speaker__c, Session__c, Session__r.Session_Date__c 
                                              from Session_Speaker__c 
                                              where Speaker__c IN :speakerIds];
  
  for(Session_Speaker__c requested_session_speaker : trigger.new) 
  {
    DateTime booking_time = requested_bookings.get(requested_session_speaker.Session__c);
    for(Session_Speaker__c related_speaker : related_speakers) 
    {
      if(related_speaker.Speaker__c == requested_session_speaker.Speaker__c &&
        related_speaker.Session__r.Session_Date__c == booking_time) 
      {
        requested_session_speaker.addError('The speaker is already booked at that time');
      }
    }
  }

}