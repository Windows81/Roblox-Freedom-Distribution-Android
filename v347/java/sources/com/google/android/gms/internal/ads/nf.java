package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
final class nf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5340a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<Runnable> f5341b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5342c = false;

    public final void a() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f5340a) {
            if (this.f5342c) {
                return;
            }
            arrayList.addAll(this.f5341b);
            this.f5341b.clear();
            this.f5342c = true;
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                ((Runnable) obj).run();
            }
        }
    }

    public final void a(final Runnable runnable, final Executor executor) {
        synchronized (this.f5340a) {
            if (this.f5342c) {
                executor.execute(runnable);
            } else {
                this.f5341b.add(new Runnable(executor, runnable) { // from class: com.google.android.gms.internal.ads.ng

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final Executor f5343a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    private final Runnable f5344b;

                    {
                        this.f5343a = executor;
                        this.f5344b = runnable;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f5343a.execute(this.f5344b);
                    }
                });
            }
        }
    }
}
