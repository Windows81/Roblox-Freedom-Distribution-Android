package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@TargetApi(14)
public final class pf implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AudioManager f5423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ph f5424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5425c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5426d;
    private boolean e;
    private float f = 1.0f;

    public pf(Context context, ph phVar) {
        this.f5423a = (AudioManager) context.getSystemService("audio");
        this.f5424b = phVar;
    }

    private final void d() {
        boolean z = this.f5426d && !this.e && this.f > 0.0f;
        if (z && !this.f5425c) {
            if (this.f5423a != null && !this.f5425c) {
                this.f5425c = this.f5423a.requestAudioFocus(this, 3, 2) == 1;
            }
            this.f5424b.e();
            return;
        }
        if (z || !this.f5425c) {
            return;
        }
        if (this.f5423a != null && this.f5425c) {
            this.f5425c = this.f5423a.abandonAudioFocus(this) == 0;
        }
        this.f5424b.e();
    }

    public final float a() {
        float f = this.e ? 0.0f : this.f;
        if (this.f5425c) {
            return f;
        }
        return 0.0f;
    }

    public final void a(float f) {
        this.f = f;
        d();
    }

    public final void a(boolean z) {
        this.e = z;
        d();
    }

    public final void b() {
        this.f5426d = true;
        d();
    }

    public final void c() {
        this.f5426d = false;
        d();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f5425c = i > 0;
        this.f5424b.e();
    }
}
