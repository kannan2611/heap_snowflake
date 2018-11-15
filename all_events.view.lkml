view: all_events {
<<<<<<< HEAD
  sql_table_name: main_production.all_events ;;

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_table_name {
    type: string
    sql: ${TABLE}.event_table_name ;;
  }

  dimension: session_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.session_id ;;
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
      event_table_name,
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
      users.full_name,
      sessions.session_id,
      sessions.app_name
    ]
  }
}
=======
  sql_table_name: heap.all_events ;;

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_name {
    sql: ${TABLE}.event_table_name ;;
  }

  dimension: unique_event_id {
    sql: ${event_id} || '-' || ${event_name} ;;
    primary_key: yes
  }

  dimension: session_id {
    type: number
    # hidden: true
    sql: ${TABLE}.session_id ;;
  }

  dimension: session_unique_id {
    #     hidden: true
    type: string
    sql: ${session_id} || '-' || ${user_id} ;;
  }

  dimension: user_id {
    type: number
    # hidden: true
    sql: ${TABLE}.user_id ;;
  }

  dimension_group: time {
    type: time
    timeframes: [time, date, week, month, hour_of_day, day_of_week_index]
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: [event_name, user_id, session_id]
  }

  measure: count_percent_of_total {
    type: percent_of_total
    sql: ${count} ;;
    value_format_name: decimal_1
  }

  measure: count_users {
    type: count_distinct
    sql: ${user_id} ;;
    drill_fields: [user_id]
  }

  filter: event1 {
    suggest_dimension: event_name
  }

  measure: event1_session_count {
    type: number
    sql: COUNT(
        DISTINCT(
          CASE
            WHEN
            {% condition event1 %} ${event_name} {% endcondition %}
              THEN ${session_unique_id}
            ELSE NULL END
        )
      )
       ;;
  }

  filter: event2 {
    suggest_dimension: event_name
  }

  measure: event2_session_count {
    type: number
    sql: COUNT(
        DISTINCT(
          CASE
            WHEN
            {% condition event2 %} ${event_name} {% endcondition %}
              THEN ${session_unique_id}
            ELSE NULL END
        )
      )
       ;;
  }

  filter: event3 {
    suggest_dimension: event_name
  }

  measure: event3_session_count {
    type: number
    sql: COUNT(
        DISTINCT(
          CASE
            WHEN
            {% condition event3 %} ${event_name} {% endcondition %}
              THEN ${session_unique_id}
            ELSE NULL END
        )
      )
       ;;
  }

  filter: event4 {
    suggest_dimension: event_name
  }

  measure: event4_session_count {
    type: number
    sql: COUNT(
        DISTINCT(
          CASE
            WHEN
            {% condition event4 %} ${event_name} {% endcondition %}
              THEN ${session_unique_id}
            ELSE NULL END
        )
      )
       ;;
  }
}

# event properties, removed at this point
#   - dimension: app_name
#     sql: ${TABLE}.app_name
#
#   - dimension: app_version
#     sql: ${TABLE}.app_version
#
#   - dimension: browser
#     sql: ${TABLE}.browser
#
#   - dimension: carrier
#     sql: ${TABLE}.carrier
#
#   - dimension: city
#     sql: ${TABLE}.city
#
#   - dimension: country
#     sql: ${TABLE}.country
#
#   - dimension: destination_url
#     sql: ${TABLE}.destination_url
#
#   - dimension: device_type
#     sql: ${TABLE}.device_type
#
#   - dimension: domain
#     sql: ${TABLE}.domain
#
#   - dimension: environment_id
#     sql: ${TABLE}.environment_id
#
#   - dimension: hash
#     sql: ${TABLE}.hash
#
#   - dimension: href
#     sql: ${TABLE}.href
#
#   - dimension: landing_page
#     sql: ${TABLE}.landing_page
#
#   - dimension: library
#     sql: ${TABLE}.library
#
#   - dimension: pageview_id
#     type: number
#     sql: ${TABLE}.pageview_id
#
#   - dimension: pageview_properties
#     sql: ${TABLE}.pageview_properties
#
#   - dimension: pageview_time
#     sql: ${TABLE}.pageview_time
#
#   - dimension: path
#     sql: ${TABLE}.path
#
#   - dimension: phone_model
#     sql: ${TABLE}.phone_model
#
#   - dimension: platform
#     sql: ${TABLE}.platform
#
#   - dimension: query
#     sql: ${TABLE}.query
#
#   - dimension: referrer
#     sql: ${TABLE}.referrer
#
#   - dimension: referrer_domain
#     sql: split_part(${referrer},'/',3)
#
#   - dimension: referrer_domain_mapped
#     sql: CASE WHEN ${referrer_domain} like '%facebook%' THEN 'facebook'
#               WHEN ${referrer_domain} like '%google%' THEN 'google'
#               ELSE ${referrer_domain} END
#     html: |
#
#   - dimension: region
#     sql: ${TABLE}.region
#
#   - dimension: screen_a11y_id
#     sql: ${TABLE}.screen_a11y_id
#
#   - dimension: screen_a11y_label
#     sql: ${TABLE}.screen_a11y_label
#
#   - dimension: screen_dimensions
#     sql: ${TABLE}.screen_dimensions
#
#   - dimension: search_keyword
#     sql: ${TABLE}.search_keyword
#
#   - dimension: selector
#     sql: ${TABLE}.selector
#
#   - dimension_group: session
#     type: time
#     timeframes: [time, date, week, month, hour_of_day, day_of_week_index]
#     sql: ${TABLE}.session_time
#
#   - dimension: target_a11y_id
#     sql: ${TABLE}.target_a11y_id
#
#   - dimension: target_a11y_label
#     sql: ${TABLE}.target_a11y_label
#
#   - dimension: target_class
#     sql: ${TABLE}.target_class
#
#   - dimension: target_id
#     sql: ${TABLE}.target_id
#
#   - dimension: target_ivar
#     sql: ${TABLE}.target_ivar
#
#   - dimension: target_selector
#     sql: ${TABLE}.target_selector
#
#   - dimension: target_tag
#     sql: ${TABLE}.target_tag
#
#   - dimension: target_text
#     sql: ${TABLE}.target_text
#
#   - dimension: target_view
#     sql: ${TABLE}.target_view
#
#   - dimension: timestamp
#     sql: ${TABLE}.timestamp
#
#   - dimension: title
#     sql: ${TABLE}.title
#
#   - dimension: type
#     sql: ${TABLE}.type
#
#   - dimension: utm_campaign
#     sql: ${TABLE}.utm_campaign
#
#   - dimension: utm_content
#     sql: ${TABLE}.utm_content
#
#   - dimension: utm_medium
#     sql: ${TABLE}.utm_medium
#
#   - dimension: utm_source
#     sql: ${TABLE}.utm_source
#
#   - dimension: utm_term
#     sql: ${TABLE}.utm_term
#
#   - dimension: view_controller
#     sql: ${TABLE}.view_controller
>>>>>>> branch 'master' of https://github.com/kannan2611/heap_snowflake.git
