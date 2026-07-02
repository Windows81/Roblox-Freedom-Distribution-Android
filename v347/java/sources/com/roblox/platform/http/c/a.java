package com.roblox.platform.http.c;

import b.ac;
import com.roblox.platform.http.postbody.SessionReportPostBody;
import d.b.o;

/* JADX INFO: loaded from: classes.dex */
public interface a {
    @d.b.f(a = "notifications/account")
    d.b<ac> a();

    @o(a = "game/sessions/report")
    d.b<ac> a(@d.b.a SessionReportPostBody sessionReportPostBody);
}
