package com.roblox.client.app;

import android.content.Context;
import com.roblox.client.ab.e;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5717a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5718b;

    public b(Context context) {
        this.f5717a = context.getResources().getColor(o.c.light_ash);
        this.f5718b = context.getResources().getColor(o.c.dark_slate);
    }

    /* JADX INFO: renamed from: com.roblox.client.app.b$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5719a;

        static {
            int[] iArr = new int[e.values().length];
            f5719a = iArr;
            try {
                iArr[e.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5719a[e.DARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5719a[e.CLASSIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public int a(e eVar) {
        int i = AnonymousClass1.f5719a[eVar.ordinal()];
        if (i == 1) {
            return this.f5717a;
        }
        if (i != 2) {
            return -1;
        }
        return this.f5718b;
    }
}
