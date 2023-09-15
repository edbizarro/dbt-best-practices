{%- macro datetime_field(field, cast_type='DATETIME', case_null='"0001-01-01 00:00:00"', convert_timezone = False) -%}
{% if convert_timezone %}
{% set timezone = var("global.time_zone") %}
{% endif %}

coalesce(
  {% if convert_timezone %}
       DATETIME({{ field }}, '{{ timezone }}'),
  {% else %}
      {{ safe_cast(field, cast_type) }},
  {% endif %}
  {{ case_null }}
)
{%- endmacro -%}
