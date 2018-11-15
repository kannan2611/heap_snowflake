view: product_detail_page_pdp_offers {
  sql_table_name: main_production.product_detail_page_pdp_offers ;;

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }

  dimension: browser_type {
    type: string
    sql: ${TABLE}.browser_type ;;
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

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
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

  dimension: href {
    type: string
    sql: ${TABLE}.href ;;
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

  dimension: mattress_price {
    type: string
    sql: ${TABLE}.mattress_price ;;
  }

  dimension: optimizely_10462833035 {
    type: string
    sql: ${TABLE}.optimizely_10462833035 ;;
  }

  dimension: optimizely_10483172548 {
    type: string
    sql: ${TABLE}.optimizely_10483172548 ;;
  }

  dimension: optimizely_10598743813 {
    type: string
    sql: ${TABLE}.optimizely_10598743813 ;;
  }

  dimension: optimizely_11043565945 {
    type: string
    sql: ${TABLE}.optimizely_11043565945 ;;
  }

  dimension: optimizely_11171302477 {
    type: string
    sql: ${TABLE}.optimizely_11171302477 ;;
  }

  dimension: optimizely_11303950119 {
    type: string
    sql: ${TABLE}.optimizely_11303950119 ;;
  }

  dimension: optimizely_11564020573 {
    type: string
    sql: ${TABLE}.optimizely_11564020573 ;;
  }

  dimension: optimizely_11703671522 {
    type: string
    sql: ${TABLE}.optimizely_11703671522 ;;
  }

  dimension: optimizely_11721370827 {
    type: string
    sql: ${TABLE}.optimizely_11721370827 ;;
  }

  dimension: optimizely_11724460173 {
    type: string
    sql: ${TABLE}.optimizely_11724460173 ;;
  }

  dimension: optimizely_11789811208 {
    type: string
    sql: ${TABLE}.optimizely_11789811208 ;;
  }

  dimension: optimizely_11933080037 {
    type: string
    sql: ${TABLE}.optimizely_11933080037 ;;
  }

  dimension: optimizely_double_or_nothing {
    type: string
    sql: ${TABLE}.optimizely_double_or_nothing ;;
  }

  dimension: optimizely_purple_boys_compare_page {
    type: string
    sql: ${TABLE}.optimizely_purple_boys_compare_page ;;
  }

  dimension: optimizely_red_vs_blue_ctas {
    type: string
    sql: ${TABLE}.optimizely_red_vs_blue_ctas ;;
  }

  dimension: optimizely_tate_s_seat_cushion_test {
    type: string
    sql: ${TABLE}.optimizely_tate_s_seat_cushion_test ;;
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

  dimension: target_text {
    type: string
    sql: ${TABLE}.target_text ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
      users.full_name,
      sessions.session_id,
      sessions.app_name
    ]
  }
}
