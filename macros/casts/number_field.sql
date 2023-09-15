{%- macro number_field(field, cast_type='integer', case_null=None) -%}
coalesce(
    {{ safe_cast(field, cast_type) }},
    {{ case_null if case_null is not none else 'null' }}
)
{%- endmacro -%}
