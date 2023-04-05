package com.inenergis.entity.program;

import com.inenergis.entity.IdentifiableEntity;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Getter
@Setter
@EqualsAndHashCode(of = "rateSchedule")
@Entity
@Table(name = "PROGRAM_ELIG_RATE_SCHEDULE")
public class ProgramEligibilityRateSchedule extends IdentifiableEntity{

    @Column(name = "RATE_SCHEDULE")
    private String rateSchedule;

    @ManyToOne
    @JoinColumn(name = "PROGRAM_PROFILE_ID")
    private ProgramProfile profile;

    @Override
    public String toString() {
        return  "Rate schedule: " + rateSchedule;
    }
}