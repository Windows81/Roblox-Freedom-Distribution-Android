package com.roblox.client.components;

import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.helper.ItemTouchHelper;
import java.util.Iterator;
import java.util.Vector;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class d extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6740b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Vector<a> f6741c = new Vector<>();

    public interface a {
        void a();
    }

    public abstract void c();

    public d(String str) {
        this.f6739a = str;
    }

    public void a(a aVar) {
        this.f6741c.add(aVar);
        this.f6740b++;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 100 && this.f6740b > 0) {
            com.roblox.client.util.g.a("rbx.login", "MTCH.handleMessage() group:" + this.f6739a + " START size:" + this.f6740b);
            b();
        } else if (message.what == 200) {
            this.f6740b--;
            com.roblox.client.util.g.a("rbx.login", "MTCH.handleMessage() task:" + message.obj + " COMPLETE size:" + this.f6740b);
            if (this.f6740b == 0) {
                com.roblox.client.util.g.a("rbx.login", "MTCH.handleMessage() group:" + this.f6739a + " post EVENT_USER_LOGIN");
                c();
            }
        }
    }

    public void a() {
        sendMessage(obtainMessage(100));
    }

    public void a(String str) {
        sendMessage(obtainMessage(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, str));
    }

    protected void b() {
        Iterator<a> it = this.f6741c.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }
}
