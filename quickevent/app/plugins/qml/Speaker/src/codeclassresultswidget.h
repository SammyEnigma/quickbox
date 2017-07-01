#ifndef CODECLASSRESULTSWIDGET_H
#define CODECLASSRESULTSWIDGET_H

#include <QWidget>

class QJsonObject;

namespace quickevent {
namespace og { class SqlTableModel; }
namespace si { class PunchRecord; }
}

namespace Ui {
class CodeClassResultsWidget;
}

class CodeClassResultsWidget : public QWidget
{
	Q_OBJECT
private:
	using Super = QWidget;
public:
	explicit CodeClassResultsWidget(QWidget *parent = 0);
	~CodeClassResultsWidget() Q_DECL_OVERRIDE;

	void reloadDeferred();
	void reload();
	void onPunchReceived(const quickevent::si::PunchRecord &punch);

	void reset(int class_id, int code);
	void loadSetup(const QJsonObject &jso);
	QJsonObject saveSetup();
protected:
	//void dropEvent(QDropEvent *event) Q_DECL_OVERRIDE;
private:
	Ui::CodeClassResultsWidget *ui;
	quickevent::og::SqlTableModel *m_tableModel = nullptr;
	QTimer *m_reloadDeferredTimer = nullptr;
};

#endif // CODECLASSRESULTSWIDGET_H
