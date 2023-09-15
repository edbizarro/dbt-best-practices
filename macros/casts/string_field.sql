{%- macro string_field(field, cast_type='text', case_null='(N/A)', uppercase=True) -%}

{% set null_value = var('global.value_not_set') %}
{% if uppercase %}
coalesce(
    upper(nullif(nullif(trim({{ safe_cast(field, cast_type) }}), '' ), 'NULL')),
    '{{ case_null }}'
)

{% else %}
coalesce(
    nullif(nullif(trim({{ safe_cast(field, cast_type) }}), '' ), 'NULL'),
    '{{ case_null }}'
)
{% endif %}

{%- endmacro -%}
