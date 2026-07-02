package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;

/* JADX INFO: loaded from: classes.dex */
final class ale implements ValueCallback<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ald f4161a;

    ale(ald aldVar) {
        this.f4161a = aldVar;
    }

    @Override // android.webkit.ValueCallback
    public final /* synthetic */ void onReceiveValue(String str) {
        this.f4161a.f4160d.a(this.f4161a.f4157a, this.f4161a.f4158b, str, this.f4161a.f4159c);
    }
}
