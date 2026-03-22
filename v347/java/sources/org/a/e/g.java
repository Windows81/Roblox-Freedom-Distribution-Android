package org.a.e;

import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class g implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f8212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TreeMap<String, String> f8213b = new TreeMap<>(String.CASE_INSENSITIVE_ORDER);

    @Override // org.a.e.f
    public Iterator<String> b() {
        return Collections.unmodifiableSet(this.f8213b.keySet()).iterator();
    }

    @Override // org.a.e.f
    public String b(String str) {
        String str2 = this.f8213b.get(str);
        if (str2 == null) {
            return "";
        }
        return str2;
    }

    @Override // org.a.e.f
    public byte[] c() {
        return this.f8212a;
    }

    @Override // org.a.e.c
    public void a(byte[] bArr) {
        this.f8212a = bArr;
    }

    @Override // org.a.e.c
    public void a(String str, String str2) {
        this.f8213b.put(str, str2);
    }

    @Override // org.a.e.f
    public boolean c(String str) {
        return this.f8213b.containsKey(str);
    }
}
