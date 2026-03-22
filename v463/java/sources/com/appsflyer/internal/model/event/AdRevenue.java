package com.appsflyer.internal.model.event;

import com.appsflyer.AFEvent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AdRevenue extends AFEvent {
    public AdRevenue() {
        super(null, Boolean.FALSE, null);
    }

    @Override // com.appsflyer.AFEvent
    public AFEvent urlString(String str) {
        return super.urlString(addChannel(str));
    }
}
