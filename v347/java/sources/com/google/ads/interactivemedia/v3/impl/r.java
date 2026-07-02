package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.impl.ab;
import com.google.ads.interactivemedia.v3.impl.w;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public class r implements ab.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SortedSet<Float> f2890a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private x f2891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2892c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f2893d = 0.0f;

    public r(x xVar, SortedSet<Float> sortedSet, String str) {
        this.f2891b = xVar;
        this.f2892c = str;
        this.f2890a = sortedSet;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.ab.b
    public void a(VideoProgressUpdate videoProgressUpdate) {
        if (videoProgressUpdate != null && videoProgressUpdate.getDuration() >= 0.0f) {
            boolean z = !a(videoProgressUpdate.getCurrentTime()).isEmpty();
            this.f2893d = videoProgressUpdate.getCurrentTime();
            if (z) {
                this.f2891b.b(new w(w.b.contentTimeUpdate, w.c.contentTimeUpdate, this.f2892c, videoProgressUpdate));
            }
        }
    }

    private SortedSet<Float> a(float f) {
        return this.f2893d < f ? this.f2890a.subSet(Float.valueOf(this.f2893d), Float.valueOf(f)) : this.f2890a.subSet(Float.valueOf(f), Float.valueOf(this.f2893d));
    }
}
