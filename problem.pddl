(define (problem flying)
    (:domain travel)
    (:objects Mario - passenger BHX - city Val - city)
    (:init
    ;; locations
    (In Mario BHX)
    (flight BHX Val)
    (flight Val BHX)
    (= (total-cost) 0)
    (= (flight-cost Val BHX) 42)
    (= (flight-cost BHX Val) 22)
    )
    (:goal
        (and (visited Mario Val) (In Mario BHX)))
    (:metric minimize (total-cost))        

)