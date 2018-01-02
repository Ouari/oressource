-- Oressource
-- Copyright (C) 2014-2017  Martin Vert and Oressource devellopers

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.

-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

UPDATE pesees_vendus set id = id_vendus;

ALTER Table pesees_vendus ADD CONSTRAINT FK_pesees_vendus_vendus
foreign key (id) references vendus(id);

ALTER Table pesees_vendus DROP COLUMN id_vendus;