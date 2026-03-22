package com.appsflyer.internal.model.event;

import android.content.Context;
import com.appsflyer.AFEvent;
import com.appsflyer.AFHelper;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class BackgroundEvent extends AFEvent {

    /* JADX INFO: renamed from: ɪ, reason: contains not printable characters */
    private final boolean f276;

    /* JADX INFO: renamed from: ɾ, reason: contains not printable characters */
    private final boolean f277;

    /* JADX INFO: renamed from: ӏ, reason: contains not printable characters */
    private boolean f278;

    BackgroundEvent() {
        this(null, null, null, null, null);
    }

    BackgroundEvent(String str, Boolean bool, Boolean bool2, Boolean bool3, Context context) {
        super(str, Boolean.valueOf(bool3 != null ? bool3.booleanValue() : false), context);
        this.f276 = bool != null ? bool.booleanValue() : true;
        this.f277 = bool2 != null ? bool2.booleanValue() : true;
    }

    public BackgroundEvent trackingStopped(boolean z) {
        this.f278 = z;
        return this;
    }

    public boolean trackingStopped() {
        return this.f278;
    }

    public boolean readResponse() {
        return this.f276;
    }

    public boolean proxyMode() {
        return this.f277;
    }

    public String body() {
        return AFHelper.convertToJsonObject(params()).toString();
    }
}
