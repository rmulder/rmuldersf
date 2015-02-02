global with sharing class JSRdemo {

   @RemoteAction
    public static List<Contact> getContacts(integer limitNum) {
        return [select Id, createdDate, Name from Contact order by createdDate desc limit : limitNum];
    }

   @RemoteAction
    public static String createContact(string FirstName, string LastName) {
       Contact c = new Contact(FirstName=FirstName,LastName=LastName);
       insert c;
       return c.Id;
    }

   @RemoteAction
    public static String doGetText() {
        return 'Hey, we got a response!';
    }
}