package com.roblox.client.startup;

import android.content.Context;
import com.roblox.client.b;
import com.roblox.client.components.d;
import com.roblox.client.http.j;
import com.roblox.client.o;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class d extends com.roblox.client.components.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected c f7900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f7901b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o.c f7902c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7903d;

    public interface b {
        d a(Context context);
    }

    public interface c {
        void a(o.c cVar, boolean z);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context) {
        super("PostDeviceInit");
        this.f7902c = o.c.UnKnown;
        this.f7901b = context;
        a(new C0132d());
        a(new a());
    }

    public void a(c cVar) {
        this.f7900a = cVar;
    }

    @Override // com.roblox.client.components.d
    public void c() {
        g.c("PostDeviceInitHandler", "doAllTasksComplete:");
        if (this.f7900a != null) {
            this.f7900a.a(this.f7902c, this.f7903d);
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.startup.d$d, reason: collision with other inner class name */
    private class C0132d implements d.a {
        private C0132d() {
        }

        @Override // com.roblox.client.components.d.a
        public void a() {
            o.a().a(new o.a() { // from class: com.roblox.client.startup.d.d.1
                @Override // com.roblox.client.o.b
                public void a(o.c cVar) {
                    d.this.f7902c = cVar;
                    d.this.a("UpgradeCheck");
                }

                @Override // com.roblox.client.o.a, com.roblox.client.o.b
                public void b(o.c cVar) {
                    d.this.f7902c = cVar;
                    d.this.a("UpgradeCheck");
                }
            });
        }
    }

    private class a implements d.a {
        private a() {
        }

        @Override // com.roblox.client.components.d.a
        public void a() {
            com.roblox.client.b.a(d.this.f7901b, new b.c() { // from class: com.roblox.client.startup.d.a.1
                @Override // com.roblox.client.b.c
                public void a(boolean z, j jVar) {
                    d.this.f7903d = z;
                    d.this.a("AppSettings");
                }
            });
        }
    }
}
