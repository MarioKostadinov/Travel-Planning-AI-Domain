
(define (problem flying)
    (:domain travel)
    (:objects   Passenger - passenger
                LON CBR MAD BAR PAR NCE ROM VEN MIL AMS RDM BER MUN SOF PLD ATH - city
                wz ry - airline
                hotel-1 hotel-2 hotel-3 hotel-4 hotel-5 hotel-6 hotel-7 hotel-8 hotel-9 hotel-10 - hotel
                d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 - today
                )
    (:init
    ;; locations
    (At Passenger LON) (Date Passenger d1)
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
    (flight LON NCE d1 wz)
    (flight NCE BER d2 wz)
    (flight NCE SOF d3 wz)
    (flight SOF AMS d4 wz)
    (flight AMS LON d5 wz)
    (flight AMS PLD d7 wz)
    (flight BAR SOF d3 wz)
    (flight LON PLD d8 ry)
    (flight LON SOF d5 ry)
    (flight SOF PLD d7 ry)
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
    (= (flight-cost LON NCE d1 wz) 10)
    (= (flight-cost NCE BER d2 wz) 15)
    (= (flight-cost NCE SOF d3 wz) 12)
    (= (flight-cost SOF AMS d4 wz) 34)
    (= (flight-cost AMS LON d5 wz) 85)
    (= (flight-cost AMS PLD d7 wz) 58)
    (= (flight-cost BAR SOF d3 wz) 28)
    (= (flight-cost LON PLD d8 ry) 123)
    (= (flight-cost LON SOF d5 ry) 149)
    (= (flight-cost SOF PLD d7 ry) 123)
    ;; accommodation cost
    (= (accommodation-cost LON hotel-1) 31)
    (= (accommodation-cost NCE hotel-2) 31)
    (= (accommodation-cost BER hotel-3) 31)
    (= (accommodation-cost SOF hotel-4) 31)
    (= (accommodation-cost AMS hotel-5) 31)
    (= (accommodation-cost PLD hotel-6) 31)

    )
    (:goal
        (and (visited Passenger AMS)))
    (:metric minimize (total-cost))

)