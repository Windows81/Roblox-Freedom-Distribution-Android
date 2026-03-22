package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@TargetApi(14)
public abstract class om extends TextureView implements ph {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final ov f5382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final pf f5383b;

    public om(Context context) {
        super(context);
        this.f5382a = new ov();
        this.f5383b = new pf(context, this);
    }

    public abstract String a();

    public abstract void a(float f, float f2);

    public abstract void a(int i);

    public abstract void a(ol olVar);

    public abstract void b();

    public abstract void c();

    public abstract void d();

    public abstract void e();

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void setVideoPath(String str);
}
