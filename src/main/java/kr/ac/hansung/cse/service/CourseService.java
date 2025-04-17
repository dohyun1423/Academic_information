package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.dao.CourseDao;
import kr.ac.hansung.cse.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CourseService {

    @Autowired
    private CourseDao courseDao;

    public void insertCourse(Course course){
        courseDao.insert(course);
    }

    //년도와 학기별로 학점 합계를 반환
    public List<Object[]> getGroupedCourseSummaries() {
        return courseDao.getCourseSummary();
    }

    //특정 년도와 학기의 수업만 반환
    public List<Course> getCoursesByYearAndSemester(int year, int semester) {
        return courseDao.getCoursesByYearAndSemester(year, semester);
    }

    //수강신청된 2025-2학기의 수업만 반환
    public List<Course> getRegistedCourses() {
        return courseDao.getCoursesByYearAndSemester(2025, 2);
    }

}
