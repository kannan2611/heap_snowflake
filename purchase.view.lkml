view: purchase {
  sql_table_name: main_production.purchase ;;

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }

  dimension: browser_type {
    type: string
    sql: ${TABLE}.browser_type ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: continent {
    type: string
    sql: ${TABLE}.continent ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: dollars {
    type: string
    sql: ${TABLE}.dollars ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: landing_page {
    type: string
    sql: ${TABLE}.landing_page ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }

  dimension: marketing_channel {
    type: string
    sql: ${TABLE}.marketing_channel ;;
  }

  dimension: marketing_channel_default_ {
    type: string
    sql: ${TABLE}.marketing_channel_default_ ;;
  }

  dimension: marketing_channel_new_ {
    type: string
    sql: ${TABLE}.marketing_channel_new_ ;;
  }

  dimension: marketing_channel_purple_corrected_ {
    type: string
    sql: ${TABLE}.marketing_channel_purple_corrected_ ;;
  }

  dimension: marketing_channel_purple_corrected_pinterest_broken_out {
    type: string
    sql: ${TABLE}.marketing_channel_purple_corrected_pinterest_broken_out ;;
  }

  dimension: marketing_channel_youtube_broken_out {
    type: string
    sql: ${TABLE}.marketing_channel_youtube_broken_out ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: pinterest_broken_out {
    type: string
    sql: ${TABLE}.pinterest_broken_out ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: product_category_type {
    type: string
    sql: ${TABLE}.product_category_type ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: screen_a11y_id {
    type: string
    sql: ${TABLE}.screen_a11y_id ;;
  }

  dimension: screen_a11y_label {
    type: string
    sql: ${TABLE}.screen_a11y_label ;;
  }

  dimension: search_engine {
    type: string
    sql: ${TABLE}.search_engine ;;
  }

  dimension: search_keyword {
    type: string
    sql: ${TABLE}.search_keyword ;;
  }

  dimension: session_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.session_id ;;
  }

  dimension_group: session {
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
    sql: ${TABLE}.session_time ;;
  }

  dimension: social_network {
    type: string
    sql: ${TABLE}.social_network ;;
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

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}.utm_campaign ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}.utm_content ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}.utm_medium ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}.utm_source ;;
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}.utm_term ;;
  }

  dimension: view_controller {
    type: string
    sql: ${TABLE}.view_controller ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      app_name,
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
