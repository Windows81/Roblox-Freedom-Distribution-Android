package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f5405a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("sLock")
    private static boolean f5406b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("sLock")
    private static boolean f5407c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private sv f5408d;

    private final void c(Context context) {
        synchronized (f5405a) {
            if (((Boolean) aoo.f().a(aro.dg)).booleanValue() && !f5407c) {
                try {
                    f5407c = true;
                    this.f5408d = sw.a(DynamiteModule.a(context, DynamiteModule.f3606a, ModuleDescriptor.MODULE_ID).a("com.google.android.gms.ads.omid.DynamiteOmid"));
                } catch (DynamiteModule.a e) {
                    mj.d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final com.google.android.gms.b.a a(String str, WebView webView, String str2, String str3, String str4) {
        synchronized (f5405a) {
            if (!((Boolean) aoo.f().a(aro.dg)).booleanValue() || !f5406b) {
                return null;
            }
            try {
                return this.f5408d.a(str, com.google.android.gms.b.b.a(webView), str2, str3, str4);
            } catch (RemoteException | NullPointerException e) {
                mj.d("#007 Could not call remote method.", e);
                return null;
            }
        }
    }

    public final void a(com.google.android.gms.b.a aVar) {
        synchronized (f5405a) {
            if (((Boolean) aoo.f().a(aro.dg)).booleanValue() && f5406b) {
                try {
                    this.f5408d.b(aVar);
                } catch (RemoteException | NullPointerException e) {
                    mj.d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void a(com.google.android.gms.b.a aVar, View view) {
        synchronized (f5405a) {
            if (((Boolean) aoo.f().a(aro.dg)).booleanValue() && f5406b) {
                try {
                    this.f5408d.a(aVar, com.google.android.gms.b.b.a(view));
                } catch (RemoteException | NullPointerException e) {
                    mj.d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final boolean a(Context context) {
        synchronized (f5405a) {
            if (!((Boolean) aoo.f().a(aro.dg)).booleanValue()) {
                return false;
            }
            if (f5406b) {
                return true;
            }
            try {
                c(context);
                boolean zA = this.f5408d.a(com.google.android.gms.b.b.a(context));
                f5406b = zA;
                return zA;
            } catch (RemoteException | NullPointerException e) {
                mj.d("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    public final String b(Context context) {
        if (!((Boolean) aoo.f().a(aro.dg)).booleanValue()) {
            return null;
        }
        try {
            c(context);
            String strValueOf = String.valueOf(this.f5408d.a());
            return strValueOf.length() != 0 ? "a.".concat(strValueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e) {
            mj.d("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final void b(com.google.android.gms.b.a aVar) {
        synchronized (f5405a) {
            if (((Boolean) aoo.f().a(aro.dg)).booleanValue() && f5406b) {
                try {
                    this.f5408d.c(aVar);
                } catch (RemoteException | NullPointerException e) {
                    mj.d("#007 Could not call remote method.", e);
                }
            }
        }
    }
}
