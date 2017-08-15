SELECT DISTINCT
	b.id,
	b. STATUS,
	e.id AS artifactId,
	e. NAME,
	c.id AS artifactVersionId,
	c.artifact_version,
	e.type AS artifactType
FROM
	node_instance a,
	node_artifact_instance b,
	artifact_version c,
	artifact_file d,
	artifact e
WHERE
	a.id = b.node_instance_id
AND b.artifact_version_id = c.id
AND c.artifact_id = e.id
AND b.artifact_version_id = d.artifact_version_id
AND b.enabled_flag = 'Y'
AND e.enabled_flag = 'Y'
AND a.id = 1266