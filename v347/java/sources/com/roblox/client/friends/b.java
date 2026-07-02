package com.roblox.client.friends;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.l;
import com.roblox.client.RobloxSettings;
import com.roblox.client.contacts.h;
import com.roblox.client.n;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l f6968b;

    public b(android.support.v7.app.c cVar, int i) {
        this.f6967a = i;
        this.f6968b = cVar.e();
    }

    public void a() {
        this.f6968b.a().b(this.f6967a, h.a(), "FragmentContacts").d();
    }

    public void b() {
        this.f6968b.a().b(this.f6967a, com.roblox.client.friends.a.a.a(), "FragmentContactsPresentation").d();
    }

    public void c() {
    }

    public void d() {
    }

    public void e() {
        this.f6968b.a().b(this.f6967a, com.roblox.client.friends.b.a.a(), "FragmentNearbyPresentation").d();
    }

    public void f() {
    }

    public void g() {
        n nVar = new n();
        Bundle bundle = new Bundle();
        bundle.putString("DEFAULT_URL", RobloxSettings.getUserFriendRequestOnlyUrl());
        nVar.setArguments(bundle);
        this.f6968b.a().b(this.f6967a, nVar, "PendingRequestsFragment").d();
    }

    public void a(Activity activity) {
    }

    public void a(int i, int i2) {
        this.f6968b.a().b(this.f6967a, a.a(i, i2), "AppSettingsFragment").d();
    }
}
