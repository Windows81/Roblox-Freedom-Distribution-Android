package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ld implements zm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, me> f5249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f5251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f5252d;

    public ld(File file) {
        this(file, 5242880);
    }

    private ld(File file, int i) {
        this.f5249a = new LinkedHashMap(16, 0.75f, true);
        this.f5250b = 0L;
        this.f5251c = file;
        this.f5252d = 5242880;
    }

    static int a(InputStream inputStream) throws IOException {
        return c(inputStream) | 0 | (c(inputStream) << 8) | (c(inputStream) << 16) | (c(inputStream) << 24);
    }

    private static InputStream a(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    static String a(ne neVar) throws IOException {
        return new String(a(neVar, b((InputStream) neVar)), Constants.UTF8_NAME);
    }

    static void a(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write(i >>> 24);
    }

    static void a(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    static void a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(Constants.UTF8_NAME);
        a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private final void a(String str, me meVar) {
        if (this.f5249a.containsKey(str)) {
            this.f5250b = (meVar.f5304a - this.f5249a.get(str).f5304a) + this.f5250b;
        } else {
            this.f5250b += meVar.f5304a;
        }
        this.f5249a.put(str, meVar);
    }

    private static byte[] a(ne neVar, long j) throws IOException {
        long jA = neVar.a();
        if (j < 0 || j > jA || ((int) j) != j) {
            throw new IOException(new StringBuilder(73).append("streamToBytes length=").append(j).append(", maxLength=").append(jA).toString());
        }
        byte[] bArr = new byte[(int) j];
        new DataInputStream(neVar).readFully(bArr);
        return bArr;
    }

    static long b(InputStream inputStream) throws IOException {
        return 0 | (((long) c(inputStream)) & 255) | ((((long) c(inputStream)) & 255) << 8) | ((((long) c(inputStream)) & 255) << 16) | ((((long) c(inputStream)) & 255) << 24) | ((((long) c(inputStream)) & 255) << 32) | ((((long) c(inputStream)) & 255) << 40) | ((((long) c(inputStream)) & 255) << 48) | ((((long) c(inputStream)) & 255) << 56);
    }

    static List<apn> b(ne neVar) throws IOException {
        int iA = a((InputStream) neVar);
        List<apn> listEmptyList = iA == 0 ? Collections.emptyList() : new ArrayList<>(iA);
        for (int i = 0; i < iA; i++) {
            listEmptyList.add(new apn(a(neVar).intern(), a(neVar).intern()));
        }
        return listEmptyList;
    }

    private final synchronized void b(String str) {
        boolean zDelete = d(str).delete();
        e(str);
        if (!zDelete) {
            eb.b("Could not delete cache entry for key=%s, filename=%s", str, c(str));
        }
    }

    private static int c(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i == -1) {
            throw new EOFException();
        }
        return i;
    }

    private static String c(String str) {
        int length = str.length() / 2;
        String strValueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String strValueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    private final File d(String str) {
        return new File(this.f5251c, c(str));
    }

    private final void e(String str) {
        me meVarRemove = this.f5249a.remove(str);
        if (meVarRemove != null) {
            this.f5250b -= meVarRemove.f5304a;
        }
    }

    @Override // com.google.android.gms.internal.ads.zm
    public final synchronized agm a(String str) {
        agm agmVar;
        me meVar = this.f5249a.get(str);
        if (meVar == null) {
            agmVar = null;
        } else {
            File fileD = d(str);
            try {
                ne neVar = new ne(new BufferedInputStream(a(fileD)), fileD.length());
                try {
                    me meVarA = me.a(neVar);
                    if (TextUtils.equals(str, meVarA.f5305b)) {
                        byte[] bArrA = a(neVar, neVar.a());
                        agm agmVar2 = new agm();
                        agmVar2.f3961a = bArrA;
                        agmVar2.f3962b = meVar.f5306c;
                        agmVar2.f3963c = meVar.f5307d;
                        agmVar2.f3964d = meVar.e;
                        agmVar2.e = meVar.f;
                        agmVar2.f = meVar.g;
                        List<apn> list = meVar.h;
                        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                        for (apn apnVar : list) {
                            treeMap.put(apnVar.a(), apnVar.b());
                        }
                        agmVar2.g = treeMap;
                        agmVar2.h = Collections.unmodifiableList(meVar.h);
                        neVar.close();
                        agmVar = agmVar2;
                    } else {
                        eb.b("%s: key=%s, found=%s", fileD.getAbsolutePath(), str, meVarA.f5305b);
                        e(str);
                        agmVar = null;
                    }
                } finally {
                    neVar.close();
                }
            } catch (IOException e) {
                eb.b("%s: %s", fileD.getAbsolutePath(), e.toString());
                b(str);
                agmVar = null;
            }
        }
        return agmVar;
    }

    @Override // com.google.android.gms.internal.ads.zm
    public final synchronized void a() {
        if (this.f5251c.exists()) {
            File[] fileArrListFiles = this.f5251c.listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    try {
                        long length = file.length();
                        ne neVar = new ne(new BufferedInputStream(a(file)), length);
                        try {
                            me meVarA = me.a(neVar);
                            meVarA.f5304a = length;
                            a(meVarA.f5305b, meVarA);
                            neVar.close();
                        } catch (Throwable th) {
                            neVar.close();
                            throw th;
                        }
                    } catch (IOException e) {
                        file.delete();
                    }
                }
            }
        } else if (!this.f5251c.mkdirs()) {
            eb.c("Unable to create cache dir %s", this.f5251c.getAbsolutePath());
        }
    }

    @Override // com.google.android.gms.internal.ads.zm
    public final synchronized void a(String str, agm agmVar) {
        BufferedOutputStream bufferedOutputStream;
        me meVar;
        int i;
        int i2 = 0;
        synchronized (this) {
            if (this.f5250b + ((long) agmVar.f3961a.length) >= this.f5252d) {
                if (eb.f4947a) {
                    eb.a("Pruning old cache entries.", new Object[0]);
                }
                long j = this.f5250b;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                Iterator<Map.Entry<String, me>> it = this.f5249a.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        i = i2;
                        break;
                    }
                    me value = it.next().getValue();
                    if (d(value.f5305b).delete()) {
                        this.f5250b -= value.f5304a;
                    } else {
                        eb.b("Could not delete cache entry for key=%s, filename=%s", value.f5305b, c(value.f5305b));
                    }
                    it.remove();
                    i = i2 + 1;
                    if (this.f5250b + ((long) r2) < this.f5252d * 0.9f) {
                        break;
                    } else {
                        i2 = i;
                    }
                }
                if (eb.f4947a) {
                    eb.a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f5250b - j), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
                }
            }
            File fileD = d(str);
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileD));
                meVar = new me(str, agmVar);
            } catch (IOException e) {
                if (!fileD.delete()) {
                    eb.b("Could not clean up file %s", fileD.getAbsolutePath());
                }
            }
            if (!meVar.a(bufferedOutputStream)) {
                bufferedOutputStream.close();
                eb.b("Failed to write header for %s", fileD.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(agmVar.f3961a);
            bufferedOutputStream.close();
            a(str, meVar);
        }
    }
}
