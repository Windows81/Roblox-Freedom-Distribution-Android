package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class ke {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5198a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f5199b = 1.0f;

    public static float a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume == 0) {
            return 0.0f;
        }
        return streamVolume / streamMaxVolume;
    }

    private final synchronized boolean c() {
        return this.f5199b >= 0.0f;
    }

    public final synchronized float a() {
        return c() ? this.f5199b : 1.0f;
    }

    public final synchronized void a(float f) {
        this.f5199b = f;
    }

    public final synchronized void a(boolean z) {
        this.f5198a = z;
    }

    public final synchronized boolean b() {
        return this.f5198a;
    }
}
