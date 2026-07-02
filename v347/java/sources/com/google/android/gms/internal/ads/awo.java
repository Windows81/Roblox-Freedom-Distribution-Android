package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class awo implements aqn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("mLock")
    private awj f4553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private boolean f4554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f4555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f4556d = new Object();

    public awo(Context context) {
        this.f4555c = context;
    }

    private final Future<ParcelFileDescriptor> a(zzsg zzsgVar) {
        awp awpVar = new awp(this);
        awq awqVar = new awq(this, awpVar, zzsgVar);
        awt awtVar = new awt(this, awpVar);
        synchronized (this.f4556d) {
            this.f4553a = new awj(this.f4555c, com.google.android.gms.ads.internal.aw.t().a(), awqVar, awtVar);
            this.f4553a.o();
        }
        return awpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() {
        synchronized (this.f4556d) {
            if (this.f4553a == null) {
                return;
            }
            this.f4553a.a();
            this.f4553a = null;
            Binder.flushPendingCommands();
        }
    }

    static /* synthetic */ boolean a(awo awoVar, boolean z) {
        awoVar.f4554b = true;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.aqn
    public final atf a(avg<?> avgVar) throws df {
        atf atfVar;
        zzsg zzsgVarA = zzsg.a(avgVar);
        long jIntValue = ((Integer) aoo.f().a(aro.cK)).intValue();
        long jB = com.google.android.gms.ads.internal.aw.l().b();
        try {
            zzsi zzsiVar = (zzsi) new zzaev(a(zzsgVarA).get(jIntValue, TimeUnit.MILLISECONDS)).a(zzsi.CREATOR);
            if (zzsiVar.f5819a) {
                throw new df(zzsiVar.f5820b);
            }
            if (zzsiVar.e.length != zzsiVar.f.length) {
                atfVar = null;
            } else {
                HashMap map = new HashMap();
                for (int i = 0; i < zzsiVar.e.length; i++) {
                    map.put(zzsiVar.e[i], zzsiVar.f[i]);
                }
                atfVar = new atf(zzsiVar.f5821c, zzsiVar.f5822d, map, zzsiVar.g, zzsiVar.h);
            }
            jd.a(new StringBuilder(52).append("Http assets remote cache took ").append(com.google.android.gms.ads.internal.aw.l().b() - jB).append("ms").toString());
            return atfVar;
        } catch (InterruptedException e) {
            jd.a(new StringBuilder(52).append("Http assets remote cache took ").append(com.google.android.gms.ads.internal.aw.l().b() - jB).append("ms").toString());
            return null;
        } catch (ExecutionException e2) {
            jd.a(new StringBuilder(52).append("Http assets remote cache took ").append(com.google.android.gms.ads.internal.aw.l().b() - jB).append("ms").toString());
            return null;
        } catch (TimeoutException e3) {
            jd.a(new StringBuilder(52).append("Http assets remote cache took ").append(com.google.android.gms.ads.internal.aw.l().b() - jB).append("ms").toString());
            return null;
        } catch (Throwable th) {
            jd.a(new StringBuilder(52).append("Http assets remote cache took ").append(com.google.android.gms.ads.internal.aw.l().b() - jB).append("ms").toString());
            throw th;
        }
    }
}
