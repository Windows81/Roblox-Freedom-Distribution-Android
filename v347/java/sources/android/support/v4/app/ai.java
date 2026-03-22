package android.support.v4.app;

import android.app.Activity;
import android.arch.lifecycle.d;
import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ai extends Activity implements android.arch.lifecycle.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.support.v4.g.m<Class<? extends Object>, Object> f686a = new android.support.v4.g.m<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private android.arch.lifecycle.h f687b = new android.arch.lifecycle.h(this);

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        android.arch.lifecycle.o.a(this);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        this.f687b.a(d.b.CREATED);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.arch.lifecycle.g
    public android.arch.lifecycle.d getLifecycle() {
        return this.f687b;
    }
}
