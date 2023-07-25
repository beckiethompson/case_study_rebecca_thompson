# The name of this view in Looker is "Flights By Day"
view: flights_by_day {
  sql_table_name: `looker-onboarding.faa.flights_by_day` ;;


  dimension: arr_delay {
    type: number
    sql: ${TABLE}.arr_delay ;;
  }



  dimension_group: arr {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.arr_time ;;
  }

  dimension: cancelled {
    type: yesno
    sql: ${TABLE}.cancelled ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }

  dimension: dep_delay {
    type: number
    sql: ${TABLE}.dep_delay ;;
  }

  dimension_group: dep {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.dep_time ;;
  }

  dimension_group: dept_day {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dept_day ;;
  }

  dimension: destination {
    type: string
    sql: ${TABLE}.destination ;;
  }

  dimension: distance {
    type: number
    sql: ${TABLE}.distance ;;
  }

  dimension: diverted {
    type: yesno
    sql: ${TABLE}.diverted ;;
  }

  dimension: flight_num {
    type: number
    sql: ${TABLE}.flight_num ;;
  }

  dimension: flight_time {
    type: number
    sql: ${TABLE}.flight_time ;;
  }

  dimension: id2 {
    type: number
    sql: ${TABLE}.id2 ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }

  dimension: tail_num {
    type: string
    sql: ${TABLE}.tail_num ;;
  }

  dimension: taxi_in {
    type: number
    sql: ${TABLE}.taxi_in ;;
  }

  dimension: taxi_out {
    type: number
    sql: ${TABLE}.taxi_out ;;
  }

  ###########################
  ########MEASURES###########
  ###########################

  measure: count {
    type: count
  }

  measure: total_arr_delay {
    type: sum
    sql: ${arr_delay} ;;  }
  measure: average_arr_delay {
    type: average
    sql: ${arr_delay} ;;  }
}
