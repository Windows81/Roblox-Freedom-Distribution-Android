package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class aod {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final aod f4317a = new aod();

    protected aod() {
    }

    public static zzjj a(Context context, aqj aqjVar) {
        Date dateA = aqjVar.a();
        long time = dateA != null ? dateA.getTime() : -1L;
        String strB = aqjVar.b();
        int iC = aqjVar.c();
        Set<String> setD = aqjVar.d();
        List listUnmodifiableList = !setD.isEmpty() ? Collections.unmodifiableList(new ArrayList(setD)) : null;
        boolean zA = aqjVar.a(context);
        int iL = aqjVar.l();
        Location locationE = aqjVar.e();
        Bundle bundleA = aqjVar.a(AdMobAdapter.class);
        boolean zF = aqjVar.f();
        String strG = aqjVar.g();
        com.google.android.gms.ads.c.a aVarI = aqjVar.i();
        zzmq zzmqVar = aVarI != null ? new zzmq(aVarI) : null;
        String strA = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            aoo.a();
            strA = ly.a(Thread.currentThread().getStackTrace(), packageName);
        }
        return new zzjj(7, time, bundleA, iC, listUnmodifiableList, zA, iL, zF, strG, zzmqVar, locationE, strB, aqjVar.k(), aqjVar.m(), Collections.unmodifiableList(new ArrayList(aqjVar.n())), aqjVar.h(), strA, aqjVar.o());
    }
}
