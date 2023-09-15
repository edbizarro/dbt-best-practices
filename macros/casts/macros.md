{% docs string_field %}

```sql
{% raw %}

select
    {{ string_field('name') }} as name,
    {{ string_field('url', uppercase=False) }} as url

    from ...

{% endraw %}
```

{% enddocs %}
