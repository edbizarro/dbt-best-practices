{%- macro numeric_field(field, cast_type=dbt.type_numeric(), case_null=None) -%}
{{ number_field (field, cast_type, case_null)}}
{%- endmacro -%}
