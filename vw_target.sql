CREATE VIEW view_target_summary AS
SELECT 
    target.id AS id,
    target.sasaran_id AS sasaran_id,
    COALESCE(sasaran.sasaran, target.sasaran_id) AS sasaran,
    target.kinerja_id AS kinerja_id,
    COALESCE(kinerja.kinerja, target.kinerja_id) AS kinerja,
    target.tahunan AS tahunan,
    target.I AS I,
    target.II AS II,
    target.III AS III,
    target.IV AS IV,
    target.created_at AS created_at,
    target.updated_at AS updated_at
FROM 
    targets target
LEFT JOIN 
    sasarans sasaran ON target.sasaran_id = sasaran.id
LEFT JOIN 
    kinerjas kinerja ON target.kinerja_id = kinerja.id;
