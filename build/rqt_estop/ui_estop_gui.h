/********************************************************************************
** Form generated from reading UI file 'estop_gui.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ESTOP_GUI_H
#define UI_ESTOP_GUI_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_EstopWidget
{
public:
    QPushButton *estop_button;
    QLabel *estop_title_text;
    QWidget *layoutWidget;
    QHBoxLayout *horizontalLayout;
    QLabel *status_title_text;
    QLabel *status_text;

    void setupUi(QWidget *EstopWidget)
    {
        if (EstopWidget->objectName().isEmpty())
            EstopWidget->setObjectName(QString::fromUtf8("EstopWidget"));
        EstopWidget->resize(284, 218);
        estop_button = new QPushButton(EstopWidget);
        estop_button->setObjectName(QString::fromUtf8("estop_button"));
        estop_button->setGeometry(QRect(90, 80, 99, 91));
        estop_button->setStyleSheet(QString::fromUtf8("background-color: rgb(255,0,0);\n"
"border: none;\n"
"color: white;\n"
"font: 20pt \"Ubuntu\";"));
        estop_button->setCheckable(true);
        estop_title_text = new QLabel(EstopWidget);
        estop_title_text->setObjectName(QString::fromUtf8("estop_title_text"));
        estop_title_text->setGeometry(QRect(30, 10, 231, 51));
        layoutWidget = new QWidget(EstopWidget);
        layoutWidget->setObjectName(QString::fromUtf8("layoutWidget"));
        layoutWidget->setGeometry(QRect(40, 190, 211, 19));
        horizontalLayout = new QHBoxLayout(layoutWidget);
        horizontalLayout->setSpacing(6);
        horizontalLayout->setContentsMargins(11, 11, 11, 11);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        status_title_text = new QLabel(layoutWidget);
        status_title_text->setObjectName(QString::fromUtf8("status_title_text"));

        horizontalLayout->addWidget(status_title_text);

        status_text = new QLabel(layoutWidget);
        status_text->setObjectName(QString::fromUtf8("status_text"));

        horizontalLayout->addWidget(status_text);


        retranslateUi(EstopWidget);

        QMetaObject::connectSlotsByName(EstopWidget);
    } // setupUi

    void retranslateUi(QWidget *EstopWidget)
    {
        EstopWidget->setWindowTitle(QApplication::translate("EstopWidget", "estop_gui", 0, QApplication::UnicodeUTF8));
        estop_button->setText(QApplication::translate("EstopWidget", "STOP", 0, QApplication::UnicodeUTF8));
        estop_title_text->setText(QApplication::translate("EstopWidget", "<html><head/><body><p><span style=\" font-size:22pt; font-weight:600; color:#d40000;\">Emergency Stop</span></p></body></html>", 0, QApplication::UnicodeUTF8));
        status_title_text->setText(QApplication::translate("EstopWidget", "Current status:", 0, QApplication::UnicodeUTF8));
        status_text->setText(QApplication::translate("EstopWidget", "Running...", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class EstopWidget: public Ui_EstopWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ESTOP_GUI_H
