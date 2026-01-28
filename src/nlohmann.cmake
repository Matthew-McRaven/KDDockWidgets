# This file is part of KDDockWidgets.
#
# SPDX-FileCopyrightText: 2023 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
# Author: Sergio Martins <sergio.martins@kdab.com>
#
# SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only
#
# Contact KDAB at <info@kdab.com> for commercial licensing options.
#

find_package(nlohmann_json QUIET)

# Function to link to nlohmann
function(link_to_nlohman target)
    target_link_libraries(${target} PRIVATE nlohmann_json::nlohmann_json)
endfunction()
