package c;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class q extends ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final v f2810a = v.a("application/x-www-form-urlencoded");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<String> f2811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<String> f2812c;

    private q(List<String> list, List<String> list2) {
        this.f2811b = c.a.c.a(list);
        this.f2812c = c.a.c.a(list2);
    }

    @Override // c.ab
    public v a() {
        return f2810a;
    }

    @Override // c.ab
    public long b() {
        return a((d.d) null, true);
    }

    @Override // c.ab
    public void a(d.d dVar) throws IOException {
        a(dVar, false);
    }

    private long a(d.d dVar, boolean z) {
        d.c cVarC;
        if (z) {
            cVarC = new d.c();
        } else {
            cVarC = dVar.c();
        }
        int size = this.f2811b.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                cVarC.i(38);
            }
            cVarC.b(this.f2811b.get(i));
            cVarC.i(61);
            cVarC.b(this.f2812c.get(i));
        }
        if (!z) {
            return 0L;
        }
        long jB = cVarC.b();
        cVarC.t();
        return jB;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f2813a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<String> f2814b = new ArrayList();

        public a a(String str, String str2) {
            this.f2813a.add(t.a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true));
            this.f2814b.add(t.a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true));
            return this;
        }

        public a b(String str, String str2) {
            this.f2813a.add(t.a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true));
            this.f2814b.add(t.a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true));
            return this;
        }

        public q a() {
            return new q(this.f2813a, this.f2814b);
        }
    }
}
