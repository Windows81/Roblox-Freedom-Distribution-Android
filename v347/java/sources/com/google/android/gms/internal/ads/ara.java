package com.google.android.gms.internal.ads;

import android.os.Environment;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class ara implements Callable<Boolean> {
    ara() {
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Boolean call() throws Exception {
        return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
    }
}
