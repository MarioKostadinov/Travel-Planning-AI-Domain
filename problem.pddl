(define (problem flying)
    (:domain travel)
    (:objects   Mario - passenger
                LON CBR MAD BAR PAR NCE ROM VEN MIL AMS RDM BER MUN SOF PLD ATH - city
                hostel-1 hostel-2 hostel-3 hostel-4 hostel-5 - hostel
                airbnb-1 airbnb-2 airbnb-3 airbnb-4 airbnb-5 - airbnb
                hotel-1 hotel-2 hotel-3 hotel-4 hotel-5 - hotel
                d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - today

                )
    (:init
    ;; locations
    (At Mario LON) (Date Mario d1)
    ;; Date precedence
    (date-precedence d1 d2)
    (date-precedence d2 d3)
    (date-precedence d3 d4)
    (date-precedence d4 d5)
    (date-precedence d5 d6)
    (date-precedence d6 d7)
    (date-precedence d7 d8)
    (date-precedence d8 d9)
    (date-precedence d9 d10)

    ;; Flights
    (flight LON NCE d1)
    (flight NCE BER d2)
    (flight NCE SOF d3)
    (flight SOF AMS d4)
    (flight AMS LON d5)
    (flight LON PLD d8)
    (flight LON SOF d5)
    (flight SOF PLD d7)
    ;; Trains
    (train BAR MAD d4)
    ;; accommodations
    (accommodation LON hostel-1)
    (accommodation LON airbnb-1)
    (accommodation LON hotel-1)
    (accommodation NCE hostel-2)
    (accommodation NCE airbnb-2)
    (accommodation NCE hotel-2)
    (accommodation BER hostel-3)
    (accommodation BER airbnb-3)
    (accommodation BER hotel-3)
    (accommodation SOF hostel-4)
    (accommodation SOF airbnb-4)
    (accommodation SOF hotel-4)
    (accommodation AMS hostel-5)
    (accommodation AMS airbnb-5)
    (accommodation AMS hotel-5)
    (accommodation PLD hostel-5)
    (accommodation PLD airbnb-5)
    (accommodation PLD hotel-5)
    (= (total-cost) 0)
    ;; flight cost
    (= (flight-cost LON NCE d1) 10)
    (= (flight-cost NCE BER d2) 10)
    (= (flight-cost NCE SOF d3) 10)
    (= (flight-cost SOF AMS d4) 10)
    (= (flight-cost AMS LON d5) 10)
    (= (flight-cost LON PLD d8) 200)
    (= (flight-cost LON SOF d5) 10)
    (= (flight-cost SOF PLD d7) 10)
    ;; accommodation cost
    (= (accommodation-cost LON hostel-1) 11)
    (= (accommodation-cost LON airbnb-1) 21)
    (= (accommodation-cost LON hotel-1) 31)
    (= (accommodation-cost NCE hostel-1) 11)
    (= (accommodation-cost NCE airbnb-1) 21)
    (= (accommodation-cost NCE hotel-1) 31)
    (= (accommodation-cost BER hostel-1) 11)
    (= (accommodation-cost BER airbnb-1) 21)
    (= (accommodation-cost BER hotel-1) 31)
    (= (accommodation-cost SOF hostel-1) 11)
    (= (accommodation-cost SOF airbnb-1) 21)
    (= (accommodation-cost SOF hotel-1) 31)
    (= (accommodation-cost AMS hostel-1) 11)
    (= (accommodation-cost AMS airbnb-1) 21)
    (= (accommodation-cost AMS hotel-1) 31)
    (= (accommodation-cost PLD hostel-1) 11)
    (= (accommodation-cost PLD airbnb-1) 21)
    (= (accommodation-cost PLD hotel-1) 31)

    (= (train-cost BAR MAD d4) 54)
    )
    (:goal
        ;;6 Day Trip
        ;;NCE SOF AMS
        ;;SLEEP 2 Days in each city
        (and (At Mario PLD)))
    (:metric minimize (total-cost))

)

;; How do I apply goal restrictions?
