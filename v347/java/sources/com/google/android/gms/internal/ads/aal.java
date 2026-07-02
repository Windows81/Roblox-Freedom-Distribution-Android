package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class aal implements aeq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aaj f3706a;

    private aal(aaj aajVar) {
        this.f3706a = (aaj) abf.a(aajVar, "output");
        this.f3706a.f3702a = this;
    }

    public static aal a(aaj aajVar) {
        return aajVar.f3702a != null ? aajVar.f3702a : new aal(aajVar);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final int a() {
        return abd.e.j;
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i) throws IOException {
        this.f3706a.a(i, 3);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, double d2) throws IOException {
        this.f3706a.a(i, d2);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, float f) throws IOException {
        this.f3706a.a(i, f);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, int i2) throws IOException {
        this.f3706a.e(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, long j) throws IOException {
        this.f3706a.a(i, j);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final <K, V> void a(int i, acd<K, V> acdVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f3706a.a(i, 2);
            this.f3706a.b(acc.a(acdVar, entry.getKey(), entry.getValue()));
            acc.a(this.f3706a, acdVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, zv zvVar) throws IOException {
        this.f3706a.a(i, zvVar);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, Object obj) throws IOException {
        if (obj instanceof zv) {
            this.f3706a.b(i, (zv) obj);
        } else {
            this.f3706a.a(i, (ack) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, Object obj, add addVar) throws IOException {
        this.f3706a.a(i, (ack) obj, addVar);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, String str) throws IOException {
        this.f3706a.a(i, str);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, List<String> list) throws IOException {
        int i2 = 0;
        if (!(list instanceof abt)) {
            while (i2 < list.size()) {
                this.f3706a.a(i, list.get(i2));
                i2++;
            }
            return;
        }
        abt abtVar = (abt) list;
        while (true) {
            int i3 = i2;
            if (i3 >= list.size()) {
                return;
            }
            Object objB = abtVar.b(i3);
            if (objB instanceof String) {
                this.f3706a.a(i, (String) objB);
            } else {
                this.f3706a.a(i, (zv) objB);
            }
            i2 = i3 + 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, List<?> list, add addVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            a(i, list.get(i2), addVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.b(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iF = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iF += aaj.f(list.get(i3).intValue());
        }
        this.f3706a.b(iF);
        while (i2 < list.size()) {
            this.f3706a.a(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void a(int i, boolean z) throws IOException {
        this.f3706a.a(i, z);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void b(int i) throws IOException {
        this.f3706a.a(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void b(int i, int i2) throws IOException {
        this.f3706a.b(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void b(int i, long j) throws IOException {
        this.f3706a.c(i, j);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void b(int i, Object obj, add addVar) throws IOException {
        aaj aajVar = this.f3706a;
        aajVar.a(i, 3);
        addVar.a((ack) obj, aajVar.f3702a);
        aajVar.a(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void b(int i, List<zv> list) throws IOException {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= list.size()) {
                return;
            }
            this.f3706a.a(i, list.get(i3));
            i2 = i3 + 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void b(int i, List<?> list, add addVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            b(i, list.get(i2), addVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void b(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.e(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += aaj.i(list.get(i4).intValue());
        }
        this.f3706a.b(i3);
        while (i2 < list.size()) {
            this.f3706a.d(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void c(int i, int i2) throws IOException {
        this.f3706a.b(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void c(int i, long j) throws IOException {
        this.f3706a.a(i, j);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void c(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.a(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iD = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iD += aaj.d(list.get(i3).longValue());
        }
        this.f3706a.b(iD);
        while (i2 < list.size()) {
            this.f3706a.a(list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void d(int i, int i2) throws IOException {
        this.f3706a.e(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void d(int i, long j) throws IOException {
        this.f3706a.c(i, j);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void d(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.a(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iE = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iE += aaj.e(list.get(i3).longValue());
        }
        this.f3706a.b(iE);
        while (i2 < list.size()) {
            this.f3706a.a(list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void e(int i, int i2) throws IOException {
        this.f3706a.c(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void e(int i, long j) throws IOException {
        this.f3706a.b(i, j);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void e(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.c(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iG = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iG += aaj.g(list.get(i3).longValue());
        }
        this.f3706a.b(iG);
        while (i2 < list.size()) {
            this.f3706a.c(list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void f(int i, int i2) throws IOException {
        this.f3706a.d(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void f(int i, List<Float> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.a(i, list.get(i2).floatValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iB = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iB += aaj.b(list.get(i3).floatValue());
        }
        this.f3706a.b(iB);
        while (i2 < list.size()) {
            this.f3706a.a(list.get(i2).floatValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void g(int i, List<Double> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.a(i, list.get(i2).doubleValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iB = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iB += aaj.b(list.get(i3).doubleValue());
        }
        this.f3706a.b(iB);
        while (i2 < list.size()) {
            this.f3706a.a(list.get(i2).doubleValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void h(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.b(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iK = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iK += aaj.k(list.get(i3).intValue());
        }
        this.f3706a.b(iK);
        while (i2 < list.size()) {
            this.f3706a.a(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void i(int i, List<Boolean> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.a(i, list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iB = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iB += aaj.b(list.get(i3).booleanValue());
        }
        this.f3706a.b(iB);
        while (i2 < list.size()) {
            this.f3706a.a(list.get(i2).booleanValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void j(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.c(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iG = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iG += aaj.g(list.get(i3).intValue());
        }
        this.f3706a.b(iG);
        while (i2 < list.size()) {
            this.f3706a.b(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void k(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.e(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iJ += aaj.j(list.get(i3).intValue());
        }
        this.f3706a.b(iJ);
        while (i2 < list.size()) {
            this.f3706a.d(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void l(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.c(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iH = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iH += aaj.h(list.get(i3).longValue());
        }
        this.f3706a.b(iH);
        while (i2 < list.size()) {
            this.f3706a.c(list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void m(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.d(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iH = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iH += aaj.h(list.get(i3).intValue());
        }
        this.f3706a.b(iH);
        while (i2 < list.size()) {
            this.f3706a.c(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.aeq
    public final void n(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f3706a.b(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        this.f3706a.a(i, 2);
        int iF = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iF += aaj.f(list.get(i3).longValue());
        }
        this.f3706a.b(iF);
        while (i2 < list.size()) {
            this.f3706a.b(list.get(i2).longValue());
            i2++;
        }
    }
}
