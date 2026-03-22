package android.support.v7.view;

import android.support.v4.view.w;
import android.support.v4.view.x;
import android.support.v4.view.y;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    x f1344b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Interpolator f1346d;
    private boolean e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f1345c = -1;
    private final y f = new y() { // from class: android.support.v7.view.h.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1348b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1349c = 0;

        @Override // android.support.v4.view.y, android.support.v4.view.x
        public void onAnimationStart(View view) {
            if (!this.f1348b) {
                this.f1348b = true;
                if (h.this.f1344b != null) {
                    h.this.f1344b.onAnimationStart(null);
                }
            }
        }

        void a() {
            this.f1349c = 0;
            this.f1348b = false;
            h.this.b();
        }

        @Override // android.support.v4.view.y, android.support.v4.view.x
        public void onAnimationEnd(View view) {
            int i = this.f1349c + 1;
            this.f1349c = i;
            if (i == h.this.f1343a.size()) {
                if (h.this.f1344b != null) {
                    h.this.f1344b.onAnimationEnd(null);
                }
                a();
            }
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList<w> f1343a = new ArrayList<>();

    public h a(w wVar) {
        if (!this.e) {
            this.f1343a.add(wVar);
        }
        return this;
    }

    public h a(w wVar, w wVar2) {
        this.f1343a.add(wVar);
        wVar2.b(wVar.a());
        this.f1343a.add(wVar2);
        return this;
    }

    public void a() {
        if (!this.e) {
            for (w wVar : this.f1343a) {
                if (this.f1345c >= 0) {
                    wVar.a(this.f1345c);
                }
                if (this.f1346d != null) {
                    wVar.a(this.f1346d);
                }
                if (this.f1344b != null) {
                    wVar.a(this.f);
                }
                wVar.c();
            }
            this.e = true;
        }
    }

    void b() {
        this.e = false;
    }

    public void c() {
        if (this.e) {
            Iterator<w> it = this.f1343a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.e = false;
        }
    }

    public h a(long j) {
        if (!this.e) {
            this.f1345c = j;
        }
        return this;
    }

    public h a(Interpolator interpolator) {
        if (!this.e) {
            this.f1346d = interpolator;
        }
        return this;
    }

    public h a(x xVar) {
        if (!this.e) {
            this.f1344b = xVar;
        }
        return this;
    }
}
