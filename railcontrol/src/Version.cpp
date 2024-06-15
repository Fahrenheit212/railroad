/*
RailControl - Model Railway Control Software

Copyright (c) 2017-2024 by Teddy / Dominik Mahrer - www.railcontrol.org

RailControl is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 3, or (at your option) any
later version.

RailControl is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with RailControl; see the file LICENCE. If not see
<http://www.gnu.org/licenses/>.
*/

#include "Version.h"

const std::string& GetVersionInfoGitHash()
{
	static const std::string gitHash = "54b1117d8b41ece892d5d2fdb9182bb1c7ff02fa";
	return gitHash;
}

time_t GetVersionInfoGitTimestamp()
{
	return 1718391189;
}

unsigned int GetVersionInfoGitDirty()
{
	return 2;
}

time_t GetVersionInfoCompileTimestamp()
{
	return 1718470477;
}

const std::string& GetVersionInfoRailControlVersion()
{
	static const std::string railControlVersion = "23";
	return railControlVersion;
}

