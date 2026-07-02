package com.google.android.gms.internal.ads;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
final class ajl extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aji f4082a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ajl(aji ajiVar, Handler handler) {
        super(handler);
        this.f4082a = ajiVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        this.f4082a.a();
    }
}
