
(define (problem flying)
    (:domain travel)
    (:objects   Koko - passenger
                LON CBR MAD BAR PAR NCE ROM VEN MIL AMS RDM BER MUN SOF PLD ATH - city
                hotel-1 hotel-2 hotel-3 hotel-4 hotel-5 hotel-6 hotel-7 hotel-8 hotel-9 hotel-10 - hotel
                d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - today
                )
    (:init
    ;; locations
    (At Koko LON) (Date Koko d1)
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
    ;; accommodations
    (accommodation LON hotel-1)
    (accommodation NCE hotel-2)
    (accommodation BER hotel-3)
    (accommodation SOF hotel-4)
    (accommodation AMS hotel-5)
    (accommodation PLD hotel-6)
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
    (= (accommodation-cost LON hotel-1) 31)
    (= (accommodation-cost NCE hotel-2) 31)
    (= (accommodation-cost BER hotel-3) 31)
    (= (accommodation-cost SOF hotel-4) 31)
    (= (accommodation-cost AMS hotel-5) 31)
    (= (accommodation-cost PLD hotel-6) 31)

    )
    (:goal
        (and (slept Koko AMS)))
    (:metric minimize (total-cost))

)
