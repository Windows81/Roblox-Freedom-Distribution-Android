package com.google.android.gms.internal.ads;

import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
final class oy implements Runnable {
    oy(ox oxVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
