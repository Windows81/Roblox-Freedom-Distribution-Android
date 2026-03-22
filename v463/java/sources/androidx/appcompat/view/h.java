package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.h.v;
import androidx.core.h.w;
import androidx.core.h.x;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    w f771b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Interpolator f773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f774e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f772c = -1;
    private final x f = new x() { // from class: androidx.appcompat.view.h.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f776b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f777c = 0;

        @Override // androidx.core.h.x, androidx.core.h.w
        public void onAnimationStart(View view) {
            if (this.f776b) {
                return;
            }
            this.f776b = true;
            if (h.this.f771b != null) {
                h.this.f771b.onAnimationStart(null);
            }
        }

        void a() {
            this.f777c = 0;
            this.f776b = false;
            h.this.b();
        }

        @Override // androidx.core.h.x, androidx.core.h.w
        public void onAnimationEnd(View view) {
            int i = this.f777c + 1;
            this.f777c = i;
            if (i == h.this.f770a.size()) {
                if (h.this.f771b != null) {
                    h.this.f771b.onAnimationEnd(null);
                }
                a();
            }
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList<v> f770a = new ArrayList<>();

    public h a(v vVar) {
        if (!this.f774e) {
            this.f770a.add(vVar);
        }
        return this;
    }

    public h a(v vVar, v vVar2) {
        this.f770a.add(vVar);
        vVar2.b(vVar.a());
        this.f770a.add(vVar2);
        return this;
    }

    public void a() {
        if (this.f774e) {
            return;
        }
        for (v vVar : this.f770a) {
            long j = this.f772c;
            if (j >= 0) {
                vVar.a(j);
            }
            Interpolator interpolator = this.f773d;
            if (interpolator != null) {
                vVar.a(interpolator);
            }
            if (this.f771b != null) {
                vVar.a(this.f);
            }
            vVar.c();
        }
        this.f774e = true;
    }

    void b() {
        this.f774e = false;
    }

    public void c() {
        if (this.f774e) {
            Iterator<v> it = this.f770a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.f774e = false;
        }
    }

    public h a(long j) {
        if (!this.f774e) {
            this.f772c = j;
        }
        return this;
    }

    public h a(Interpolator interpolator) {
        if (!this.f774e) {
            this.f773d = interpolator;
        }
        return this;
    }

    public h a(w wVar) {
        if (!this.f774e) {
            this.f771b = wVar;
        }
        return this;
    }
}
