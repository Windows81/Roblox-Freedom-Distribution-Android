package android.support.transition;

import android.support.transition.u;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class y extends u {
    private int i;
    private ArrayList<u> g = new ArrayList<>();
    private boolean h = true;
    private boolean j = false;

    static /* synthetic */ int b(y yVar) {
        int i = yVar.i - 1;
        yVar.i = i;
        return i;
    }

    public y a(int i) {
        switch (i) {
            case 0:
                this.h = true;
                return this;
            case 1:
                this.h = false;
                return this;
            default:
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
        }
    }

    public y b(u uVar) {
        this.g.add(uVar);
        uVar.f557d = this;
        if (this.f554a >= 0) {
            uVar.a(this.f554a);
        }
        return this;
    }

    public int o() {
        return this.g.size();
    }

    public u b(int i) {
        if (i < 0 || i >= this.g.size()) {
            return null;
        }
        return this.g.get(i);
    }

    @Override // android.support.transition.u
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public y a(long j) {
        super.a(j);
        if (this.f554a >= 0) {
            int size = this.g.size();
            for (int i = 0; i < size; i++) {
                this.g.get(i).a(j);
            }
        }
        return this;
    }

    @Override // android.support.transition.u
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public y b(long j) {
        return (y) super.b(j);
    }

    @Override // android.support.transition.u
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public y b(View view) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.g.size()) {
                this.g.get(i2).b(view);
                i = i2 + 1;
            } else {
                return (y) super.b(view);
            }
        }
    }

    @Override // android.support.transition.u
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public y a(u.c cVar) {
        return (y) super.a(cVar);
    }

    @Override // android.support.transition.u
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public y c(View view) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.g.size()) {
                this.g.get(i2).c(view);
                i = i2 + 1;
            } else {
                return (y) super.c(view);
            }
        }
    }

    @Override // android.support.transition.u
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public y b(u.c cVar) {
        return (y) super.b(cVar);
    }

    private void p() {
        a aVar = new a(this);
        Iterator<u> it = this.g.iterator();
        while (it.hasNext()) {
            it.next().a(aVar);
        }
        this.i = this.g.size();
    }

    static class a extends v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        y f574a;

        a(y yVar) {
            this.f574a = yVar;
        }

        @Override // android.support.transition.v, android.support.transition.u.c
        public void d(u uVar) {
            if (!this.f574a.j) {
                this.f574a.j();
                this.f574a.j = true;
            }
        }

        @Override // android.support.transition.v, android.support.transition.u.c
        public void a(u uVar) {
            y.b(this.f574a);
            if (this.f574a.i == 0) {
                this.f574a.j = false;
                this.f574a.k();
            }
            uVar.b(this);
        }
    }

    @Override // android.support.transition.u
    protected void a(ViewGroup viewGroup, ab abVar, ab abVar2, ArrayList<aa> arrayList, ArrayList<aa> arrayList2) {
        long jC = c();
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            u uVar = this.g.get(i);
            if (jC > 0 && (this.h || i == 0)) {
                long jC2 = uVar.c();
                if (jC2 > 0) {
                    uVar.b(jC2 + jC);
                } else {
                    uVar.b(jC);
                }
            }
            uVar.a(viewGroup, abVar, abVar2, arrayList, arrayList2);
        }
    }

    @Override // android.support.transition.u
    protected void e() {
        if (this.g.isEmpty()) {
            j();
            k();
            return;
        }
        p();
        if (!this.h) {
            int i = 1;
            while (true) {
                int i2 = i;
                if (i2 >= this.g.size()) {
                    break;
                }
                u uVar = this.g.get(i2 - 1);
                final u uVar2 = this.g.get(i2);
                uVar.a(new v() { // from class: android.support.transition.y.1
                    @Override // android.support.transition.v, android.support.transition.u.c
                    public void a(u uVar3) {
                        uVar2.e();
                        uVar3.b(this);
                    }
                });
                i = i2 + 1;
            }
            u uVar3 = this.g.get(0);
            if (uVar3 != null) {
                uVar3.e();
                return;
            }
            return;
        }
        Iterator<u> it = this.g.iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    @Override // android.support.transition.u
    public void a(aa aaVar) {
        if (a(aaVar.f475b)) {
            for (u uVar : this.g) {
                if (uVar.a(aaVar.f475b)) {
                    uVar.a(aaVar);
                    aaVar.f476c.add(uVar);
                }
            }
        }
    }

    @Override // android.support.transition.u
    public void b(aa aaVar) {
        if (a(aaVar.f475b)) {
            for (u uVar : this.g) {
                if (uVar.a(aaVar.f475b)) {
                    uVar.b(aaVar);
                    aaVar.f476c.add(uVar);
                }
            }
        }
    }

    @Override // android.support.transition.u
    void c(aa aaVar) {
        super.c(aaVar);
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            this.g.get(i).c(aaVar);
        }
    }

    @Override // android.support.transition.u
    public void d(View view) {
        super.d(view);
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            this.g.get(i).d(view);
        }
    }

    @Override // android.support.transition.u
    public void e(View view) {
        super.e(view);
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            this.g.get(i).e(view);
        }
    }

    @Override // android.support.transition.u
    public void a(u.b bVar) {
        super.a(bVar);
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            this.g.get(i).a(bVar);
        }
    }

    @Override // android.support.transition.u
    String a(String str) {
        String strA = super.a(str);
        int i = 0;
        while (i < this.g.size()) {
            String str2 = strA + "\n" + this.g.get(i).a(str + "  ");
            i++;
            strA = str2;
        }
        return strA;
    }

    @Override // android.support.transition.u
    /* JADX INFO: renamed from: m */
    public u clone() {
        y yVar = (y) super.clone();
        yVar.g = new ArrayList<>();
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            yVar.b(this.g.get(i).clone());
        }
        return yVar;
    }
}
