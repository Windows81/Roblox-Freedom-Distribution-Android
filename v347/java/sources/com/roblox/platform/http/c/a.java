package com.roblox.platform.http.c;

import b.ac;
import com.roblox.platform.http.postbody.SessionReportPostBody;
import d.b.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface a {
    @d.b.f(a = "notifications/account")
    d.b<ac> a();

    @o(a = "game/sessions/report")
    d.b<ac> a(@d.b.a SessionReportPostBody sessionReportPostBody);
}
