view: user_migrations {
  sql_table_name: main_production.user_migrations ;;

  dimension: from_user_id {
    type: number
    sql: ${TABLE}.from_user_id ;;
  }

  dimension_group: time {
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
    sql: ${TABLE}.time ;;
  }

  dimension: to_user_id {
    type: number
    sql: ${TABLE}.to_user_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
