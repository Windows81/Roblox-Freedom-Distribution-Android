package com.google.android.gms.internal.ads;

import android.os.Environment;
import com.google.android.gms.internal.ads.amk;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ami {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final amn f4203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final amz f4204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f4205c;

    private ami() {
        this.f4205c = false;
        this.f4203a = new amn();
        this.f4204b = new amz();
        b();
    }

    public ami(amn amnVar) {
        this.f4203a = amnVar;
        this.f4205c = ((Boolean) aoo.f().a(aro.db)).booleanValue();
        this.f4204b = new amz();
        b();
    }

    public static ami a() {
        return new ami();
    }

    private final synchronized void b() {
        this.f4204b.f4247d = new ams();
        this.f4204b.f4247d.f4219b = new amv();
        this.f4204b.f4246c = new amx();
    }

    private final synchronized void b(amk.a.b bVar) {
        this.f4204b.f4245b = c();
        this.f4203a.a(afb.a(this.f4204b)).b(bVar.a()).a();
        String strValueOf = String.valueOf(Integer.toString(bVar.a(), 10));
        jd.a(strValueOf.length() != 0 ? "Logging Event with event code : ".concat(strValueOf) : new String("Logging Event with event code : "));
    }

    private final synchronized void c(amk.a.b bVar) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory != null) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
                try {
                    try {
                        fileOutputStream.write(d(bVar).getBytes());
                        fileOutputStream.write(10);
                    } catch (IOException e) {
                        jd.a("Could not write Clearcut to file.");
                        try {
                            fileOutputStream.close();
                        } catch (IOException e2) {
                            jd.a("Could not close Clearcut output stream.");
                        }
                    }
                } finally {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                        jd.a("Could not close Clearcut output stream.");
                    }
                }
            } catch (FileNotFoundException e4) {
                jd.a("Could not find file for Clearcut");
            }
        }
    }

    private static long[] c() {
        int i = 0;
        List<String> listB = aro.b();
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = listB.iterator();
        while (it.hasNext()) {
            for (String str : it.next().split(",")) {
                try {
                    arrayList.add(Long.valueOf(str));
                } catch (NumberFormatException e) {
                    jd.a("Experiment ID is not a number");
                }
            }
        }
        long[] jArr = new long[arrayList.size()];
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            jArr[i2] = ((Long) obj).longValue();
            i2++;
        }
        return jArr;
    }

    private final synchronized String d(amk.a.b bVar) {
        return String.format("id=%s,timestamp=%s,event=%s", this.f4204b.f4244a, Long.valueOf(com.google.android.gms.ads.internal.aw.l().b()), Integer.valueOf(bVar.a()));
    }

    public final synchronized void a(amj amjVar) {
        if (this.f4205c) {
            try {
                amjVar.a(this.f4204b);
            } catch (NullPointerException e) {
                com.google.android.gms.ads.internal.aw.i().a(e, "AdMobClearcutLogger.modify");
            }
        }
    }

    public final synchronized void a(amk.a.b bVar) {
        if (this.f4205c) {
            if (((Boolean) aoo.f().a(aro.dc)).booleanValue()) {
                c(bVar);
            } else {
                b(bVar);
            }
        }
    }
}
