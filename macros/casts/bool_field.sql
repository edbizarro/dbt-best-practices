{%- macro bool_field(field, cast_type=dbt.type_boolean(), case_null=False) -%}
coalesce(
    {{ safe_cast(field, cast_type) }},
    {{ safe_cast(number_field(field), cast_type) }},
    {{ case_null }}
    )
{%- endmacro -%}
