view: _dropped_tables {
  sql_table_name: main_production._dropped_tables ;;

  dimension_group: dropped {
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
    sql: ${TABLE}.dropped_at ;;
  }

  dimension: event_table_name {
    type: string
    sql: ${TABLE}.event_table_name ;;
  }

  measure: count {
    type: count
    drill_fields: [event_table_name]
  }
}
