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

#include "Storage/StorageHandler.h"
#include "Storage/TransactionGuard.h"

namespace Storage
{
	TransactionGuard::TransactionGuard(StorageHandler* db)
	:	db(db)
	{
		if (!db)
		{
			otherTransactionRunning = true;
			return;
		}
		otherTransactionRunning = db->IsTransactionRunning();
		if (otherTransactionRunning)
		{
			return;
		}
		db->StartTransaction();
	}

	TransactionGuard::~TransactionGuard()
	{
		if (otherTransactionRunning)
		{
			return;
		}
		db->CommitTransaction();
	}
} // namespace Storage

