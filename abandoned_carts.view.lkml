view: abandoned_carts {
  sql_table_name: main_production.abandoned_carts ;;

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      users.user_id,
      users.author_name,
      users.out_of_stock_product_name,
      users.customer_service_agent_name,
      users.last_products_bought_product_3_name,
      users.last_products_bought_product_2_name,
      users.abandoned_product_3_name,
      users.abandoned_product_2_name,
      users.abandoned_product_1_name,
      users.last_products_bought_product_1_name,
      users.first_conversion_event_name,
      users.recent_conversion_event_name,
      users.hs_email_last_email_name,
      users.lastname,
      users.firstname,
      users.talkable_campaign_name,
      users.full_name
    ]
  }
}
