view: hubspot_email_opened_email {
  sql_table_name: main_production.hubspot_email_opened_email ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: appid {
    type: string
    sql: ${TABLE}.appid ;;
  }

  dimension: appname {
    type: string
    sql: ${TABLE}.appname ;;
  }

  dimension: browser_family {
    type: string
    sql: ${TABLE}.browser_family ;;
  }

  dimension: browser_name {
    type: string
    sql: ${TABLE}.browser_name ;;
  }

  dimension: browser_producer {
    type: string
    sql: ${TABLE}.browser_producer ;;
  }

  dimension: browser_producerurl {
    type: string
    sql: ${TABLE}.browser_producerurl ;;
  }

  dimension: browser_type {
    type: string
    sql: ${TABLE}.browser_type ;;
  }

  dimension: browser_type_defined_property {
    type: string
    sql: ${TABLE}.browser_type_defined_property ;;
  }

  dimension: browser_url {
    type: string
    sql: ${TABLE}.browser_url ;;
  }

  dimension: browser_version {
    type: string
    sql: ${TABLE}.browser_version ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
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

  dimension: created {
    type: string
    sql: ${TABLE}.created ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }

  dimension: emailcampaignid {
    type: string
    sql: ${TABLE}.emailcampaignid ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: filteredevent {
    type: string
    sql: ${TABLE}.filteredevent ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: ipaddress {
    type: string
    sql: ${TABLE}.ipaddress ;;
  }

  dimension: library {
    type: string
    sql: ${TABLE}.library ;;
  }

  dimension: location_city {
    type: string
    sql: ${TABLE}.location_city ;;
  }

  dimension: location_country {
    type: string
    sql: ${TABLE}.location_country ;;
  }

  dimension: location_state {
    type: string
    sql: ${TABLE}.location_state ;;
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

  dimension: pinterest_broken_out {
    type: string
    sql: ${TABLE}.pinterest_broken_out ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: portalid {
    type: string
    sql: ${TABLE}.portalid ;;
  }

  dimension: product_category_type {
    type: string
    sql: ${TABLE}.product_category_type ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}.recipient ;;
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

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: subtype {
    type: string
    sql: ${TABLE}.subtype ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: useragent {
    type: string
    sql: ${TABLE}.useragent ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      appname,
      browser_name,
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
