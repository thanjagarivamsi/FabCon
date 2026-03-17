CREATE EXTERNAL DATA SOURCE [Cold_Lake]
    WITH (
    LOCATION = N'abfss://8283a851-53d0-43b2-91a4-7ec71b482269@onelake.dfs.fabric.microsoft.com/4f8236cb-5be0-497f-a9ad-0cd2402e29d6/Files/',
    PUSHDOWN = ON
    );


GO

