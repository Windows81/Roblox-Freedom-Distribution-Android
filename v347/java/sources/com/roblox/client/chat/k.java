package com.roblox.client.chat;

import com.roblox.client.h.o;

/* JADX INFO: loaded from: classes.dex */
public class k implements o.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6633b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o.a f6635d;

    public k(int i, o.a aVar) {
        this.f6634c = i;
        this.f6635d = aVar;
    }

    public void a(int i) {
        this.f6632a = i;
        b(this.f6632a);
    }

    private void b(int i) {
        long jB = com.roblox.client.i.h.a().b();
        int i2 = i * this.f6634c;
        com.roblox.client.util.g.e(a.f6496a, "FriendDownloader.download() p:" + i + " i:" + i2);
        com.roblox.client.i.g.a().a(new o(jB, this.f6634c, i2, this));
    }

    @Override // com.roblox.client.h.o.a
    public void a(boolean z, com.roblox.client.e.l lVar) {
        if (!this.f6633b && z) {
            if (lVar.a() > 0) {
                if (this.f6635d != null) {
                    this.f6635d.a(z, lVar);
                }
                int i = this.f6632a + 1;
                this.f6632a = i;
                b(i);
                return;
            }
            this.f6633b = true;
        }
    }
}
