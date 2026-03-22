package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<AdErrorEvent.AdErrorListener> f2895a = new ArrayList(1);

    public void a(AdErrorEvent.AdErrorListener adErrorListener) {
        this.f2895a.add(adErrorListener);
    }

    public void b(AdErrorEvent.AdErrorListener adErrorListener) {
        this.f2895a.remove(adErrorListener);
    }

    public void a(AdErrorEvent adErrorEvent) {
        Iterator<AdErrorEvent.AdErrorListener> it = this.f2895a.iterator();
        while (it.hasNext()) {
            it.next().onAdError(adErrorEvent);
        }
    }

    public String toString() {
        String strValueOf = String.valueOf(this.f2895a);
        return new StringBuilder(String.valueOf(strValueOf).length() + 38).append("ErrorListenerSupport [errorListeners=").append(strValueOf).append("]").toString();
    }
}
