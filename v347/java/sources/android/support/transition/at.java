package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.support.transition.b;
import android.support.transition.u;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class at extends u {
    private static final String[] g = {"android:visibility:visibility", "android:visibility:parent"};
    private int h = 3;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f517a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f518b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f519c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f520d;
        ViewGroup e;
        ViewGroup f;

        private b() {
        }
    }

    public void a(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.h = i;
    }

    @Override // android.support.transition.u
    public String[] a() {
        return g;
    }

    private void d(aa aaVar) {
        aaVar.f474a.put("android:visibility:visibility", Integer.valueOf(aaVar.f475b.getVisibility()));
        aaVar.f474a.put("android:visibility:parent", aaVar.f475b.getParent());
        int[] iArr = new int[2];
        aaVar.f475b.getLocationOnScreen(iArr);
        aaVar.f474a.put("android:visibility:screenLocation", iArr);
    }

    @Override // android.support.transition.u
    public void a(aa aaVar) {
        d(aaVar);
    }

    @Override // android.support.transition.u
    public void b(aa aaVar) {
        d(aaVar);
    }

    private b b(aa aaVar, aa aaVar2) {
        b bVar = new b();
        bVar.f517a = false;
        bVar.f518b = false;
        if (aaVar != null && aaVar.f474a.containsKey("android:visibility:visibility")) {
            bVar.f519c = ((Integer) aaVar.f474a.get("android:visibility:visibility")).intValue();
            bVar.e = (ViewGroup) aaVar.f474a.get("android:visibility:parent");
        } else {
            bVar.f519c = -1;
            bVar.e = null;
        }
        if (aaVar2 != null && aaVar2.f474a.containsKey("android:visibility:visibility")) {
            bVar.f520d = ((Integer) aaVar2.f474a.get("android:visibility:visibility")).intValue();
            bVar.f = (ViewGroup) aaVar2.f474a.get("android:visibility:parent");
        } else {
            bVar.f520d = -1;
            bVar.f = null;
        }
        if (aaVar != null && aaVar2 != null) {
            if (bVar.f519c == bVar.f520d && bVar.e == bVar.f) {
                return bVar;
            }
            if (bVar.f519c != bVar.f520d) {
                if (bVar.f519c == 0) {
                    bVar.f518b = false;
                    bVar.f517a = true;
                } else if (bVar.f520d == 0) {
                    bVar.f518b = true;
                    bVar.f517a = true;
                }
            } else if (bVar.f == null) {
                bVar.f518b = false;
                bVar.f517a = true;
            } else if (bVar.e == null) {
                bVar.f518b = true;
                bVar.f517a = true;
            }
        } else if (aaVar == null && bVar.f520d == 0) {
            bVar.f518b = true;
            bVar.f517a = true;
        } else if (aaVar2 == null && bVar.f519c == 0) {
            bVar.f518b = false;
            bVar.f517a = true;
        }
        return bVar;
    }

    @Override // android.support.transition.u
    public Animator a(ViewGroup viewGroup, aa aaVar, aa aaVar2) {
        b bVarB = b(aaVar, aaVar2);
        if (bVarB.f517a && (bVarB.e != null || bVarB.f != null)) {
            if (bVarB.f518b) {
                return a(viewGroup, aaVar, bVarB.f519c, aaVar2, bVarB.f520d);
            }
            return b(viewGroup, aaVar, bVarB.f519c, aaVar2, bVarB.f520d);
        }
        return null;
    }

    public Animator a(ViewGroup viewGroup, aa aaVar, int i, aa aaVar2, int i2) {
        if ((this.h & 1) != 1 || aaVar2 == null) {
            return null;
        }
        if (aaVar == null) {
            View view = (View) aaVar2.f475b.getParent();
            if (b(b(view, false), a(view, false)).f517a) {
                return null;
            }
        }
        return a(viewGroup, aaVar2.f475b, aaVar, aaVar2);
    }

    public Animator a(ViewGroup viewGroup, View view, aa aaVar, aa aaVar2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.animation.Animator b(android.view.ViewGroup r9, android.support.transition.aa r10, int r11, android.support.transition.aa r12, int r13) {
        /*
            Method dump skipped, instruction units count: 237
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.at.b(android.view.ViewGroup, android.support.transition.aa, int, android.support.transition.aa, int):android.animation.Animator");
    }

    public Animator b(ViewGroup viewGroup, View view, aa aaVar, aa aaVar2) {
        return null;
    }

    @Override // android.support.transition.u
    public boolean a(aa aaVar, aa aaVar2) {
        if (aaVar == null && aaVar2 == null) {
            return false;
        }
        if (aaVar != null && aaVar2 != null && aaVar2.f474a.containsKey("android:visibility:visibility") != aaVar.f474a.containsKey("android:visibility:visibility")) {
            return false;
        }
        b bVarB = b(aaVar, aaVar2);
        if (bVarB.f517a) {
            return bVarB.f519c == 0 || bVarB.f520d == 0;
        }
        return false;
    }

    private static class a extends AnimatorListenerAdapter implements b.a, u.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f513a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f514b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f515c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ViewGroup f516d;
        private final boolean e;
        private boolean f;

        a(View view, int i, boolean z) {
            this.f514b = view;
            this.f515c = i;
            this.f516d = (ViewGroup) view.getParent();
            this.e = z;
            a(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, android.support.transition.b.a
        public void onAnimationPause(Animator animator) {
            if (!this.f513a) {
                am.a(this.f514b, this.f515c);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, android.support.transition.b.a
        public void onAnimationResume(Animator animator) {
            if (!this.f513a) {
                am.a(this.f514b, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f513a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a();
        }

        @Override // android.support.transition.u.c
        public void d(u uVar) {
        }

        @Override // android.support.transition.u.c
        public void a(u uVar) {
            a();
            uVar.b(this);
        }

        @Override // android.support.transition.u.c
        public void b(u uVar) {
            a(false);
        }

        @Override // android.support.transition.u.c
        public void c(u uVar) {
            a(true);
        }

        private void a() {
            if (!this.f513a) {
                am.a(this.f514b, this.f515c);
                if (this.f516d != null) {
                    this.f516d.invalidate();
                }
            }
            a(false);
        }

        private void a(boolean z) {
            if (this.e && this.f != z && this.f516d != null) {
                this.f = z;
                af.a(this.f516d, z);
            }
        }
    }
}
