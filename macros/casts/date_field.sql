{%- macro date_field(field, cast_type='DATE', case_null='"0001-01-01"') -%}
coalesce({{ safe_cast(field, cast_type) }}, {{ case_null }})
{%- endmacro -%}
