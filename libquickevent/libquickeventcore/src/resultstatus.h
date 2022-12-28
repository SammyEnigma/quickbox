#pragma once

#include "quickeventcoreglobal.h"
#include <qf/core/sql/query.h>
#include <qf/core/utils/treetable.h>

namespace quickevent {
namespace core {

class QUICKEVENTCORE_DECL_EXPORT ResultStatus
{
public:
	ResultStatus() = default;
	ResultStatus(qf::core::sql::Query &q);
	ResultStatus(const qf::core::utils::TreeTableRow &ttr);
	// set all variables from query (table runs)
	void fillFromQuery(qf::core::sql::Query &q);
	void fillFromTreeTableRow(const qf::core::utils::TreeTableRow &ttr);

	bool isOk() const;
	int getOGTime(int time) const;

	QString toXmlExportString() const;
	QString toEmmaExportString() const;
	QString toHtmlExportString() const;
	QString toString() const;

	bool idDisqualified() const { return m_disqualified; }
	bool isDisqualifiedByOrganizer() const { return m_disqualifiedByOrganizer; }
	bool isNotCompeting() const { return m_notCompeting; }
	bool isMissingPunch() const { return m_missingPunch; }
	bool isDidNotStart() const { return m_didNotStart; }
	bool isDidNotFinish() const { return m_didNotFinish; }
	bool isOverTime() const { return m_overTime; }

	static QString dbRunsColumnList();
private:
	bool m_disqualified = false;
	bool m_disqualifiedByOrganizer = false;
	bool m_notCompeting = false;
	bool m_missingPunch = false;
	bool m_didNotStart = false;
	bool m_didNotFinish = false;
	bool m_overTime = false;
};

}}
