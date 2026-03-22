package com.roblox.client.components;

import android.os.Handler;
import android.os.Message;
import java.util.Iterator;
import java.util.Vector;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class b extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f5869b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Vector<a> f5870c = new Vector<>();

    public interface a {
        void a();
    }

    public abstract void c();

    public b(String str) {
        this.f5868a = str;
    }

    public void a(a aVar) {
        this.f5870c.add(aVar);
        this.f5869b++;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 100 && this.f5869b > 0) {
            com.roblox.client.ae.k.a("rbx.execute", "MTCH.handleMessage() group:" + this.f5868a + " START size:" + this.f5869b);
            b();
            return;
        }
        if (message.what == 200) {
            this.f5869b--;
            com.roblox.client.ae.k.a("rbx.execute", "MTCH.handleMessage() task:" + message.obj + " COMPLETE size:" + this.f5869b);
            if (this.f5869b == 0) {
                com.roblox.client.ae.k.a("rbx.execute", "MTCH.handleMessage() group:" + this.f5868a + " complete");
                c();
            }
        }
    }

    public void a() {
        sendMessage(obtainMessage(100));
    }

    public void a(String str) {
        sendMessage(obtainMessage(200, str));
    }

    protected void b() {
        Iterator<a> it = this.f5870c.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }
}
