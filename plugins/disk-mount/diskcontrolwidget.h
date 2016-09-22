#ifndef DISKCONTROLWIDGET_H
#define DISKCONTROLWIDGET_H

#include "dbus/dbusdiskmount.h"

#include <QScrollArea>
#include <QVBoxLayout>

class DiskControlWidget : public QScrollArea
{
    Q_OBJECT

public:
    explicit DiskControlWidget(QWidget *parent = 0);

    void unmountAll();

signals:
    void diskCountChanged(const int count) const;

private slots:
    void diskListChanged();
    void unmountDisk(const QString &diskId) const;
    void unmountFinished(const QString &uuid, const QString &info);

private:
    QVBoxLayout *m_centeralLayout;
    QWidget *m_centeralWidget;
    DBusDiskMount *m_diskInter;

    DiskInfoList m_diskInfoList;
};

#endif // DISKCONTROLWIDGET_H
