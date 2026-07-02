package b;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class p extends aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final u f2055a = u.a("application/x-www-form-urlencoded");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<String> f2056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<String> f2057c;

    private p(List<String> list, List<String> list2) {
        this.f2056b = b.a.c.a(list);
        this.f2057c = b.a.c.a(list2);
    }

    @Override // b.aa
    public u a() {
        return f2055a;
    }

    @Override // b.aa
    public long b() {
        return a((c.d) null, true);
    }

    @Override // b.aa
    public void a(c.d dVar) throws IOException {
        a(dVar, false);
    }

    private long a(c.d dVar, boolean z) {
        c.c cVarC;
        long jB = 0;
        if (z) {
            cVarC = new c.c();
        } else {
            cVarC = dVar.c();
        }
        int size = this.f2056b.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                cVarC.i(38);
            }
            cVarC.b(this.f2056b.get(i));
            cVarC.i(61);
            cVarC.b(this.f2057c.get(i));
        }
        if (z) {
            jB = cVarC.b();
            cVarC.t();
        }
        return jB;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f2058a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<String> f2059b = new ArrayList();

        public a a(String str, String str2) {
            this.f2058a.add(s.a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true));
            this.f2059b.add(s.a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true));
            return this;
        }

        public a b(String str, String str2) {
            this.f2058a.add(s.a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true));
            this.f2059b.add(s.a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true));
            return this;
        }

        public p a() {
            return new p(this.f2058a, this.f2059b);
        }
    }
}
