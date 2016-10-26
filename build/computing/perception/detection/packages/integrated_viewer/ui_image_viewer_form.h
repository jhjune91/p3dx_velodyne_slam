/********************************************************************************
** Form generated from reading UI file 'image_viewer_form.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_IMAGE_VIEWER_FORM_H
#define UI_IMAGE_VIEWER_FORM_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QComboBox>
#include <QtGui/QGridLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QSpacerItem>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_image_viewer_form
{
public:
    QGridLayout *gridLayout;
    QComboBox *rect_topic_combo_box_;
    QLabel *image_topic_label_;
    QLabel *point_topic_label_;
    QLabel *rect_topic_label_;
    QComboBox *image_topic_combo_box_;
    QComboBox *point_topic_combo_box_;
    QSpacerItem *horizontalSpacer;
    QSpacerItem *horizontalSpacer_2;
    QLabel *view_;

    void setupUi(QWidget *image_viewer_form)
    {
        if (image_viewer_form->objectName().isEmpty())
            image_viewer_form->setObjectName(QString::fromUtf8("image_viewer_form"));
        image_viewer_form->resize(646, 527);
        gridLayout = new QGridLayout(image_viewer_form);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        rect_topic_combo_box_ = new QComboBox(image_viewer_form);
        rect_topic_combo_box_->setObjectName(QString::fromUtf8("rect_topic_combo_box_"));

        gridLayout->addWidget(rect_topic_combo_box_, 2, 2, 1, 1);

        image_topic_label_ = new QLabel(image_viewer_form);
        image_topic_label_->setObjectName(QString::fromUtf8("image_topic_label_"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(image_topic_label_->sizePolicy().hasHeightForWidth());
        image_topic_label_->setSizePolicy(sizePolicy);
        QFont font;
        font.setFamily(QString::fromUtf8("Ubuntu"));
        font.setPointSize(14);
        font.setBold(true);
        font.setWeight(75);
        image_topic_label_->setFont(font);

        gridLayout->addWidget(image_topic_label_, 1, 0, 1, 1);

        point_topic_label_ = new QLabel(image_viewer_form);
        point_topic_label_->setObjectName(QString::fromUtf8("point_topic_label_"));
        sizePolicy.setHeightForWidth(point_topic_label_->sizePolicy().hasHeightForWidth());
        point_topic_label_->setSizePolicy(sizePolicy);
        point_topic_label_->setFont(font);

        gridLayout->addWidget(point_topic_label_, 1, 4, 1, 1);

        rect_topic_label_ = new QLabel(image_viewer_form);
        rect_topic_label_->setObjectName(QString::fromUtf8("rect_topic_label_"));
        sizePolicy.setHeightForWidth(rect_topic_label_->sizePolicy().hasHeightForWidth());
        rect_topic_label_->setSizePolicy(sizePolicy);
        rect_topic_label_->setFont(font);

        gridLayout->addWidget(rect_topic_label_, 1, 2, 1, 1);

        image_topic_combo_box_ = new QComboBox(image_viewer_form);
        image_topic_combo_box_->setObjectName(QString::fromUtf8("image_topic_combo_box_"));

        gridLayout->addWidget(image_topic_combo_box_, 2, 0, 1, 1);

        point_topic_combo_box_ = new QComboBox(image_viewer_form);
        point_topic_combo_box_->setObjectName(QString::fromUtf8("point_topic_combo_box_"));

        gridLayout->addWidget(point_topic_combo_box_, 2, 4, 1, 1);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer, 1, 1, 1, 1);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer_2, 1, 3, 1, 1);

        view_ = new QLabel(image_viewer_form);
        view_->setObjectName(QString::fromUtf8("view_"));
        view_->setMinimumSize(QSize(1, 1));
        view_->setAlignment(Qt::AlignCenter);

        gridLayout->addWidget(view_, 4, 0, 1, 5);


        retranslateUi(image_viewer_form);

        QMetaObject::connectSlotsByName(image_viewer_form);
    } // setupUi

    void retranslateUi(QWidget *image_viewer_form)
    {
        image_viewer_form->setWindowTitle(QApplication::translate("image_viewer_form", "Form", 0, QApplication::UnicodeUTF8));
        image_topic_label_->setText(QApplication::translate("image_viewer_form", "Image Topic: ", 0, QApplication::UnicodeUTF8));
        point_topic_label_->setText(QApplication::translate("image_viewer_form", "Point Topic: ", 0, QApplication::UnicodeUTF8));
        rect_topic_label_->setText(QApplication::translate("image_viewer_form", "Object Rect Topic: ", 0, QApplication::UnicodeUTF8));
        view_->setText(QApplication::translate("image_viewer_form", "TextLabel", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class image_viewer_form: public Ui_image_viewer_form {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_IMAGE_VIEWER_FORM_H
