SELECT 
    r.date,
    s.first_name,
    s.last_name,
    s.hourly_rate,
    sh.start_time,
    sh.end_time,
    (
      CASE
        WHEN sh.end_time > sh.start_time
          THEN TIMESTAMPDIFF(MINUTE, sh.start_time, sh.end_time)
        ELSE
          TIMESTAMPDIFF(MINUTE, sh.start_time, ADDTIME(sh.end_time, '24:00:00'))
      END
    ) / 60.0 AS hours_in_shift,
    (
      (
        CASE
          WHEN sh.end_time > sh.start_time
            THEN TIMESTAMPDIFF(MINUTE, sh.start_time, sh.end_time)
          ELSE
            TIMESTAMPDIFF(MINUTE, sh.start_time, ADDTIME(sh.end_time, '24:00:00'))
        END
      ) / 60.0
    ) * s.hourly_rate AS staff_cost
FROM rota r
LEFT JOIN staff s ON r.staff_id = s.staff_id
LEFT JOIN shift sh ON sh.shift_id = r.shift_id;
