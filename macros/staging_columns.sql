{% macro get_order_columns() %}

{% set columns = [
    {"name": "app_id", "datatype": dbt_utils.type_string()},
    {"name": "anon_browser_ip", "datatype": dbt_utils.type_numeric()},
    {"name": "buyer_accepts_marketing", "datatype": "boolean", "alias": "has_buyer_accepted_marketing"},
    {"name": "cancel_reason", "datatype": dbt_utils.type_string()},
    {"name": "cancelled_at", "datatype": dbt_utils.type_timestamp(), "alias": "cancelled_timestamp"},
    {"name": "cart_token", "datatype": dbt_utils.type_string()},
    {"name": "checkout_id", "datatype": dbt_utils.type_string()},
    {"name": "checkout_token", "datatype": dbt_utils.type_string()},
    {"name": "closed_at", "datatype": dbt_utils.type_timestamp(), "alias": "closed_timestamp"},
    {"name": "confirmed", "datatype": "boolean"},
    {"name": "anon_contact_email", "datatype": dbt_utils.type_numeric()},
    {"name": "contact_email_domain", "datatype": dbt_utils.type_string()},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp(), "alias": "created_timestamp"},
    {"name": "currency", "datatype": dbt_utils.type_string()},
    {"name": "customer_locale", "datatype": dbt_utils.type_string()},
    {"name": "device_id", "datatype": dbt_utils.type_string()},
    {"name": "anon_email", "datatype": dbt_utils.type_numeric()},
    {"name": "email_domain", "datatype": dbt_utils.type_string()},
    {"name": "financial_status", "datatype": dbt_utils.type_string()},
    {"name": "fulfillment_status", "datatype": dbt_utils.type_string()},
    {"name": "gateway", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_numeric(), "alias": "order_id"},
    {"name": "landing_site", "datatype": dbt_utils.type_string()},
    {"name": "landing_site_ref", "datatype": dbt_utils.type_string()},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "note", "datatype": dbt_utils.type_string()},
    {"name": "number", "datatype": dbt_utils.type_numeric()},
    {"name": "order_number", "datatype": dbt_utils.type_numeric()},
    {"name": "payment_gateway_names", "datatype": dbt_utils.type_string()},
    {"name": "anon_phone", "datatype": dbt_utils.type_numeric()},
    {"name": "processed_at", "datatype": dbt_utils.type_timestamp(), "alias": "processed_timestamp"},
    {"name": "processing_method", "datatype": dbt_utils.type_string()},
    {"name": "reference", "datatype": dbt_utils.type_string()},
    {"name": "referring_site", "datatype": dbt_utils.type_string()},
    {"name": "source_identifier", "datatype": dbt_utils.type_string()},
    {"name": "source_name", "datatype": dbt_utils.type_string()},
    {"name": "source_url", "datatype": dbt_utils.type_string()},
    {"name": "subtotal_price", "datatype": dbt_utils.type_float()},
    {"name": "tags", "datatype": dbt_utils.type_string()},
    {"name": "taxes_included", "datatype": "boolean", "alias": "has_taxes_included"},
    {"name": "test", "datatype": "boolean", "alias": "is_test_order"},
    {"name": "token", "datatype": dbt_utils.type_string()},
    {"name": "total_discounts", "datatype": dbt_utils.type_float()},
    {"name": "total_line_items_price", "datatype": dbt_utils.type_float()},
    {"name": "total_price", "datatype": dbt_utils.type_float()},
    {"name": "total_price_usd", "datatype": dbt_utils.type_float()},
    {"name": "total_tax", "datatype": dbt_utils.type_float()},
    {"name": "total_weight", "datatype": dbt_utils.type_numeric()},
    {"name": "updated_at", "datatype": dbt_utils.type_timestamp(), "alias": "updated_timestamp"},
    {"name": "user_id", "datatype": dbt_utils.type_numeric()},
    {"name": "customer_id", "datatype": dbt_utils.type_numeric()},
    {"name": "location_id", "datatype": dbt_utils.type_numeric()},
    {"name": "myshopify_domain", "datatype": dbt_utils.type_string()},
    {"name": "shop_id", "datatype": dbt_utils.type_string()},
    {"name": "shop_country_code", "datatype": dbt_utils.type_string()},
    {"name": "umg_report_date", "datatype": "date"},
    {"name": "umg_load_time", "datatype": dbt_utils.type_timestamp()},
    {"name": "processed_at_eastern", "datatype": "date"},
] %}

{{ return(columns) }}

{% endmacro %}

{% macro get_customer_columns() %}

{% set columns = [
    {"name": "id", "datatype": dbt_utils.type_numeric(), "alias": "customer_id"},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp(), "alias": "created_timestamp"},
    {"name": "shop_id", "datatype": dbt_utils.type_string()},
    {"name": "myshopify_domain", "datatype": dbt_utils.type_string()},
    {"name": "anon_name", "datatype": dbt_utils.type_numeric()},
    {"name": "anon_phone", "datatype": dbt_utils.type_numeric()},
    {"name": "anon_email", "datatype": dbt_utils.type_numeric()},
    {"name": "email_domain", "datatype": dbt_utils.type_string()},
    {"name": "verified_email_flag", "datatype": "boolean", "alias": "is_verified_email"},
    {"name": "accepts_marketing", "datatype": "boolean", "alias": "has_accepted_marketing"},
    {"name": "total_spent", "datatype": dbt_utils.type_float()},
    {"name": "orders_count", "datatype": dbt_utils.type_numeric()},
    {"name": "last_order_id", "datatype": dbt_utils.type_string()},
    {"name": "last_order_name", "datatype": dbt_utils.type_string()},
    {"name": "tax_exempt", "datatype": "boolean", "alias": "is_tax_exempt"},
    {"name": "note", "datatype": dbt_utils.type_string()},
    {"name": "tags", "datatype": dbt_utils.type_string()},
    {"name": "multipass_identifier", "datatype": dbt_utils.type_string()},
    {"name": "state", "datatype": dbt_utils.type_string(), "alias": "account_state"},
    {"name": "updated_at", "datatype": dbt_utils.type_timestamp(), "alias": "updated_timestamp"},
    {"name": "umg_load_time", "datatype": dbt_utils.type_timestamp()},
] %}

{{ return(columns) }}

{% endmacro %}

{% macro get_order_line_refund_columns() %}

{% set columns = [
    {"name": "refund_id", "datatype": dbt_utils.type_numeric()},
    {"name": "id", "datatype": dbt_utils.type_numeric(), "alias": "order_line_refund_id"},
    {"name": "quantity", "datatype": dbt_utils.type_float()},
    {"name": "line_item_id", "datatype": dbt_utils.type_numeric(), "alias": "order_line_id"},
    {"name": "shipped_quantity", "datatype": dbt_utils.type_numeric()},
    {"name": "location_id", "datatype": dbt_utils.type_numeric()},
    {"name": "total_tax", "datatype": dbt_utils.type_numeric()},
    {"name": "subtotal", "datatype": dbt_utils.type_numeric()},
    {"name": "restock_type", "datatype": dbt_utils.type_string()},
    {"name": "order_id", "datatype": dbt_utils.type_numeric()},
    {"name": "shop_id", "datatype": dbt_utils.type_string()},
    {"name": "myshopify_domain", "datatype": dbt_utils.type_string()},
    {"name": "umg_report_date", "datatype": "date"},
] %}

{{ return(columns) }}

{% endmacro %}

{% macro get_order_line_columns() %}

{% set columns = [
    {"name": "fulfillable_quantity", "datatype": dbt_utils.type_numeric()},
    {"name": "fulfillment_service", "datatype": dbt_utils.type_string()},
    {"name": "fulfillment_status", "datatype": dbt_utils.type_string()},
    {"name": "gift_card", "datatype": "boolean", "alias": "is_gift_card"},
    {"name": "grams", "datatype": dbt_utils.type_numeric()},
    {"name": "id", "datatype": dbt_utils.type_numeric(), "alias": "order_line_id"},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "pre_tax_price", "datatype": dbt_utils.type_float()},
    {"name": "price", "datatype": dbt_utils.type_float()},
    {"name": "product_exists", "datatype": "boolean"},
    {"name": "quantity", "datatype": dbt_utils.type_numeric()},
    {"name": "requires_shipping", "datatype": "boolean", "alias": "is_requiring_shipping"},
    {"name": "sku", "datatype": dbt_utils.type_string()},
    {"name": "taxable", "datatype": "boolean", "alias": "is_taxable"},
    {"name": "title", "datatype": dbt_utils.type_string()},
    {"name": "total_discount", "datatype": dbt_utils.type_float()},
    {"name": "variant_inventory_management", "datatype": dbt_utils.type_string()},
    {"name": "variant_title", "datatype": dbt_utils.type_string()},
    {"name": "vendor", "datatype": dbt_utils.type_string()},
    {"name": "product_id", "datatype": dbt_utils.type_numeric()},
    {"name": "variant_id", "datatype": dbt_utils.type_numeric()},
    {"name": "order_id", "datatype": dbt_utils.type_numeric()},
    {"name": "billing_address_id", "datatype": dbt_utils.type_numeric()},
    {"name": "myshopify_domain", "datatype": dbt_utils.type_string()},
    {"name": "shop_id", "datatype": dbt_utils.type_string()},
    {"name": "shop_country_code", "datatype": dbt_utils.type_string()},
    {"name": "umg_report_date", "datatype": "date"},
    {"name": "umg_load_time", "datatype": dbt_utils.type_timestamp()},
] %}

{{ return(columns) }}

{% endmacro %}

{% macro get_product_columns() %}

{% set columns = [
    {"name": "body_html", "datatype": dbt_utils.type_string()},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp(), "alias": "created_timestamp"},
    {"name": "handle", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_numeric(), "alias": "product_id"},
    {"name": "product_type", "datatype": dbt_utils.type_string()},
    {"name": "published_at", "datatype": dbt_utils.type_timestamp(), "alias": "published_timestamp"},
    {"name": "published_scope", "datatype": dbt_utils.type_string()},
    {"name": "tags", "datatype": dbt_utils.type_string()},
    {"name": "template_suffix", "datatype": dbt_utils.type_string()},
    {"name": "title", "datatype": dbt_utils.type_string()},
    {"name": "updated_at", "datatype": dbt_utils.type_timestamp(), "alias": "updated_timestamp"},
    {"name": "vendor", "datatype": dbt_utils.type_string()},
    {"name": "option1", "datatype": dbt_utils.type_string()},
    {"name": "option2", "datatype": dbt_utils.type_string()},
    {"name": "option3", "datatype": dbt_utils.type_string()},
    {"name": "myshopify_domain", "datatype": dbt_utils.type_string()},
    {"name": "shop_id", "datatype": dbt_utils.type_string()},
    {"name": "shop_country_code", "datatype": dbt_utils.type_string()},
    {"name": "product_type_main_category", "datatype": dbt_utils.type_string()},
    {"name": "product_type_sub_category", "datatype": dbt_utils.type_string()},
    {"name": "product_type_id", "datatype": dbt_utils.type_string()},
    {"name": "parent_product_type_id", "datatype": dbt_utils.type_string()},
    {"name": "umg_report_date", "datatype": "date"},
    {"name": "umg_load_time", "datatype": dbt_utils.type_timestamp()},
    {"name": "umg_updated_at", "datatype": "date"},
] %}

{{ return(columns) }}

{% endmacro %}

{% macro get_product_variant_columns() %}

{% set columns = [
    {"name": "barcode", "datatype": dbt_utils.type_string()},
    {"name": "compare_at_price", "datatype": dbt_utils.type_float()},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp(), "alias": "created_timestamp"},
    {"name": "fulfillment_service", "datatype": dbt_utils.type_string()},
    {"name": "grams", "datatype": dbt_utils.type_float()},
    {"name": "id", "datatype": dbt_utils.type_numeric(), "alias": "variant_id"},
    {"name": "inventory_management", "datatype": dbt_utils.type_string()},
    {"name": "inventory_policy", "datatype": dbt_utils.type_string()},
    {"name": "inventory_quantity", "datatype": dbt_utils.type_numeric()},
    {"name": "old_inventory_quantity", "datatype": dbt_utils.type_numeric()},
    {"name": "option_1", "datatype": dbt_utils.type_string()},
    {"name": "option_2", "datatype": dbt_utils.type_string()},
    {"name": "option_3", "datatype": dbt_utils.type_string()},
    {"name": "position", "datatype": dbt_utils.type_numeric()},
    {"name": "price", "datatype": dbt_utils.type_float()},
    {"name": "requires_shipping", "datatype": "boolean", "alias": "is_requiring_shipping"},
    {"name": "sku", "datatype": dbt_utils.type_string()},
    {"name": "tax_code", "datatype": dbt_utils.type_string()},
    {"name": "taxable", "datatype": "boolean", "alias": "is_taxable"},
    {"name": "title", "datatype": dbt_utils.type_string()},
    {"name": "updated_at", "datatype": dbt_utils.type_timestamp(), "alias": "updated_timestamp"},
    {"name": "weight", "datatype": dbt_utils.type_float()},
    {"name": "weight_unit", "datatype": dbt_utils.type_string()},
    {"name": "image_id", "datatype": dbt_utils.type_numeric()},
    {"name": "inventory_item_id", "datatype": dbt_utils.type_numeric()},
    {"name": "product_id", "datatype": dbt_utils.type_numeric()},
    {"name": "shop_id", "datatype": dbt_utils.type_string()},
    {"name": "myshopify_domain", "datatype": dbt_utils.type_string()},
    {"name": "shop_country_code", "datatype": dbt_utils.type_string()},
    {"name": "umg_report_date", "datatype": "date"},
    {"name": "umg_load_time", "datatype": dbt_utils.type_timestamp()},
    {"name": "umg_updated_at", "datatype": "date"},
] %}

{{ return(columns) }}

{% endmacro %}

{% macro get_transaction_columns() %}

{% set columns = [
    {"name": "amount", "datatype": dbt_utils.type_numeric()},
    {"name": "authorization", "datatype": dbt_utils.type_string()},
    {"name": "created_at", "datatype": dbt_utils.type_timestamp(), "alias": "created_timestamp"},
    {"name": "currency", "datatype": dbt_utils.type_string()},
    {"name": "device_id", "datatype": dbt_utils.type_numeric()},
    {"name": "error_code", "datatype": dbt_utils.type_string()},
    {"name": "gateway", "datatype": dbt_utils.type_string()},
    {"name": "id", "datatype": dbt_utils.type_numeric(), "alias": "transaction_id"},
    {"name": "kind", "datatype": dbt_utils.type_string()},
    {"name": "message", "datatype": dbt_utils.type_string()},
    {"name": "parent_id", "datatype": dbt_utils.type_numeric()},
    {"name": "source_name", "datatype": dbt_utils.type_string()},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "test", "datatype": "boolean"},
    {"name": "user_id", "datatype": dbt_utils.type_numeric()},
    {"name": "order_id", "datatype": dbt_utils.type_numeric()},
    {"name": "myshopify_domain", "datatype": dbt_utils.type_string()},
    {"name": "shop_id", "datatype": dbt_utils.type_string()},
    {"name": "shop_country_code", "datatype": dbt_utils.type_string()},
    {"name": "umg_report_date", "datatype": "date"},
    {"name": "umg_load_time", "datatype": dbt_utils.type_timestamp()},
] %}

{% if target.type in ('redshift','postgres') %}
 {{ columns.append({"name": "authorization", "datatype": dbt_utils.type_string(), "quote": True, "alias": "authorization"}) }}
{% else %}
 {"name": "authorization", "datatype": dbt_utils.type_string()}
{% endif %}

{{ return(columns) }}

{% endmacro %}

{% macro get_refund_columns() %}

{% set columns = [
    {"name": "created_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "processed_at", "datatype": dbt_utils.type_timestamp()},
    {"name": "id", "datatype": dbt_utils.type_numeric(), "alias": "refund_id"},
    {"name": "note", "datatype": dbt_utils.type_string()},
    {"name": "restock", "datatype": "boolean"},
    {"name": "user_id", "datatype": dbt_utils.type_numeric()},
    {"name": "order_id", "datatype": dbt_utils.type_numeric()},
    {"name": "shop_id", "datatype": dbt_utils.type_string()},
    {"name": "myshopify_domain", "datatype": dbt_utils.type_string()},
    {"name": "umg_report_date", "datatype": "date"},
] %}

{{ return(columns) }}

{% endmacro %}

{% macro get_order_adjustment_columns() %}

{% set columns = [
    {"name": "id", "datatype":  dbt_utils.type_numeric(), "alias": "order_adjustment_id"},
    {"name": "order_id", "datatype":  dbt_utils.type_numeric()},
    {"name": "refund_id", "datatype":  dbt_utils.type_numeric()},
    {"name": "amount", "datatype": dbt_utils.type_float()},
    {"name": "tax_amount", "datatype": dbt_utils.type_float()},
    {"name": "kind", "datatype": dbt_utils.type_string()},
    {"name": "reason", "datatype": dbt_utils.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
