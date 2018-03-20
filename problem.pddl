(define (problem flying)
    (:domain travel)
    (:objects   Mario - passenger
                LON CBR MAD BAR PAR NCE ROM VEN MIL AMS RDM BER MUN SOF PLD ATH - city
                hostel-1 hostel-2 hostel-3 hostel-4 hostel-5 - hostel
                airbnb-1 airbnb-2 airbnb-3 airbnb-4 airbnb-5 - airbnb
                hotel-1 hotel-2 hotel-3 hotel-4 hotel-5 - hotel
                d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - today)
    (:init
    ;; locations
    (At Mario LON) (Date Mario d1)
    ;; Flights
    (flight LON NCE d1)
    (flight NCE BER d2)
    (flight NCE SOF d3)
    (flight SOF AMS d4)
    (flight AMS LON d5)
    ;; Trains
    (train BAR MAD d4)
    ;; accommodations
    (accommodation LON hostel-1 d1)
    (accommodation LON airbnb-1 d1)
    (accommodation LON hotel-1 d1)
    (accommodation NCE hostel-2 d3)
    (accommodation NCE airbnb-2 d3)
    (accommodation NCE hotel-2 d3)
    (accommodation BER hostel-3 d3)
    (accommodation BER airbnb-3 d3)
    (accommodation BER hotel-3 d3)
    (accommodation SOF hostel-4 d4)
    (accommodation SOF airbnb-4 d4)
    (accommodation SOF hotel-4 d4)
    (accommodation AMS hostel-5 d5)
    (accommodation AMS airbnb-5 d5)
    (accommodation AMS hotel-5 d5)
    (= (total-cost) 0)
    (= (train-cost BAR MAD d4) 54)
    )
    (:goal
        ;;6 Day Trip
        ;;NCE SOF AMS
        ;;SLEEP 2 Days in each city
        (and (At Mario SOF)))
    (:metric minimize (total-cost))

)

;; How do I apply goal restrictions?
