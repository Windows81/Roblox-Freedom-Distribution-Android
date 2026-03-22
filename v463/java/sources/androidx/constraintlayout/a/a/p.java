package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.e;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<a> f1165e = new ArrayList<>();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private e f1166a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e f1167b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1168c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private e.b f1169d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1170e;

        public a(e eVar) {
            this.f1166a = eVar;
            this.f1167b = eVar.g();
            this.f1168c = eVar.e();
            this.f1169d = eVar.f();
            this.f1170e = eVar.h();
        }

        public void a(f fVar) {
            e eVarA = fVar.a(this.f1166a.d());
            this.f1166a = eVarA;
            if (eVarA != null) {
                this.f1167b = eVarA.g();
                this.f1168c = this.f1166a.e();
                this.f1169d = this.f1166a.f();
                this.f1170e = this.f1166a.h();
                return;
            }
            this.f1167b = null;
            this.f1168c = 0;
            this.f1169d = e.b.STRONG;
            this.f1170e = 0;
        }

        public void b(f fVar) {
            fVar.a(this.f1166a.d()).a(this.f1167b, this.f1168c, this.f1169d, this.f1170e);
        }
    }

    public p(f fVar) {
        this.f1161a = fVar.n();
        this.f1162b = fVar.o();
        this.f1163c = fVar.p();
        this.f1164d = fVar.r();
        ArrayList<e> arrayListC = fVar.C();
        int size = arrayListC.size();
        for (int i = 0; i < size; i++) {
            this.f1165e.add(new a(arrayListC.get(i)));
        }
    }

    public void a(f fVar) {
        this.f1161a = fVar.n();
        this.f1162b = fVar.o();
        this.f1163c = fVar.p();
        this.f1164d = fVar.r();
        int size = this.f1165e.size();
        for (int i = 0; i < size; i++) {
            this.f1165e.get(i).a(fVar);
        }
    }

    public void b(f fVar) {
        fVar.h(this.f1161a);
        fVar.i(this.f1162b);
        fVar.j(this.f1163c);
        fVar.k(this.f1164d);
        int size = this.f1165e.size();
        for (int i = 0; i < size; i++) {
            this.f1165e.get(i).b(fVar);
        }
    }
}
