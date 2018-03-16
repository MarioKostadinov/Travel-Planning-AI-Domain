(define (problem flying)
    (:domain travel)
    (:objects   Mario - passenger
                BHX Val Ber Sof - city
                h1-c h2-c - cheap-hotel
                h1-m h2-m - medium-hotel
                d1 d2 d3 d4 d5 - today)
    (:init
    ;; locations
    (At Mario BHX)
    ;; Flights
    (flight BHX Val d1)
    (flight BHX Ber d2)
    (flight Ber Val d3)
    (flight Val Sof d4)
    (flight Val BHX d5)
    ;; Trains
    (train Val BHX d4)
    ;; accommodations
    (accommodation BHX h1-m)
    (accommodation Ber h2-m)
    (accommodation Sof h2-c)
    (= (total-cost) 0)
    (= (flight-cost BHX Val d1) 222)
    (= (flight-cost BHX Ber d2) 11)
    (= (flight-cost Ber Val d3) 32)
    (= (flight-cost Val Sof d4) 31)
    (= (flight-cost Val BHX d5) 32)
    (= (train-cost Val BHX d4) 54)
    (= (hotel-cost BHX h1-c) 24)
    )
    (:goal
        (and (slept Mario Sof)))
    (:metric minimize (total-cost))

)
