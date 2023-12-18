CREATE VIEW view_kinerja AS
SELECT 
    kinerja.id AS id,
    kinerja.sasaran_id AS sasaran_id,
    COALESCE(sasaran.sasaran, kinerja.sasaran_id) AS sasaran,
    kinerja.kinerja AS kinerja, 
    kinerja.created_at AS created_at,
    kinerja.updated_at AS `updated-at`
FROM 
    kinerjas kinerja
LEFT JOIN 
    sasarans sasaran ON kinerja.sasaran_id = sasaran.id;
