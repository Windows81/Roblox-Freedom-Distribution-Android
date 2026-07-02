package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class bbp implements Callable<bbl> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bbi f4771a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bbo f4772b;

    bbp(bbo bboVar, bbi bbiVar) {
        this.f4772b = bboVar;
        this.f4771a = bbiVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final bbl call() throws Exception {
        synchronized (this.f4772b.i) {
            if (this.f4772b.j) {
                return null;
            }
            return this.f4771a.a(this.f4772b.f, this.f4772b.g);
        }
    }
}
