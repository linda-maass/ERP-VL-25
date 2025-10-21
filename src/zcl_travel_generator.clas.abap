CLASS zcl_travel_generator DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_travel_generator IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA travel  TYPE ztravel_a.
    DATA travels TYPE TABLE OF ztravel_a.
    DATA booking  TYPE zbooking_a.
    DATA bookings TYPE TABLE OF zbooking_a.

    " Delete Travels
    DELETE FROM ztravel_a.
    out->write( |Deleted Travels: { sy-dbcnt }| ).

    " Delete Bookings
    DELETE FROM zbooking_a.
    out->write( |Deleted Bookings: { sy-dbcnt }| ).

    " Create Booking
    booking-booking_date  = '20230807'.
    booking-booking_id    = '3861'.
    booking-booking_uuid  = cl_system_uuid=>create_uuid_x16_static( ).
    booking-carrier_id    = 'LH'.
    booking-client        = sy-mandt.
    booking-connection_id = '0300'.
    booking-currency_code = 'EUR'.
    booking-flight_date   = travel-begin_date.
    booking-flight_price  = '304.00'.
    booking-travel_uuid   = travel-travel_uuid.
    APPEND booking TO bookings.

    " Create Booking
    booking-booking_date  = '20230807'.
    booking-booking_id    = '2947'.
    booking-booking_uuid  = cl_system_uuid=>create_uuid_x16_static( ).
    booking-carrier_id    = 'LH'.
    booking-client        = sy-mandt.
    booking-connection_id = '0350'.
    booking-currency_code = 'EUR'.
    booking-flight_date   = travel-end_date.
    booking-flight_price  = '305.55'.
    booking-travel_uuid   = travel-travel_uuid.
    APPEND booking TO bookings.

    " Create Travel
    travel-agency_id       = '000001'.
    travel-begin_date      = '20231027'.
    travel-booking_fee     = '40.95'.
    travel-client          = sy-mandt.
    travel-created_by      = 'GENERATOR'.
    travel-currency_code   = 'EUR'.
    travel-customer_id     = '000004'.
    travel-description     = 'Kurztrip nach Hamburg'.
    travel-end_date        = '20231030'.
    travel-last_changed_by = 'GENERATOR'.
    travel-status          = 'B'.
    travel-total_price     = '650.50'.
    travel-travel_id       = '00000001'.
    travel-travel_uuid     = cl_system_uuid=>create_uuid_x16_static( ).
    GET TIME STAMP FIELD travel-created_at.
    GET TIME STAMP FIELD travel-last_changed_at.
    APPEND travel TO travels.

    " Create Travel
    travel-agency_id       = '000023'.
    travel-begin_date      = '20240707'.
    travel-booking_fee     = '150.00'.
    travel-client          = sy-mandt.
    travel-created_by      = 'GENERATOR'.
    travel-currency_code   = 'EUR'.
    travel-customer_id     = '000066'.
    travel-description     = 'Italienurlaub 2024'.
    travel-end_date        = '20240723'.
    travel-last_changed_by = 'GENERATOR'.
    travel-status          = 'P'.
    travel-total_price     = '2188.00'.
    travel-travel_id       = '00000002'.
    travel-travel_uuid     = cl_system_uuid=>create_uuid_x16_static( ).
    GET TIME STAMP FIELD travel-created_at.
    GET TIME STAMP FIELD travel-last_changed_at.
    APPEND travel TO travels.

    " Create Travel
    travel-agency_id       = '000045'.
    travel-begin_date      = '20221231'.
    travel-booking_fee     = '77.99'.
    travel-client          = sy-mandt.
    travel-created_by      = 'GENERATOR'.
    travel-currency_code   = 'USD'.
    travel-customer_id     = '000026'.
    travel-description     = 'Silvester New York'.
    travel-end_date        = '20230104'.
    travel-last_changed_by = 'GENERATOR'.
    travel-status          = 'B'.
    travel-total_price     = '389.00'.
    travel-travel_id       = '00000003'.
    travel-travel_uuid     = cl_system_uuid=>create_uuid_x16_static( ).
    GET TIME STAMP FIELD travel-created_at.
    GET TIME STAMP FIELD travel-last_changed_at.
    APPEND travel TO travels.

       " Create Booking
    booking-booking_date  = '20221204'.
    booking-booking_id    = '0021'.
    booking-booking_uuid  = cl_system_uuid=>create_uuid_x16_static( ).
    booking-carrier_id    = 'LH'.
    booking-client        = sy-mandt.
    booking-connection_id = '0400'.
    booking-currency_code = 'USD'.
    booking-flight_date   = travel-begin_date.
    booking-flight_price  = '150.46'.
    booking-travel_uuid   = travel-travel_uuid.
    APPEND booking TO bookings.

    " Create Booking
    booking-booking_date  = '20221204'.
    booking-booking_id    = '0095'.
    booking-booking_uuid  = cl_system_uuid=>create_uuid_x16_static( ).
    booking-carrier_id    = 'LH'.
    booking-client        = sy-mandt.
    booking-connection_id = '0401'.
    booking-currency_code = 'USD'.
    booking-flight_date   = travel-end_date.
    booking-flight_price  = '160.55'.
    booking-travel_uuid   = travel-travel_uuid.
    APPEND booking TO bookings.


    " Create Travel
    travel-agency_id       = '000045'.
    travel-begin_date      = '20231101'.
    travel-booking_fee     = '0.00'.
    travel-client          = sy-mandt.
    travel-created_by      = 'GENERATOR'.
    travel-currency_code   = 'SGD'.
    travel-customer_id     = '000003'.
    travel-description     = 'Businesstrip to Singapur'.
    travel-end_date        = '20231108'.
    travel-last_changed_by = 'GENERATOR'.
    travel-status          = 'N'.
    travel-total_price     = '1290.00'.
    travel-travel_id       = '00000004'.
    travel-travel_uuid     = cl_system_uuid=>create_uuid_x16_static( ).
    GET TIME STAMP FIELD travel-created_at.
    GET TIME STAMP FIELD travel-last_changed_at.
    APPEND travel TO travels.

    " Insert Travels
    INSERT ztravel_a FROM TABLE @travels.
    out->write( |Inserted Travels: { sy-dbcnt }| ).

    " Insert Bookings
    INSERT zbooking_a FROM TABLE @bookings.
    out->write( |Inserted Bookings: { sy-dbcnt }| ).

  ENDMETHOD.
ENDCLASS.
