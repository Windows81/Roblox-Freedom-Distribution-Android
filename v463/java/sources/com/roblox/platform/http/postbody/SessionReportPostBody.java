package com.roblox.platform.http.postbody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SessionReportPostBody implements PostBody {
    public final String eventType;
    public final long placeId;

    public SessionReportPostBody(String str, long j) {
        this.eventType = str;
        this.placeId = j;
    }
}
