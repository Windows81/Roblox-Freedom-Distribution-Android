package com.roblox.client.friends;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.lifecycle.g;
import androidx.lifecycle.i;
import androidx.lifecycle.r;
import com.roblox.client.ae.s;
import com.roblox.client.friends.d;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class UniversalFriendsPresenter implements i, d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d.b f6024a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private s f6025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.ad.c f6026c;

    public UniversalFriendsPresenter(g gVar, d.b bVar, s sVar, com.roblox.client.ad.c cVar) {
        gVar.a(this);
        this.f6024a = bVar;
        this.f6025b = sVar;
        this.f6026c = cVar;
    }

    @Override // com.roblox.client.friends.d.a
    public int a(int i) {
        if (i == -1) {
            if (a() && c()) {
                Log.d("UniversalPresenter", "Show nearby.");
                return ActivityUniversalFriends.q;
            }
            Log.d("UniversalPresenter", "Show pending requests.");
            return 0;
        }
        if (i == 1 && a()) {
            return ActivityUniversalFriends.q;
        }
        if (i == 2 && b()) {
            return ActivityUniversalFriends.r;
        }
        return 0;
    }

    public static boolean a() {
        return com.roblox.client.b.g() && Build.VERSION.SDK_INT >= 23;
    }

    public static boolean b() {
        return !com.roblox.client.ad.c.a().i() && Build.VERSION.SDK_INT >= 23 && u.j() && com.roblox.client.b.bu() && !TextUtils.isEmpty(com.roblox.client.ad.c.a().p()) && com.roblox.client.b.ax().toLowerCase().contains(com.roblox.client.ad.c.a().p().toLowerCase());
    }

    private boolean c() {
        return this.f6025b.a().getBoolean("FirstTimeUsePrefKey", true);
    }

    private void d() {
        this.f6025b.a().edit().putBoolean("FirstTimeUsePrefKey", false).apply();
    }

    @r(a = g.a.ON_START)
    void onStart() {
        Log.i("UniversalPresenter", "LifecycleEvent.onStart");
        if (c()) {
            d();
        }
    }

    @r(a = g.a.ON_RESUME)
    void onResume() {
        Log.i("UniversalPresenter", "LifecycleEvent.onResume");
    }

    @r(a = g.a.ON_STOP)
    void onStop() {
        Log.i("UniversalPresenter", "LifecycleEvent.onStop");
    }

    @r(a = g.a.ON_DESTROY)
    void onDestroy() {
        Log.i("UniversalPresenter", "LifecycleEvent.onDestroy");
    }
}
