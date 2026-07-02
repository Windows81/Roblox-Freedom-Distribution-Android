package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes.dex */
final class awp extends no<ParcelFileDescriptor> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ awo f4557a;

    awp(awo awoVar) {
        this.f4557a = awoVar;
    }

    @Override // com.google.android.gms.internal.ads.no, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        this.f4557a.a();
        return super.cancel(z);
    }
}
