package com.fpoly.Service;

import com.fpoly.Repository.MajorRepository;
import com.fpoly.Repository.MajorSchoolRepository;
import com.fpoly.Repository.SchoolRepository;
import com.fpoly.entity.Major;
import com.fpoly.entity.School;
import com.fpoly.entity.Major_School;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class SchoolService {

    @Autowired
    private SchoolRepository schoolRepository;

    @Autowired
    private MajorRepository majorRepository;

    @Autowired
    private MajorSchoolRepository majorSchoolRepository;

    public List<School> findSchoolsByCriteria(String name, String address, Double minPoint, Double maxPoint, String majorName) {
        List<School> allSchools = schoolRepository.findAll();

        return allSchools.stream()
            .filter(school -> (name == null || name.isEmpty() || school.getSchoolName().toLowerCase().contains(name.toLowerCase())))
            .filter(school -> (address == null || address.isEmpty() || school.getAddress().toLowerCase().contains(address.toLowerCase())))
            .filter(school -> (majorName == null || majorName.isEmpty() || school.getMajorSchools().stream()
                .anyMatch(ms -> ms.getMajor().getMajorName().toLowerCase().contains(majorName.toLowerCase()) &&
                                (minPoint == null || ms.getPoint() >= minPoint) &&
                                (maxPoint == null || ms.getPoint() <= maxPoint))))
            .collect(Collectors.toList());
    }

    public List<Major> getAllMajors() {
        return majorRepository.findAll();
    }
}
