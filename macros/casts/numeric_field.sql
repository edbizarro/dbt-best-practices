{%- macro numeric_field(field, cast_type='NUMERIC', case_null=None) -%}
{{ number_field (field, cast_type, case_null)}}
{%- endmacro -%}
