package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.support.v7.widget.RecyclerView;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public class ia implements aqn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f5106a = eb.f4947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    private final qh f5107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final hb f5108c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final jb f5109d;

    public ia(hb hbVar) {
        this(hbVar, new jb(RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT));
    }

    private ia(hb hbVar, jb jbVar) {
        this.f5108c = hbVar;
        this.f5107b = hbVar;
        this.f5109d = jbVar;
    }

    @Deprecated
    public ia(qh qhVar) {
        this(qhVar, new jb(RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT));
    }

    @Deprecated
    private ia(qh qhVar, jb jbVar) {
        this.f5107b = qhVar;
        this.f5108c = new gc(qhVar);
        this.f5109d = jbVar;
    }

    private static void a(String str, avg<?> avgVar, df dfVar) throws df {
        ac acVarJ = avgVar.j();
        int i = avgVar.i();
        try {
            acVarJ.a(dfVar);
            avgVar.b(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(i)));
        } catch (df e) {
            avgVar.b(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(i)));
            throw e;
        }
    }

    private final byte[] a(InputStream inputStream, int i) throws bd, IOException {
        tg tgVar = new tg(this.f5109d, i);
        try {
            if (inputStream == null) {
                throw new bd();
            }
            byte[] bArrA = this.f5109d.a(1024);
            while (true) {
                int i2 = inputStream.read(bArrA);
                if (i2 == -1) {
                    break;
                }
                tgVar.write(bArrA, 0, i2);
            }
            byte[] byteArray = tgVar.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    eb.a("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f5109d.a(bArrA);
            tgVar.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    eb.a("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f5109d.a((byte[]) null);
            tgVar.close();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.aqn
    public atf a(avg<?> avgVar) throws df {
        byte[] bArrA;
        Map<String, String> map;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            pg pgVar = null;
            List<apn> listEmptyList = Collections.emptyList();
            try {
                try {
                    agm agmVarF = avgVar.f();
                    if (agmVarF == null) {
                        map = Collections.emptyMap();
                    } else {
                        map = new HashMap<>();
                        if (agmVarF.f3962b != null) {
                            map.put("If-None-Match", agmVarF.f3962b);
                        }
                        if (agmVarF.f3964d > 0) {
                            map.put("If-Modified-Since", of.a(agmVarF.f3964d));
                        }
                    }
                    pg pgVarA = this.f5108c.a(avgVar, map);
                    try {
                        int iA = pgVarA.a();
                        listEmptyList = pgVarA.b();
                        if (iA == 304) {
                            agm agmVarF2 = avgVar.f();
                            if (agmVarF2 == null) {
                                return new atf(304, (byte[]) null, true, SystemClock.elapsedRealtime() - jElapsedRealtime, listEmptyList);
                            }
                            TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                            if (!listEmptyList.isEmpty()) {
                                Iterator<apn> it = listEmptyList.iterator();
                                while (it.hasNext()) {
                                    treeSet.add(it.next().a());
                                }
                            }
                            ArrayList arrayList = new ArrayList(listEmptyList);
                            if (agmVarF2.h != null) {
                                if (!agmVarF2.h.isEmpty()) {
                                    for (apn apnVar : agmVarF2.h) {
                                        if (!treeSet.contains(apnVar.a())) {
                                            arrayList.add(apnVar);
                                        }
                                    }
                                }
                            } else if (!agmVarF2.g.isEmpty()) {
                                for (Map.Entry<String, String> entry : agmVarF2.g.entrySet()) {
                                    if (!treeSet.contains(entry.getKey())) {
                                        arrayList.add(new apn(entry.getKey(), entry.getValue()));
                                    }
                                }
                            }
                            return new atf(304, agmVarF2.f3961a, true, SystemClock.elapsedRealtime() - jElapsedRealtime, (List<apn>) arrayList);
                        }
                        InputStream inputStreamD = pgVarA.d();
                        bArrA = inputStreamD != null ? a(inputStreamD, pgVarA.c()) : new byte[0];
                        try {
                            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                            if (f5106a || jElapsedRealtime2 > 3000) {
                                Object[] objArr = new Object[5];
                                objArr[0] = avgVar;
                                objArr[1] = Long.valueOf(jElapsedRealtime2);
                                objArr[2] = bArrA != null ? Integer.valueOf(bArrA.length) : "null";
                                objArr[3] = Integer.valueOf(iA);
                                objArr[4] = Integer.valueOf(avgVar.j().b());
                                eb.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
                            }
                            if (iA < 200 || iA > 299) {
                                throw new IOException();
                            }
                            return new atf(iA, bArrA, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listEmptyList);
                        } catch (IOException e) {
                            e = e;
                            pgVar = pgVarA;
                            if (pgVar == null) {
                                throw new auf(e);
                            }
                            int iA2 = pgVar.a();
                            eb.c("Unexpected response code %d for %s", Integer.valueOf(iA2), avgVar.e());
                            if (bArrA != null) {
                                atf atfVar = new atf(iA2, bArrA, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listEmptyList);
                                if (iA2 != 401 && iA2 != 403) {
                                    if (iA2 >= 400 && iA2 <= 499) {
                                        throw new akq(atfVar);
                                    }
                                    if (iA2 < 500 || iA2 > 599) {
                                        throw new bd(atfVar);
                                    }
                                    throw new bd(atfVar);
                                }
                                a("auth", avgVar, new a(atfVar));
                            } else {
                                a("network", avgVar, new ase());
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                        bArrA = null;
                        pgVar = pgVarA;
                    }
                } catch (IOException e3) {
                    e = e3;
                    bArrA = null;
                }
            } catch (MalformedURLException e4) {
                String strValueOf = String.valueOf(avgVar.e());
                throw new RuntimeException(strValueOf.length() != 0 ? "Bad URL ".concat(strValueOf) : new String("Bad URL "), e4);
            } catch (SocketTimeoutException e5) {
                a("socket", avgVar, new ce());
            }
        }
    }
}
