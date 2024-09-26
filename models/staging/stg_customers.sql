WITH source_data as (
	SELECT
		customer_id,
		first_name,
		last_name,
		email,
		total_spent
	FROM {{ source('mysql','customers')}}
)

SELECT * FROM source_data;