/*
  This file is part of KDDockWidgets.

  SPDX-FileCopyrightText: 2019 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
  Author: Sérgio Martins <sergio.martins@kdab.com>

  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only

  Contact KDAB at <info@kdab.com> for commercial licensing options.
*/

import QtQuick

Rectangle {
    id: root
    color: Qt.rgba(palette.highlight.r, palette.highlight.g, palette.highlight.b, 0.33)

    radius: 1
    border {
        color: palette.highlight
        width: 1
    }

    anchors.fill: parent
}
