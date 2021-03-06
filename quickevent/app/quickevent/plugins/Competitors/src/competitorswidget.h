#ifndef COMPETITORSWIDGET_H
#define COMPETITORSWIDGET_H

#include <QFrame>

#include <quickevent/gui/partwidget.h>

class QCheckBox;

namespace Ui {
class CompetitorsWidget;
}
namespace qf {
namespace core {
namespace model {
class SqlTableModel;
}
}
namespace qmlwidgets {
class ForeignKeyComboBox;
}
}

namespace Competitors { class ThisPartWidget; }

class CompetitorsWidget : public QFrame
{
	Q_OBJECT
private:
	typedef QFrame Super;
public:
	explicit CompetitorsWidget(QWidget *parent = nullptr);
	~CompetitorsWidget() Q_DECL_OVERRIDE;

	void settleDownInPartWidget(quickevent::gui::PartWidget *part_widget);
private:
	Q_SLOT void lazyInit();
	Q_SLOT void reset();
	Q_SLOT void reload();

	void editCompetitor(const QVariant &id, int mode) {editCompetitor_helper(id, mode, 0);}
	void editCompetitors(int mode);

	void editCompetitor_helper(const QVariant &id, int mode, int siid);
	Q_SLOT void editCompetitorOnPunch(int siid);

	void onCustomContextMenuRequest(const QPoint &pos);

	void report_competitorsStatistics();
private:
	bool m_editCompetitorLock = false;
	Ui::CompetitorsWidget *ui;
	qf::core::model::SqlTableModel *m_competitorsModel;
	qf::qmlwidgets::ForeignKeyComboBox *m_cbxClasses = nullptr;
};

#endif // COMPETITORSWIDGET_H
