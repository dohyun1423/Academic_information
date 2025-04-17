package kr.ac.hansung.cse.controller;

import jakarta.validation.Valid;
import kr.ac.hansung.cse.model.Course;
import kr.ac.hansung.cse.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CourseController {
    @Autowired
    private CourseService courseService;

    //학년별 이수 학점 조회
    @GetMapping("courses")
    public String courses(Model model) {
        List<Object[]> courses = courseService.getGroupedCourseSummaries();
        model.addAttribute("id_courses", courses);

        return "courses";
    }

    //상세보기 링크
    @GetMapping("/courseDetail")
    public String getCourseDetail(@RequestParam("year") int year,
                                  @RequestParam("semester") int semester,
                                  Model model) {
        List<Course> courseList = courseService.getCoursesByYearAndSemester(year, semester);
        model.addAttribute("courseList", courseList);
        model.addAttribute("year", year);
        model.addAttribute("semester", semester);
        return "courseDetail";
    }

    //수강신청
    @GetMapping("createCourse")
    public String createCourses(Model model) {
        model.addAttribute("course", new Course());

        return "createCourse";
    }

    //수강신청된 2025-2학기 목록
    @GetMapping("viewCourse")
    public String viewCourse(Model model) {
        List<Course> courses = courseService.getRegistedCourses();
        model.addAttribute("viewcourse", courses);

        return "viewCourse";
    }

    //수강신청 POST
    @PostMapping("docreate")
    public String doCreate(Model model, @Valid Course course, BindingResult result){
        if(result.hasErrors()) {
            System.out.println("== Form data does not validated==");

            List<ObjectError> errors = result.getAllErrors();

            for(ObjectError error : errors) {
                System.out.println(error.getDefaultMessage());
            }
            return "createCourse";
        }

        //year와 semester 값을 고정
        course.setYear(2025); // 2025년
        course.setSemester(2); // 2학기

        //courseService를 사용해 데이터 저장
        courseService.insertCourse(course);
        return "courseCreated";
    }

}
