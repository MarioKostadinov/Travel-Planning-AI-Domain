(define (domain travel)
(:requirements :strips :typing :action-costs)
(:types place vehicle passenger day hotel - object
        airport city - place
        cheap-hotel medium-hotel expensive-hotel - hotel
        today - day
)
(:predicates
            (At ?pas - passenger ?pl - (either place vehicle))
            (flight ?from - city ?to - city ?today - day)
            (train ?from - city ?to - city ?today - day)
            (visited ?pas - passenger ?city - city)
            (accommodation ?city - city ?hotel - hotel)
            (slept ?pas - passenger ?city - city)
        )
(:functions
    (total-cost)
    (flight-cost ?from ?to ?today)
    (train-cost ?from ?to ?today)
    (hotel-cost ?place ?hotel)
)

(:action FLY
     :parameters (?pass - passenger ?from - city ?to - city ?today - today)
     :precondition (and (flight ?from ?to ?today) (At ?pass ?from))
     :effect (and (At ?pass ?to) (not (At ?pass ?from))
            (increase (total-cost) (flight-cost ?from ?to ?today))
        )
    )

(:action TRAIN
     :parameters (?pass - passenger ?from - city ?to - city ?today - today)
     :precondition (and (train ?from ?to ?today) (At ?pass ?from))
     :effect (and (At ?pass ?to) (not (At ?pass ?from))
            (increase (total-cost) (train-cost ?from ?to ?today))
        )
    )

(:action SLEEP
     :parameters (?pass - passenger ?city - city ?hotel - hotel)
     :precondition (and (At ?pass ?city) (accommodation ?city ?hotel))
     :effect (and (slept ?pass ?city)

        )
    )

;(:action BOOK
;     :parameters (?pass - passenger ?city - city ?today - today ?hotel - hotel)
;     :precondition(and (At ?pass ?pl))
;     :effect (and (slept ?pass ?city ?hotel)
;            (increase (total-cost) (hotel-cost ?place))
;        )
;    )
)
