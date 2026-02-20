WITH demographics AS (
    SELECT * FROM {{ source('COVID19_Epidemiological_Data', 'DEMOGRAPHICS')  }}
), 

country_data AS (
    SELECT * FROM {{ ref('country_code') }}
    ),
final AS (
SELECT
    a.ISO3166_1,
    b.name
FROM demographics a
JOIN country_data b
    ON a.ISO3166_1 = b.code
    )
SELECT * FROM final