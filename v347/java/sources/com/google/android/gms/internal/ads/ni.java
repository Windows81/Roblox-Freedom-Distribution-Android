package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public interface ni extends ExecutorService {
    nd<?> a(Runnable runnable);

    <T> nd<T> a(Callable<T> callable);
}
