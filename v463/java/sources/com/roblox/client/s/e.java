package com.roblox.client.s;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.roblox.client.ae.k;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f7018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f7019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<b> f7020c;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f7028a = new e();
    }

    public interface b {
        void a(int i, Bundle bundle);
    }

    public static e a() {
        return a.f7028a;
    }

    private e() {
        this.f7019b = new Handler(Looper.getMainLooper());
        this.f7020c = new ArrayList<>();
    }

    public void a(Context context) {
        k.b("NotificationManager", "init:");
        this.f7018a = true;
    }

    public void a(final b bVar) {
        if (!this.f7018a) {
            throw new IllegalStateException("NotificationManager was not initialized");
        }
        this.f7019b.post(new Runnable() { // from class: com.roblox.client.s.e.1
            @Override // java.lang.Runnable
            public void run() {
                e.this.f7020c.add(bVar);
            }
        });
    }

    public void b(final b bVar) {
        if (!this.f7018a) {
            throw new IllegalStateException("NotificationManager was not initialized");
        }
        this.f7019b.post(new Runnable() { // from class: com.roblox.client.s.e.2
            @Override // java.lang.Runnable
            public void run() {
                while (e.this.f7020c.remove(bVar)) {
                }
            }
        });
    }

    public void a(int i, Bundle bundle) {
        if (!this.f7018a) {
            throw new IllegalStateException("NotificationManager was not initialized");
        }
        b(i, bundle);
    }

    private void b(final int i, final Bundle bundle) {
        this.f7019b.post(new Runnable() { // from class: com.roblox.client.s.e.3
            @Override // java.lang.Runnable
            public void run() {
                for (b bVar : e.this.f7020c) {
                    k.b("NotificationManager", "observer= " + bVar.getClass() + ". notificationId= " + i + ".");
                    bVar.a(i, bundle);
                }
            }
        });
    }
}
