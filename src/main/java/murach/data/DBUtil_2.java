package murach.data;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil_2 {
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("emailBT");
    
    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}