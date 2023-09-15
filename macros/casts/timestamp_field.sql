{%- macro timestamp_field(field, cast_type='TIMESTAMP', case_null='"0001-01-01 00:00:00"', convert_timezone = False) -%}
{% if convert_timezone %}
{% set timezone = var("global.time_zone") %}
{% endif %}

coalesce(
  {% if convert_timezone %}
      TIMESTAMP(DATETIME({{ safe_cast(field, cast_type) }} , '{{ timezone }}')),
  {% else %}
      {{ safe_cast(field, cast_type) }},
  {% endif %}
  {{ case_null }}
)
{%- endmacro -%}
