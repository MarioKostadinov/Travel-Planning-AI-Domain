(define (domain travel)
(:requirements :strips :typing :action-costs)
(:types place vehicle passenger day accommodations - object
        airport city - place
        hostel airbnb hotel - accommodations
        today - day
)
(:predicates
            (At ?pas - passenger ?pl - (either place vehicle))
            (Date ?pas - passenger ?today - day)
            (flight ?from - city ?to - city ?today - day)
            (train ?from - city ?to - city ?today - day)
            (visited ?pas - passenger ?city - city)
            (accommodation ?city - city ?hotel - accommodations ?today - day)
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
     :precondition (and (flight ?from ?to ?today) (At ?pass ?from) (Date ?pass ?today))
     :effect (and (At ?pass ?to) (not (At ?pass ?from))
        )
    )
;(:action FLY
;     :parameters (?pass - passenger ?from - city ?to - city ?today - today)
;     :precondition (and (flight ?from ?to ?today) (At ?pass ?from) (Date ?pass ?today))
;     :effect (and (At ?pass ?to) (not (At ?pass ?from))
;            (increase (total-cost) (flight-cost ?from ?to ?today))
;        )
;    )

(:action TRAIN
     :parameters (?pass - passenger ?from - city ?to - city ?today - today)
     :precondition (and (train ?from ?to ?today) (At ?pass ?from))
     :effect (and (At ?pass ?to) (not (At ?pass ?from))
            (increase (total-cost) (train-cost ?from ?to ?today))
        )
    )

(:action SLEEP
     :parameters (?pass - passenger ?city - city ?hotel - accommodations ?today - today ?tomorrow - today)
     :precondition (and (At ?pass ?city) (accommodation ?city ?hotel ?today))
     :effect (and (slept ?pass ?city) (Date ?pass ?tomorrow) (not (Date ?pass ?today))

        )
    )
)
