connection: "heap_redshift"

# include all the views
include: "*.view"

datagroup: heap_v2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: heap_v2_default_datagroup

explore: _dropped_tables {hidden: yes}

explore: _sync_info {hidden: yes}

explore: abandoned_carts {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${abandoned_carts.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: all_events {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${all_events.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${all_events.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: blog_viewed_page_any_post {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${blog_viewed_page_any_post.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${blog_viewed_page_any_post.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: cart_mattress_add_to_cart {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${cart_mattress_add_to_cart.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${cart_mattress_add_to_cart.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: cart_orders_placed_order {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${cart_orders_placed_order.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${cart_orders_placed_order.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: cart_orders_shopify_confirmed_order {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${cart_orders_shopify_confirmed_order.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${cart_orders_shopify_confirmed_order.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: checkout_click_amazon_pay {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${checkout_click_amazon_pay.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${checkout_click_amazon_pay.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: checkout_click_paypal {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${checkout_click_paypal.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${checkout_click_paypal.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: checkout_step_1_continue_to_shipping_step_1_continue_to_shipping {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${checkout_step_1_continue_to_shipping_step_1_continue_to_shipping.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${checkout_step_1_continue_to_shipping_step_1_continue_to_shipping.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: checkout_step_2_continue_to_payment {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${checkout_step_2_continue_to_payment.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${checkout_step_2_continue_to_payment.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: checkout_step_3_complete {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${checkout_step_3_complete.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${checkout_step_3_complete.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: checkout_submit_customer_info {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${checkout_submit_customer_info.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${checkout_submit_customer_info.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: checkout_viewed_page_order_confirmation {
  hidden: yes

  join: users {
    type: left_outer
    sql_on: ${checkout_viewed_page_order_confirmation.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: sessions {
    type: left_outer
    sql_on: ${checkout_viewed_page_order_confirmation.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}
#
# explore: core_events_change_any_field {
#
#   join: users {
#     type: left_outer
#     sql_on: ${core_events_change_any_field.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${core_events_change_any_field.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: core_events_click_any_element {
#   join: users {
#     type: left_outer
#     sql_on: ${core_events_click_any_element.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${core_events_click_any_element.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: core_events_submit_any_form {
#   join: users {
#     type: left_outer
#     sql_on: ${core_events_submit_any_form.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${core_events_submit_any_form.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: core_segments_all_users {
#   join: users {
#     type: left_outer
#     sql_on: ${core_segments_all_users.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: core_segments_daily_active_users {
#   join: users {
#     type: left_outer
#     sql_on: ${core_segments_daily_active_users.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: core_segments_monthly_active_users {
#   join: users {
#     type: left_outer
#     sql_on: ${core_segments_monthly_active_users.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: core_segments_weekly_active_users {
#   join: users {
#     type: left_outer
#     sql_on: ${core_segments_weekly_active_users.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: customers {
#   join: users {
#     type: left_outer
#     sql_on: ${customers.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: desktop_users {
#   join: users {
#     type: left_outer
#     sql_on: ${desktop_users.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: email_abandon_cart_purchasers {
#   join: users {
#     type: left_outer
#     sql_on: ${email_abandon_cart_purchasers.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: homepage_hp_featured_on_bar {
#   join: users {
#     type: left_outer
#     sql_on: ${homepage_hp_featured_on_bar.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${homepage_hp_featured_on_bar.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: homepage_hp_watch_video_clicks {
#   join: users {
#     type: left_outer
#     sql_on: ${homepage_hp_watch_video_clicks.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${homepage_hp_watch_video_clicks.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: homepage_viewed_page_homepage {
#   join: users {
#     type: left_outer
#     sql_on: ${homepage_viewed_page_homepage.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${homepage_viewed_page_homepage.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: hubspot_email_opened_email {
#   join: users {
#     type: left_outer
#     sql_on: ${hubspot_email_opened_email.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${hubspot_email_opened_email.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: mattress_viewed_page_compare {
#   join: users {
#     type: left_outer
#     sql_on: ${mattress_viewed_page_compare.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${mattress_viewed_page_compare.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: mattress_viewed_page_mattress_science {
#   join: users {
#     type: left_outer
#     sql_on: ${mattress_viewed_page_mattress_science.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${mattress_viewed_page_mattress_science.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: mattress_viewed_page_sleep_cool {
#   join: users {
#     type: left_outer
#     sql_on: ${mattress_viewed_page_sleep_cool.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${mattress_viewed_page_sleep_cool.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: mobile_users {
#   join: users {
#     type: left_outer
#     sql_on: ${mobile_users.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: navigation_nav_about_clicked_science {
#   join: users {
#     type: left_outer
#     sql_on: ${navigation_nav_about_clicked_science.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${navigation_nav_about_clicked_science.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: navigation_nav_about_clicked_support {
#   join: users {
#     type: left_outer
#     sql_on: ${navigation_nav_about_clicked_support.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${navigation_nav_about_clicked_support.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: pageviews {
#   join: users {
#     type: left_outer
#     sql_on: ${pageviews.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${pageviews.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_add_to_cart {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_add_to_cart.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_add_to_cart.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_add_to_cart_financing {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_add_to_cart_financing.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_add_to_cart_financing.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_add_to_cart_financing_amount {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_add_to_cart_financing_amount.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_add_to_cart_financing_amount.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_add_to_cart_financing_view_details {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_add_to_cart_financing_view_details.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_add_to_cart_financing_view_details.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_alt_image_1_click {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_1_click.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_1_click.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_alt_image_2_click {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_2_click.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_2_click.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_alt_image_3_click {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_3_click.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_3_click.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_alt_image_4_click {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_4_click.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_4_click.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_alt_image_5_click {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_5_click.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_5_click.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_alt_image_clicks {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_clicks.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_alt_image_clicks.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_benefit_bar {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_benefit_bar.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_benefit_bar.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_compare_mattress_banner {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_compare_mattress_banner.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_compare_mattress_banner.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_faqs {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_faqs.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_faqs.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_offers {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_offers.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_offers.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_product_detail_clicks_firm_medium_soft {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_product_detail_clicks_firm_medium_soft.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_product_detail_clicks_firm_medium_soft.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_detail_page_pdp_product_information_clicks {
#   join: users {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_product_information_clicks.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_detail_page_pdp_product_information_clicks.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_either_mattress_buy {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_either_mattress_buy.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_either_mattress_buy.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_either_mattress_lp {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_either_mattress_lp.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_either_mattress_lp.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_mattress_protector_buy {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_mattress_protector_buy.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_mattress_protector_buy.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_mattress_protector_lp {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_mattress_protector_lp.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_mattress_protector_lp.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_new_mattress {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_new_mattress.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_new_mattress.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_new_mattress_buy {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_new_mattress_buy.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_new_mattress_buy.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_og_mattress_buy {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_og_mattress_buy.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_og_mattress_buy.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_og_mattress_lp {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_og_mattress_lp.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_og_mattress_lp.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_pet_bed_buy {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_pet_bed_buy.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_pet_bed_buy.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_pet_bed_lp {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_pet_bed_lp.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_pet_bed_lp.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_pillow_buy {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_pillow_buy.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_pillow_buy.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_pillow_lp {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_pillow_lp.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_pillow_lp.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_platform_buy {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_platform_buy.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_platform_buy.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_platform_lp {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_platform_lp.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_platform_lp.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_power_base_buy {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_power_base_buy.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_power_base_buy.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_power_base_lp {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_power_base_lp.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_power_base_lp.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_seat_cushion_buy {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_seat_cushion_buy.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_seat_cushion_buy.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_seat_cushion_lp {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_seat_cushion_lp.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_seat_cushion_lp.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_sheets_buy {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_sheets_buy.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_sheets_buy.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: product_viewed_page_sheets_lp {
#   join: users {
#     type: left_outer
#     sql_on: ${product_viewed_page_sheets_lp.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${product_viewed_page_sheets_lp.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: products_purchase_seat_cushion {
#   join: users {
#     type: left_outer
#     sql_on: ${products_purchase_seat_cushion.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${products_purchase_seat_cushion.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: purchase {
#   join: users {
#     type: left_outer
#     sql_on: ${purchase.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${purchase.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: returns_viewed_page_refund_policy {
#   join: users {
#     type: left_outer
#     sql_on: ${returns_viewed_page_refund_policy.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${returns_viewed_page_refund_policy.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: reviews_click_any_review {
#   join: users {
#     type: left_outer
#     sql_on: ${reviews_click_any_review.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${reviews_click_any_review.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: reviews_submit_mattress_review {
#   join: users {
#     type: left_outer
#     sql_on: ${reviews_submit_mattress_review.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${reviews_submit_mattress_review.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: reviews_viewed_page_all_reviews {
#   join: users {
#     type: left_outer
#     sql_on: ${reviews_viewed_page_all_reviews.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${reviews_viewed_page_all_reviews.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: reviews_viewed_page_mattress_reviews {
#   join: users {
#     type: left_outer
#     sql_on: ${reviews_viewed_page_mattress_reviews.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${reviews_viewed_page_mattress_reviews.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: seat_cushions__a_b_viewed_page_seat_cushion_buy_with_double {
#   join: users {
#     type: left_outer
#     sql_on: ${seat_cushions__a_b_viewed_page_seat_cushion_buy_with_double.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${seat_cushions__a_b_viewed_page_seat_cushion_buy_with_double.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: seat_cushions__a_b_viewed_page_seat_cushion_buy_without_double {
#   join: users {
#     type: left_outer
#     sql_on: ${seat_cushions__a_b_viewed_page_seat_cushion_buy_without_double.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${seat_cushions__a_b_viewed_page_seat_cushion_buy_without_double.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: sessions {
#   join: users {
#     type: left_outer
#     sql_on: ${sessions.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: support_page_support_call_us {
#   join: users {
#     type: left_outer
#     sql_on: ${support_page_support_call_us.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${support_page_support_call_us.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: support_page_support_email_us {
#   join: users {
#     type: left_outer
#     sql_on: ${support_page_support_email_us.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${support_page_support_email_us.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: support_page_support_live_chat {
#   join: users {
#     type: left_outer
#     sql_on: ${support_page_support_live_chat.user_id} = ${users.user_id} ;;
#     relationship: many_to_one
#   }
#
#   join: sessions {
#     type: left_outer
#     sql_on: ${support_page_support_live_chat.session_id} = ${sessions.session_id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: user_migrations {}
#
# explore: users {}
