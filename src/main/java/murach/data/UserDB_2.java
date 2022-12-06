package murach.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import java.util.List;

import murach.business.User2;

public class UserDB_2 {

    public static void insert(User2 user) {
        EntityManager em = DBUtil_2.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();        
        try {
            em.persist(user);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static void update(User2 user) {
        EntityManager em = DBUtil_2.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();       
        try {
            em.merge(user);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static void delete(User2 user) {
        EntityManager em = DBUtil_2.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();        
        try {
            em.remove(em.merge(user));
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }       
    }

    public static User2 selectUser(String email) {
        EntityManager em = DBUtil_2.getEmFactory().createEntityManager();
        String qString = "From User2 u " +
                "Where u.email = :email";
        TypedQuery<User2> q = em.createQuery(qString, User2.class);
        q.setParameter("email", email);
        try {
            User2 user = q.getSingleResult();
            return user;
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }

    public static boolean emailExists(String email) {
        User2 u = selectUser(email);   
        return u != null;
    }
    
    public static List<User2> selectUsers() {
        EntityManager em = DBUtil_2.getEmFactory().createEntityManager();
        String qString = "From User2 u";
        TypedQuery<User2> q = em.createQuery(qString, User2.class);

        List<User2> users;
        try {
            users = q.getResultList();
            if (users == null || users.isEmpty())
                users = null;
        } finally {
            em.close();
        }
        return users;
    }
}