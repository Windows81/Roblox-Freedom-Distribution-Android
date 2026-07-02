package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class aih implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ahm f4042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zn f4043b;

    public aih(ahm ahmVar, zn znVar) {
        this.f4042a = ahmVar;
        this.f4043b = znVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Void call() throws Exception {
        if (this.f4042a.l() != null) {
            this.f4042a.l().get();
        }
        zn znVarK = this.f4042a.k();
        if (znVarK == null) {
            return null;
        }
        try {
            synchronized (this.f4043b) {
                afb.a(this.f4043b, afb.a(znVarK));
            }
            return null;
        } catch (afa e) {
            return null;
        }
    }
}
