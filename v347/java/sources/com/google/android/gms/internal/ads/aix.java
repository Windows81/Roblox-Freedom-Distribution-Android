package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public abstract class aix implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final ahm f4060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final zn f4061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Method f4062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4063d = getClass().getSimpleName();
    private final String e;
    private final String f;
    private final int g;
    private final int h;

    public aix(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        this.f4060a = ahmVar;
        this.e = str;
        this.f = str2;
        this.f4061b = znVar;
        this.g = i;
        this.h = i2;
    }

    protected abstract void a() throws IllegalAccessException, InvocationTargetException;

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Void call() throws Exception {
        try {
            long jNanoTime = System.nanoTime();
            this.f4062c = this.f4060a.a(this.e, this.f);
            if (this.f4062c != null) {
                a();
                agp agpVarH = this.f4060a.h();
                if (agpVarH != null && this.g != Integer.MIN_VALUE) {
                    agpVarH.a(this.h, this.g, (System.nanoTime() - jNanoTime) / 1000);
                }
            }
        } catch (IllegalAccessException e) {
        } catch (InvocationTargetException e2) {
        }
        return null;
    }
}
