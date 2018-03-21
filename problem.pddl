(define (problem flying)
    (:domain travel)
    (:objects   Mario - passenger
                LON CBR MAD BAR PAR NCE ROM VEN MIL AMS RDM BER MUN SOF PLD ATH - city
                hostel-1 hostel-2 hostel-3 hostel-4 hostel-5 hostel-6 hostel-7 hostel-8 hostel-9 hostel-10 - hostel
                airbnb-1 airbnb-2 airbnb-3 airbnb-4 airbnb-5 airbnb-6 airbnb-7 airbnb-8 airbnb-9 airbnb-10 - airbnb
                hotel-1 hotel-2 hotel-3 hotel-4 hotel-5 hotel-6 hotel-7 hotel-8 hotel-9 hotel-10 - hotel
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
    (flight AMS PLD d7)
    (flight BAR SOF d3)
    (flight LON PLD d8)
    (flight LON SOF d5)
    (flight SOF PLD d7)
    ;; Trains
    (train BAR MAD d4)
    (train MAD BAR d3)
    (train AMS RDM d2)
    (train AMS RDM d3)
    (train AMS RDM d4)
    (train AMS RDM d5)
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
    (accommodation PLD hostel-6)
    (accommodation PLD airbnb-6)
    (accommodation PLD hotel-6)
    (accommodation BAR hostel-7)
    (accommodation BAR airbnb-7)
    (accommodation BAR hotel-7)
    (= (total-cost) 0)
    ;; flight cost
    (= (flight-cost LON NCE d1) 10)
    (= (flight-cost NCE BER d2) 15)
    (= (flight-cost NCE SOF d3) 12)
    (= (flight-cost SOF AMS d4) 34)
    (= (flight-cost AMS LON d5) 85)
    (= (flight-cost AMS PLD d7) 58)
    (= (flight-cost BAR SOF d3) 28)
    (= (flight-cost LON PLD d8) 123)
    (= (flight-cost LON SOF d5) 149)
    (= (flight-cost SOF PLD d7) 123)
    ;; accommodation cost
    (= (accommodation-cost LON hostel-1) 11)
    (= (accommodation-cost LON airbnb-1) 21)
    (= (accommodation-cost LON hotel-1) 31)
    (= (accommodation-cost NCE hostel-2) 11)
    (= (accommodation-cost NCE airbnb-2) 21)
    (= (accommodation-cost NCE hotel-2) 31)
    (= (accommodation-cost BER hostel-3) 11)
    (= (accommodation-cost BER airbnb-3) 21)
    (= (accommodation-cost BER hotel-3) 31)
    (= (accommodation-cost SOF hostel-4) 11)
    (= (accommodation-cost SOF airbnb-4) 21)
    (= (accommodation-cost SOF hotel-4) 31)
    (= (accommodation-cost AMS hostel-5) 11)
    (= (accommodation-cost AMS airbnb-5) 21)
    (= (accommodation-cost AMS hotel-5) 31)
    (= (accommodation-cost PLD hostel-6) 11)
    (= (accommodation-cost PLD airbnb-6) 21)
    (= (accommodation-cost PLD hotel-6) 31)

    (= (train-cost BAR MAD d4) 54)
    )
    (:goal
        ;;6 Day Trip
        ;;NCE SOF AMS
        ;;SLEEP 2 Days in each city
        (and (slept Mario RDM)))
    (:metric minimize (total-cost))

)

;; How do I apply goal restrictions?
