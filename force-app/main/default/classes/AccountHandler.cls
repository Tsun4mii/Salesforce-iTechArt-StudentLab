public class AccountHandler {
    public static Account insertNewAccount(String name)
    {
        Account acc = new Account(Name = name);
        try{
        insert acc;
        }
        catch(DmlException e)
        {
            return null;
        }
        return acc;
    }
}
