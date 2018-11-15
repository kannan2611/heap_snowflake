view: products_purchase_seat_cushion {
  sql_table_name: main_production.products_purchase_seat_cushion ;;

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: billing_address_province {
    type: string
    sql: ${TABLE}.billing_address_province ;;
  }

  dimension: browser_ip {
    type: string
    sql: ${TABLE}.browser_ip ;;
  }

  dimension: browser_type {
    type: string
    sql: ${TABLE}.browser_type ;;
  }

  dimension: buyer_accepts_marketing {
    type: string
    sql: ${TABLE}.buyer_accepts_marketing ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}.cancel_reason ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: customer_locale {
    type: string
    sql: ${TABLE}.customer_locale ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: discount_codes {
    type: string
    sql: ${TABLE}.discount_codes ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: landing_site {
    type: string
    sql: ${TABLE}.landing_site ;;
  }

  dimension: landing_site_utm_campaign {
    type: string
    sql: ${TABLE}.landing_site_utm_campaign ;;
  }

  dimension: landing_site_utm_content {
    type: string
    sql: ${TABLE}.landing_site_utm_content ;;
  }

  dimension: landing_site_utm_medium {
    type: string
    sql: ${TABLE}.landing_site_utm_medium ;;
  }

  dimension: landing_site_utm_source {
    type: string
    sql: ${TABLE}.landing_site_utm_source ;;
  }

  dimension: landing_site_utm_term {
    type: string
    sql: ${TABLE}.landing_site_utm_term ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }

  dimension: line_item_names {
    type: string
    sql: ${TABLE}.line_item_names ;;
  }

  dimension: line_item_product_ids {
    type: string
    sql: ${TABLE}.line_item_product_ids ;;
  }

  dimension: line_item_skus {
    type: string
    sql: ${TABLE}.line_item_skus ;;
  }

  dimension: line_item_titles {
    type: string
    sql: ${TABLE}.line_item_titles ;;
  }

  dimension: line_items {
    type: string
    sql: ${TABLE}.line_items ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.order_number ;;
  }

  dimension: pinterest_broken_out {
    type: string
    sql: ${TABLE}.pinterest_broken_out ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: processing_method {
    type: string
    sql: ${TABLE}.processing_method ;;
  }

  dimension: product_category_type {
    type: string
    sql: ${TABLE}.product_category_type ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: referring_site {
    type: string
    sql: ${TABLE}.referring_site ;;
  }

  dimension: refunds {
    type: string
    sql: ${TABLE}.refunds ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: search_engine {
    type: string
    sql: ${TABLE}.search_engine ;;
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

  dimension: shop_url {
    type: string
    sql: ${TABLE}.shop_url ;;
  }

  dimension: social_network {
    type: string
    sql: ${TABLE}.social_network ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: subtotal_price {
    type: string
    sql: ${TABLE}.subtotal_price ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: target_text {
    type: string
    sql: ${TABLE}.target_text ;;
  }

  dimension: taxes_included {
    type: string
    sql: ${TABLE}.taxes_included ;;
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

  dimension: total_discounts {
    type: string
    sql: ${TABLE}.total_discounts ;;
  }

  dimension: total_line_items_price {
    type: string
    sql: ${TABLE}.total_line_items_price ;;
  }

  dimension: total_price {
    type: string
    sql: ${TABLE}.total_price ;;
  }

  dimension: total_price_usd {
    type: string
    sql: ${TABLE}.total_price_usd ;;
  }

  dimension: total_tax {
    type: string
    sql: ${TABLE}.total_tax ;;
  }

  dimension: total_weight {
    type: string
    sql: ${TABLE}.total_weight ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      source_name,
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
