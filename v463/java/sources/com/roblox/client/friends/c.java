package com.roblox.client.friends;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.g;
import com.roblox.client.ActivitySearch;
import com.roblox.client.RobloxWebActivity;
import com.roblox.client.ae.k;
import com.roblox.client.contacts.h;
import com.roblox.client.o;
import com.roblox.client.u;
import com.roblox.client.v;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f6058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6059c;

    public c(androidx.appcompat.app.c cVar, int i) {
        this.f6057a = i;
        this.f6058b = cVar.j();
    }

    public void a() {
        Fragment fragmentA = this.f6058b.a("FragmentContacts");
        if (fragmentA == null) {
            h().a(this.f6057a, h.aq(), "FragmentContacts").e();
        } else if (!fragmentA.A()) {
            h().c(fragmentA).e();
        }
        this.f6059c = "FragmentContacts";
    }

    public void b() {
        if (this.f6058b.a("FragmentContactsPresentation") == null) {
            c();
            h().a(this.f6057a, com.roblox.client.friends.a.a.aq(), "FragmentContactsPresentation").e();
        }
        this.f6059c = "FragmentContactsPresentation";
    }

    public void c() {
        a("FragmentContacts");
    }

    public void d() {
        Fragment fragmentA = this.f6058b.a("FragmentNearbyUsers");
        if (fragmentA == null) {
            h().a(this.f6057a, com.roblox.client.friends.nearby.a.b.aq(), "FragmentNearbyUsers").e();
        } else if (!fragmentA.A()) {
            h().c(fragmentA).e();
        }
        this.f6059c = "FragmentNearbyUsers";
    }

    public void e() {
        if (this.f6058b.a("FragmentNearbyPresentation") == null) {
            f();
            h().a(this.f6057a, com.roblox.client.friends.nearby.a.a.aq(), "FragmentNearbyPresentation").e();
        }
        this.f6059c = "FragmentNearbyPresentation";
    }

    public void f() {
        a("FragmentNearbyUsers");
    }

    public void a(Activity activity, long j) {
        Intent intent = new Intent(activity, (Class<?>) RobloxWebActivity.class);
        intent.putExtra("URL_EXTRA", u.c(j));
        activity.startActivityForResult(intent, 102);
    }

    public void g() {
        Fragment fragmentA = this.f6058b.a("PendingRequestsFragment");
        if (fragmentA == null) {
            v vVar = new v();
            Bundle bundle = new Bundle();
            bundle.putString("DEFAULT_URL", u.S());
            vVar.g(bundle);
            h().a(this.f6057a, vVar, "PendingRequestsFragment").e();
        } else if (!fragmentA.A()) {
            h().c(fragmentA).e();
        }
        this.f6059c = "PendingRequestsFragment";
    }

    public void a(Activity activity) {
        activity.startActivityForResult(ActivitySearch.a(activity, 1, o.j.Features_UniversalFriender_Action_SearchByUsername), 103);
    }

    public void a(int i, int i2) {
        if (i == 0) {
            f();
        } else if (i == 1) {
            c();
        } else {
            k.c("Navigate to app settings from unknown context: " + i);
        }
        h().a(this.f6057a, b.a(i, i2), "AppSettingsFragment").e();
        this.f6059c = "AppSettingsFragment";
    }

    private androidx.fragment.app.k h() {
        Fragment fragmentA = this.f6058b.a(this.f6059c);
        if (fragmentA != null) {
            k.c("NearbyNavigationController", "Fragment visible: " + fragmentA.getClass());
            if (i()) {
                return this.f6058b.a().a(fragmentA);
            }
            return this.f6058b.a().b(fragmentA);
        }
        k.c("NearbyNavigationController", "No visible fragment. ActiveFragmentTag: " + this.f6059c);
        return this.f6058b.a();
    }

    private boolean i() {
        return ("PendingRequestsFragment".equals(this.f6059c) || "FragmentContacts".equals(this.f6059c) || "FragmentNearbyUsers".equals(this.f6059c)) ? false : true;
    }

    private void a(String str) {
        Fragment fragmentA = this.f6058b.a(str);
        if (fragmentA != null) {
            this.f6058b.a().a(fragmentA).e();
            if (str.equals(this.f6059c)) {
                this.f6059c = null;
            }
        }
    }
}
