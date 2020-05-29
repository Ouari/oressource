/*Modification de la table vendus*/
ALTER TABLE `vendus` ADD `masse` DECIMAL(11,3) NOT NULL AFTER `lot`;
/*Reprise des données*/
UPDATE `vendus` AS v
JOIN pesees_vendus AS p ON p.id=v.id
SET v.masse = p.masse;
/*Suppression de la table pesees_vendus*/
DROP TABLE IF EXISTS `pesees_vendus`;
