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

#pragma once

#include <string>

#include "Server/Web/HtmlTag.h"
#include "Server/Web/HtmlTagLabel.h"
#include "Server/Web/HtmlTagSelectOrientation.h"

namespace Server { namespace Web
{
	class HtmlTagSelectOrientationWithLabel : public HtmlTag
	{
		public:
			HtmlTagSelectOrientationWithLabel(const std::string& name, const Languages::TextSelector label, const Orientation defaultValue = OrientationRight)
			:	HtmlTag()
			{
				AddChildTag(HtmlTagLabel(label, "s_" + name));
				AddChildTag(HtmlTagSelectOrientation(name, defaultValue));
			}

			virtual ~HtmlTagSelectOrientationWithLabel() {}

			virtual inline HtmlTag AddAttribute(const std::string& name, const std::string& value) override
			{
				childTags[1].AddAttribute(name, value);
				return *this;
			}

			virtual inline bool IsAttributeSet(const std::string& name) override
			{
				return childTags[1].IsAttributeSet(name);
			}

			virtual inline HtmlTag AddClass(const std::string& _class) override
			{
				childTags[1].AddClass(_class);
				return *this;
			}
	};
}} // namespace Server::Web

