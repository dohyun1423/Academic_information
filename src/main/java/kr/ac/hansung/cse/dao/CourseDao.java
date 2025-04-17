package kr.ac.hansung.cse.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import kr.ac.hansung.cse.model.Course;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CourseDao {

    @PersistenceContext
    private EntityManager entityManager;

    // R
    public Course getCourse(int id) {
        return entityManager.find(Course.class, id);
    }

    public List<Course> getCourses() {
        return entityManager.createQuery("SELECT c FROM Course c", Course.class)
                .getResultList();
    }
    // C
    public void insert(Course course) {
        entityManager.persist(course);
    }
    // U
    public void update(Course course) {
        entityManager.merge(course);
    }
    // D
    public void delete(int id) {
        Course Course = entityManager.find(Course.class, id);
        if (Course != null) {
            entityManager.remove(Course);
        }
    }

    // 년도와 학기별로 학점의 합을 구하는 쿼리
    public List<Object[]> getCourseSummary() {
        //year, semester 기준으로 그룹화하고, credit의 합을 계산하는 쿼리
        String jpql = "SELECT c.year, c.semester, SUM(c.credit) " +
                "FROM Course c " +
                "WHERE NOT (c.year = 2025 AND c.semester = 2) " + //수강신청된 2025-2학기는 제외
                "GROUP BY c.year, c.semester " +
                "ORDER BY c.year ASC, c.semester ASC"; //년도와 학기를 오름차순 정렬

        return entityManager.createQuery(jpql, Object[].class).getResultList();
    }
    
    //특정 년도와 학기의 수업만 구하는 쿼리
    public List<Course> getCoursesByYearAndSemester(int year, int semester) {
        String jpql = "SELECT c FROM Course c WHERE c.year = :year AND c.semester = :semester";
        return entityManager.createQuery(jpql, Course.class)
                .setParameter("year", year)
                .setParameter("semester", semester)
                .getResultList();
    }

}
