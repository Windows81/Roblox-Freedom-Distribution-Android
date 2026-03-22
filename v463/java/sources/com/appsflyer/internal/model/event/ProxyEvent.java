package com.appsflyer.internal.model.event;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ProxyEvent extends BackgroundEvent {

    /* JADX INFO: renamed from: ɾ, reason: contains not printable characters */
    private String f279;

    public ProxyEvent() {
        super(null, null, Boolean.FALSE, null, null);
    }

    public BackgroundEvent body(String str) {
        this.f279 = str;
        return this;
    }

    @Override // com.appsflyer.internal.model.event.BackgroundEvent
    public String body() {
        return this.f279;
    }
}
