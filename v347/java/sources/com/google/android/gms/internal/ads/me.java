package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class me {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f5304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f5305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String f5306c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final long f5307d;
    final long e;
    final long f;
    final long g;
    final List<apn> h;

    /* JADX WARN: Illegal instructions before constructor call */
    me(String str, agm agmVar) {
        List arrayList;
        String str2 = agmVar.f3962b;
        long j = agmVar.f3963c;
        long j2 = agmVar.f3964d;
        long j3 = agmVar.e;
        long j4 = agmVar.f;
        if (agmVar.h != null) {
            arrayList = agmVar.h;
        } else {
            Map<String, String> map = agmVar.g;
            arrayList = new ArrayList(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                arrayList.add(new apn(entry.getKey(), entry.getValue()));
            }
        }
        this(str, str2, j, j2, j3, j4, arrayList);
        this.f5304a = agmVar.f3961a.length;
    }

    private me(String str, String str2, long j, long j2, long j3, long j4, List<apn> list) {
        this.f5305b = str;
        this.f5306c = "".equals(str2) ? null : str2;
        this.f5307d = j;
        this.e = j2;
        this.f = j3;
        this.g = j4;
        this.h = list;
    }

    static me a(ne neVar) throws IOException {
        if (ld.a((InputStream) neVar) != 538247942) {
            throw new IOException();
        }
        return new me(ld.a(neVar), ld.a(neVar), ld.b((InputStream) neVar), ld.b((InputStream) neVar), ld.b((InputStream) neVar), ld.b((InputStream) neVar), ld.b(neVar));
    }

    final boolean a(OutputStream outputStream) {
        try {
            ld.a(outputStream, 538247942);
            ld.a(outputStream, this.f5305b);
            ld.a(outputStream, this.f5306c == null ? "" : this.f5306c);
            ld.a(outputStream, this.f5307d);
            ld.a(outputStream, this.e);
            ld.a(outputStream, this.f);
            ld.a(outputStream, this.g);
            List<apn> list = this.h;
            if (list != null) {
                ld.a(outputStream, list.size());
                for (apn apnVar : list) {
                    ld.a(outputStream, apnVar.a());
                    ld.a(outputStream, apnVar.b());
                }
            } else {
                ld.a(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e) {
            eb.b("%s", e.toString());
            return false;
        }
    }
}
