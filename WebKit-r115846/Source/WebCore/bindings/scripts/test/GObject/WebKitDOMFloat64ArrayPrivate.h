/*
    This file is part of the WebKit open source project.
    This file has been generated by generate-bindings.pl. DO NOT MODIFY!

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public
    License as published by the Free Software Foundation; either
    version 2 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Library General Public License for more details.

    You should have received a copy of the GNU Library General Public License
    along with this library; see the file COPYING.LIB.  If not, write to
    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
    Boston, MA 02110-1301, USA.
*/

#ifndef WebKitDOMFloat64ArrayPrivate_h
#define WebKitDOMFloat64ArrayPrivate_h

#include "Float64Array.h"
#include <glib-object.h>
#include <webkit/WebKitDOMArrayBufferView.h>

namespace WebKit {
WebKitDOMFloat64Array* wrapFloat64Array(WebCore::Float64Array*);
WebCore::Float64Array* core(WebKitDOMFloat64Array* request);
WebKitDOMFloat64Array* kit(WebCore::Float64Array* node);
} // namespace WebKit

#endif /* WebKitDOMFloat64ArrayPrivate_h */