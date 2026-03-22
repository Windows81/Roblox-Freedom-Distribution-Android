package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class adv extends RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<String> f3849a;

    public adv(ack ackVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.f3849a = null;
    }

    public final abj a() {
        return new abj(getMessage());
    }
}
