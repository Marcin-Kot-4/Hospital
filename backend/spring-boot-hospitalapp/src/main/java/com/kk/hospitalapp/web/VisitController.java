package com.kk.hospitalapp.web;

import com.kk.hospitalapp.model.Schedule;
import com.kk.hospitalapp.model.Visit;
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

/**
 * Klasa VisitController do wczytywania templatów dla różnych adresów.
 * Odwoływanie wizyty.
 */
@Controller
@Transactional
public class VisitController {

    @Autowired
    private VisitService visitService;

    @Autowired
    private ScheduleService scheduleService;

    /**
     * Metoda getAll() zwraca template doctorCancelVisit.html pod adresem /doctorCancelVisit.
     * @param model
     * @return
     */
    @GetMapping("/doctorCancelVisit")
    public String getAll(Model model){
        List<Visit> visits = visitService.getAll();
        model.addAttribute("visits", visits);
        return "doctorCancelVisit";
    }

    /**
     * Metoda getAllPatient() zwraca template patientCancelVisit.html pod adresem /patientCancelVisit.
     * @param model
     * @return
     */
    @GetMapping("/patientCancelVisit")
    public String getAllPatient(Model model){
        List<Visit> visits = visitService.getAllPatientVisits();
        model.addAttribute("visits", visits);
        return "patientCancelVisit";
    }

    /**
     * Metoda getAll() usuwa umówioną wizytę. Usunięty termin dodaje do listy wolnych terminów.
     * @param visitId
     * @param model
     * @return
     */
    @GetMapping("/cancelVisit")
    public RedirectView getAll(@RequestParam("visit_id") Long visitId, Model model){
        Visit visit = visitService.getById(visitId);
        if (visit == null){
            return new RedirectView("freeTerms");
        }

        Schedule schedule = new Schedule();
        schedule.setDate(visit.getDate());
        schedule.setFromHour(visit.getTime());
        schedule.setToHour(visit.getTime());
        schedule.setDoctor(visit.getDoctor());
        schedule.setRoom(visit.getRoom());
        schedule.setWard(visit.getWard());

        scheduleService.save(schedule);

        visitService.deleteVisitById(visitId);

        return new RedirectView("patientCancelVisit");
    }

    /**
     * Metoda cancelVisitDoctor() usuwa umówioną wizytę. Usunięty termin dodaje do listy wolnych terminów.
     * @param visitId
     * @param model
     * @return
     */
    @GetMapping("/cancelVisitDoctor")
    public RedirectView cancelVisitDoctor(@RequestParam("visit_id") Long visitId, Model model){
        Visit visit = visitService.getById(visitId);
        if (visit == null){
            return new RedirectView("freeTerms");
        }

        Schedule schedule = new Schedule();
        schedule.setDate(visit.getDate());
        schedule.setFromHour(visit.getTime());
        schedule.setToHour(visit.getTime());
        schedule.setDoctor(visit.getDoctor());
        schedule.setRoom(visit.getRoom());
        schedule.setWard(visit.getWard());

        scheduleService.save(schedule);

        visitService.deleteVisitById(visitId);

        return new RedirectView("doctorCancelVisit");
    }
}
