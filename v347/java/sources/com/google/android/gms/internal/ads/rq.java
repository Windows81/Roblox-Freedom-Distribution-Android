package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class rq extends MutableContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f5511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f5512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f5513c;

    public rq(Context context) {
        super(context);
        setBaseContext(context);
    }

    public final Activity a() {
        return this.f5511a;
    }

    public final Context b() {
        return this.f5513c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f5513c.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        this.f5512b = context.getApplicationContext();
        this.f5511a = context instanceof Activity ? (Activity) context : null;
        this.f5513c = context;
        super.setBaseContext(this.f5512b);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        if (this.f5511a != null) {
            this.f5511a.startActivity(intent);
        } else {
            intent.setFlags(268435456);
            this.f5512b.startActivity(intent);
        }
    }
}
