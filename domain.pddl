(define (domain travel)
(:requirements :strips :typing :action-costs)
(:types place vehicle passenger day accommodations - object
        airport city - place
        hotel - accommodations
        today - day
        airline - vehicle
)
(:predicates
            (At ?pas - passenger ?pl - (either place vehicle))
            (Date ?pas - passenger ?today - day)
            (flight ?from - city ?to - city ?today - day ?airline - vehicle)
            (visited ?pas - passenger ?city - city)
            (accommodation ?city - city ?hotel - accommodations)
            (slept ?pas - passenger ?city - city)
            (date-precedence ?today - day ?tomorrow - day)
        )
(:functions
    (total-cost)
    (flight-cost ?from ?to ?today ?airline)
    (accommodation-cost ?place ?hotel)
)

(:action FLY
     :parameters (?pass - passenger ?from - city ?to - city ?today - today ?tomorrow - today ?airline - airline)
     :precondition (and (flight ?from ?to ?today ?airline) (At ?pass ?from) (date-precedence ?today ?tomorrow) (Date ?pass ?today))
     :effect (and (At ?pass ?to) (visited ?pass ?to) (not (At ?pass ?from))
             (increase (total-cost) (flight-cost ?from ?to ?today ?airline))
        )
    )

(:action SLEEP
     :parameters (?pass - passenger ?city - city ?hotel - accommodations ?today - today ?tomorrow - today)
     :precondition (and (At ?pass ?city) (accommodation ?city ?hotel) (date-precedence ?today ?tomorrow) (Date ?pass ?today))
     :effect (and (slept ?pass ?city) (Date ?pass ?tomorrow) (not (Date ?pass ?today))
            (increase (total-cost) (accommodation-cost ?city ?hotel))
        )
    )
)
