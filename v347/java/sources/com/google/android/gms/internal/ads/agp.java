package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import java.io.IOException;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: loaded from: classes.dex */
public class agp {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected volatile Boolean f3969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ahm f3970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ConditionVariable f3968d = new ConditionVariable();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static volatile amn f3967a = null;
    private static volatile Random e = null;

    public agp(ahm ahmVar) {
        this.f3970c = ahmVar;
        ahmVar.c().execute(new agq(this));
    }

    public static int a() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : c().nextInt();
        } catch (RuntimeException e2) {
            return c().nextInt();
        }
    }

    private static Random c() {
        if (e == null) {
            synchronized (agp.class) {
                if (e == null) {
                    e = new Random();
                }
            }
        }
        return e;
    }

    public final void a(int i, int i2, long j) throws IOException {
        try {
            f3968d.block();
            if (!this.f3969b.booleanValue() || f3967a == null) {
                return;
            }
            vi viVar = new vi();
            viVar.f5619a = this.f3970c.f4004a.getPackageName();
            viVar.f5620b = Long.valueOf(j);
            amp ampVarA = f3967a.a(afb.a(viVar));
            ampVarA.a(i2);
            ampVarA.b(i);
            ampVarA.a();
        } catch (Exception e2) {
        }
    }
}
