with pop as(
    SELECT * FROM {{source('COVID19_Epidemiological_Data', 'DEMOGRAPHICS')}}
),

final as (
    SELECT * FROM pop
)

SELECT * FROM final