package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes.dex */
final class hm implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Bitmap f5087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ hj f5088b;

    hm(hj hjVar, Bitmap bitmap) {
        this.f5088b = hjVar;
        this.f5087a = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f5087a.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
        synchronized (this.f5088b.l) {
            this.f5088b.f5083c.g = new afm();
            this.f5088b.f5083c.g.f3924c = byteArrayOutputStream.toByteArray();
            this.f5088b.f5083c.g.f3923b = "image/png";
            this.f5088b.f5083c.g.f3922a = 1;
        }
    }
}
