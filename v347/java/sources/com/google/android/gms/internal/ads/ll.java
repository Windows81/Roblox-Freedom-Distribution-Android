package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class ll {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<Integer, Bitmap> f5262a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicInteger f5263b = new AtomicInteger(0);

    public final int a(Bitmap bitmap) {
        if (bitmap == null) {
            jd.b("Bitmap is null. Skipping putting into the Memory Map.");
            return -1;
        }
        int andIncrement = this.f5263b.getAndIncrement();
        this.f5262a.put(Integer.valueOf(andIncrement), bitmap);
        return andIncrement;
    }

    public final Bitmap a(Integer num) {
        return this.f5262a.get(num);
    }

    public final void b(Integer num) {
        this.f5262a.remove(num);
    }
}
