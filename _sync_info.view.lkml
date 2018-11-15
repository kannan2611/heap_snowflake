view: _sync_info {
  sql_table_name: main_production._sync_info ;;

  dimension: event_table_name {
    type: string
    sql: ${TABLE}.event_table_name ;;
  }

  dimension: inserted_row_count {
    type: number
    sql: ${TABLE}.inserted_row_count ;;
  }

  dimension_group: sync_ended {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.sync_ended ;;
  }

  dimension_group: sync_started {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.sync_started ;;
  }

  dimension_group: synced_to {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.synced_to_time ;;
  }

  measure: count {
    type: count
    drill_fields: [event_table_name]
  }
}
