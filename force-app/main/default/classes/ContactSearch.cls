public  class ContactSearch {
    public static List<Contact> searchForContacts(String a, String b)
    {
        List<Contact> contacts = new List<Contact>();
        contacts = [SELECT LastName, Id FROM Contact WHERE LastName=:a and MailingPostalCode=:b];
        return contacts; 
    }
}
