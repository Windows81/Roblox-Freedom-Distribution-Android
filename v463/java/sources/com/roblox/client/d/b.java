package com.roblox.client.d;

import android.content.Context;
import com.roblox.client.w;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private w.c f5969b;

    /* JADX WARN: Multi-variable type inference failed */
    public b() {
        this(false, null, 3, 0 == true ? 1 : 0);
    }

    public final void a(Context context) {
        b.a.a.b.a(context, "context");
    }

    public b(boolean z, w.c cVar) {
        b.a.a.b.a(cVar, "upgradeCheckResult");
        this.f5968a = z;
        this.f5969b = cVar;
    }

    public final boolean a() {
        return this.f5968a;
    }

    public final w.c b() {
        return this.f5969b;
    }

    public /* synthetic */ b(boolean z, w.c cVar, int i, b.a.a.a aVar) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? new w.c() : cVar);
    }
}
