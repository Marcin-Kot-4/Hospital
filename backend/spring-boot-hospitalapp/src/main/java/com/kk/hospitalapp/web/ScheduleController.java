package com.kk.hospitalapp.web;

import com.kk.hospitalapp.model.Schedule;
import com.kk.hospitalapp.model.Visit;
import com.kk.hospitalapp.service.PatientService;
import com.kk.hospitalapp.service.ScheduleService;
import com.kk.hospitalapp.service.VisitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;
import java.util.Optional;

/**
 * Klasa ScheduleController do wczytywania templatów dla różnych adresów.
 */
@Controller
@Transactional
public class ScheduleController {

    @Autowired
    private ScheduleService scheduleService;

    @Autowired
    private VisitService visitService;

    @Autowired
    private PatientService patientService;

    /**
     * Metoda getAll() wyświetla listę wolnych terminów, na danym oddziale.
     * Zwraca template freeTerms.html pod adresem /freeTerms.
     * @param wardId
     * @param model
     * @return
     */
    @GetMapping("/freeTerms")
    public String getAll(@RequestParam("id") Long wardId, Model model){
        List<Schedule> schedules = scheduleService.getByWardId(wardId);
//        List<Visit> visits = visitService.getAll();
        model.addAttribute("schedules", schedules);
        return "freeTerms";
    }

    /**
     * Metoda getAll() dodaje wizytę do bazy. Na podstawie wybranego wcześniej oddziału oraz wolnego terminu z listy.
     * @param scheduleId
     * @param wardId
     * @param userName
     * @param model
     * @return
     */
    @GetMapping("/appointment")
    public RedirectView getAll(@RequestParam("schedule_id") Long scheduleId, @RequestParam("ward_id") Long wardId,
                         @RequestParam("user_name") String userName, Model model){
        Optional<Schedule> schedule = scheduleService.getById(scheduleId);
        if (schedule == null){
            return new RedirectView("freeTerms");
        }

        Visit visit = new Visit();
        visit.setDate(schedule.get().getDate());
        visit.setTime(schedule.get().getFromHour());
        visit.setNumberInLine(1);
        visit.setAppraisal(5L);
        visit.setCompletion(false);
        visit.setPatient(patientService.getPatientByUserName(userName));
        visit.setDoctor(schedule.get().getDoctor());
        visit.setRoom(schedule.get().getRoom());
        visit.setWard(schedule.get().getWard());
        visit.setHospital(schedule.get().getWard().getHospital());

        visitService.save(visit);

        scheduleService.deleteSheduleById(scheduleId);

        return new RedirectView("freeTerms?id=" + schedule.get().getWard().getId());
    }
}
