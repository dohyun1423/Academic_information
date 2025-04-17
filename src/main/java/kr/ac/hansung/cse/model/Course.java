package kr.ac.hansung.cse.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@Entity
@Table(name="courses")
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Min(value = 2025)
    @Max(value = 2025)
    private Integer year;

    @Min(value = 2)
    @Max(value = 2)
    private Integer semester;
    
    @NotEmpty(message = "과목코드는 필수입니다.")
    @Size(min = 7, max = 7, message = "잘못된 형식의 과목코드입니다.") // 7자 고정
    private String courseCode;

    @NotEmpty(message = "과목명은 필수입니다.")
    @Size(min = 2, max = 30, message = "잘못된 형식의 과목명입니다.")
    private String courseName;

    @NotEmpty(message = "교과구분은 필수입니다.")
    @Pattern(regexp = "일선|전기|교필|전선|선필교|전필", message = "잘못된 형식의 교과구분입니다.")
    private String category;

    @NotEmpty(message = "교수명은 필수입니다.")
    @Size(min = 2, max = 5, message = "잘못된 형식의 교수명입니다.") //2자에서 5자
    private String professor;

    @NotNull(message = "학점은 필수입니다.")
    @Min(value = 1, message = "학점은 1 이상이어야 합니다.")
    @Max(value = 3, message = "학점은 3 이하이어야 합니다.")
    private Integer credit;

}
