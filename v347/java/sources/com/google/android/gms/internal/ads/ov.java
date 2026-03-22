package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@TargetApi(14)
public final class ov {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5398b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f5397a = TimeUnit.MILLISECONDS.toNanos(((Long) aoo.f().a(aro.x)).longValue());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5399c = true;

    ov() {
    }

    public final void a() {
        this.f5399c = true;
    }

    public final void a(SurfaceTexture surfaceTexture, ol olVar) {
        if (olVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (this.f5399c || Math.abs(timestamp - this.f5398b) >= this.f5397a) {
            this.f5399c = false;
            this.f5398b = timestamp;
            jm.f5184a.post(new ow(this, olVar));
        }
    }
}
