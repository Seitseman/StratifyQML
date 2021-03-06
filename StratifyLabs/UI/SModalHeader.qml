/*
Copyright 2016 Tyler Gilbert

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

import QtQuick 2.6
import "."
import "Fa-4.5.0.js" as Fa

SItem {
    property alias text: text.text;
    property alias style: text.style;
    implicitHeight: contents.height;
    implicitWidth: parent.width;

    signal closeClicked();

    SColumn {
        id: contents;
        SRow {
            SText { id: text; style: "left"; }
            SButton {
                id: close;
                style: "right close";
                icon: Fa.Icon.times;
                onClicked: { closeClicked(); }
            }
        }
        SHline{}
    }
}
