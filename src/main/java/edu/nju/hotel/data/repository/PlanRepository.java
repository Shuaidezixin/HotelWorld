package edu.nju.hotel.data.repository;

import edu.nju.hotel.data.model.Plan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * Created by dzkan on 2016/3/8.
 */
@Repository
public interface PlanRepository extends JpaRepository<Plan, Integer> {
    @Query("select plan from Plan plan where plan.hotelByHotelId.id=?1")
    List<Plan> getPlanList(int id);

    @Query("select plan from Plan plan where plan.roomTypeByRoomTypeId.id=?1 and plan.endTime>?2 and plan.startTime<?2 order by plan.creatTime desc")
    List<Plan> getCurrentPrice(int typeid, Date now);

}
