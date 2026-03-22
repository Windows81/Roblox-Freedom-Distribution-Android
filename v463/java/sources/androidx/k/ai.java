package androidx.k;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.k.a;
import androidx.k.m;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class ai extends m {
    private static final String[] h = {"android:visibility:visibility", "android:visibility:parent"};
    private int i = 3;

    public Animator a(ViewGroup viewGroup, View view, s sVar, s sVar2) {
        return null;
    }

    public Animator b(ViewGroup viewGroup, View view, s sVar, s sVar2) {
        return null;
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1952a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f1953b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1954c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1955d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ViewGroup f1956e;
        ViewGroup f;

        b() {
        }
    }

    public void a(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.i = i;
    }

    @Override // androidx.k.m
    public String[] a() {
        return h;
    }

    private void d(s sVar) {
        sVar.f2030a.put("android:visibility:visibility", Integer.valueOf(sVar.f2031b.getVisibility()));
        sVar.f2030a.put("android:visibility:parent", sVar.f2031b.getParent());
        int[] iArr = new int[2];
        sVar.f2031b.getLocationOnScreen(iArr);
        sVar.f2030a.put("android:visibility:screenLocation", iArr);
    }

    @Override // androidx.k.m
    public void a(s sVar) {
        d(sVar);
    }

    @Override // androidx.k.m
    public void b(s sVar) {
        d(sVar);
    }

    private b b(s sVar, s sVar2) {
        b bVar = new b();
        bVar.f1952a = false;
        bVar.f1953b = false;
        if (sVar != null && sVar.f2030a.containsKey("android:visibility:visibility")) {
            bVar.f1954c = ((Integer) sVar.f2030a.get("android:visibility:visibility")).intValue();
            bVar.f1956e = (ViewGroup) sVar.f2030a.get("android:visibility:parent");
        } else {
            bVar.f1954c = -1;
            bVar.f1956e = null;
        }
        if (sVar2 != null && sVar2.f2030a.containsKey("android:visibility:visibility")) {
            bVar.f1955d = ((Integer) sVar2.f2030a.get("android:visibility:visibility")).intValue();
            bVar.f = (ViewGroup) sVar2.f2030a.get("android:visibility:parent");
        } else {
            bVar.f1955d = -1;
            bVar.f = null;
        }
        if (sVar != null && sVar2 != null) {
            if (bVar.f1954c == bVar.f1955d && bVar.f1956e == bVar.f) {
                return bVar;
            }
            if (bVar.f1954c != bVar.f1955d) {
                if (bVar.f1954c == 0) {
                    bVar.f1953b = false;
                    bVar.f1952a = true;
                } else if (bVar.f1955d == 0) {
                    bVar.f1953b = true;
                    bVar.f1952a = true;
                }
            } else if (bVar.f == null) {
                bVar.f1953b = false;
                bVar.f1952a = true;
            } else if (bVar.f1956e == null) {
                bVar.f1953b = true;
                bVar.f1952a = true;
            }
        } else if (sVar == null && bVar.f1955d == 0) {
            bVar.f1953b = true;
            bVar.f1952a = true;
        } else if (sVar2 == null && bVar.f1954c == 0) {
            bVar.f1953b = false;
            bVar.f1952a = true;
        }
        return bVar;
    }

    @Override // androidx.k.m
    public Animator a(ViewGroup viewGroup, s sVar, s sVar2) {
        b bVarB = b(sVar, sVar2);
        if (!bVarB.f1952a) {
            return null;
        }
        if (bVarB.f1956e == null && bVarB.f == null) {
            return null;
        }
        if (bVarB.f1953b) {
            return a(viewGroup, sVar, bVarB.f1954c, sVar2, bVarB.f1955d);
        }
        return b(viewGroup, sVar, bVarB.f1954c, sVar2, bVarB.f1955d);
    }

    public Animator a(ViewGroup viewGroup, s sVar, int i, s sVar2, int i2) {
        if ((this.i & 1) != 1 || sVar2 == null) {
            return null;
        }
        if (sVar == null) {
            View view = (View) sVar2.f2031b.getParent();
            if (b(b(view, false), a(view, false)).f1952a) {
                return null;
            }
        }
        return a(viewGroup, sVar2.f2031b, sVar, sVar2);
    }

    public Animator b(ViewGroup viewGroup, s sVar, int i, s sVar2, int i2) {
        int id;
        if ((this.i & 2) != 2) {
            return null;
        }
        final View viewA = sVar != null ? sVar.f2031b : null;
        View view = sVar2 != null ? sVar2.f2031b : null;
        if (view == null || view.getParent() == null) {
            if (view != null) {
                viewA = view;
            } else {
                if (viewA != null) {
                    if (viewA.getParent() != null) {
                        if (viewA.getParent() instanceof View) {
                            View view2 = (View) viewA.getParent();
                            if (!b(a(view2, true), b(view2, true)).f1952a) {
                                viewA = r.a(viewGroup, viewA, view2);
                            } else if (view2.getParent() != null || (id = view2.getId()) == -1 || viewGroup.findViewById(id) == null || !this.f2008e) {
                                viewA = null;
                            }
                        }
                    }
                }
                viewA = null;
                view = null;
            }
            view = null;
        } else if (i2 == 4 || viewA == view) {
            viewA = null;
        } else {
            if (!this.f2008e) {
                viewA = r.a(viewGroup, viewA, (View) viewA.getParent());
            }
            view = null;
        }
        if (viewA == null || sVar == null) {
            if (view == null) {
                return null;
            }
            int visibility = view.getVisibility();
            ad.a(view, 0);
            Animator animatorB = b(viewGroup, view, sVar, sVar2);
            if (animatorB != null) {
                a aVar = new a(view, i2, true);
                animatorB.addListener(aVar);
                androidx.k.a.a(animatorB, aVar);
                a(aVar);
            } else {
                ad.a(view, visibility);
            }
            return animatorB;
        }
        int[] iArr = (int[]) sVar.f2030a.get("android:visibility:screenLocation");
        int i3 = iArr[0];
        int i4 = iArr[1];
        int[] iArr2 = new int[2];
        viewGroup.getLocationOnScreen(iArr2);
        viewA.offsetLeftAndRight((i3 - iArr2[0]) - viewA.getLeft());
        viewA.offsetTopAndBottom((i4 - iArr2[1]) - viewA.getTop());
        final w wVarA = x.a(viewGroup);
        wVarA.a(viewA);
        Animator animatorB2 = b(viewGroup, viewA, sVar, sVar2);
        if (animatorB2 == null) {
            wVarA.b(viewA);
        } else {
            animatorB2.addListener(new AnimatorListenerAdapter() { // from class: androidx.k.ai.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    wVarA.b(viewA);
                }
            });
        }
        return animatorB2;
    }

    @Override // androidx.k.m
    public boolean a(s sVar, s sVar2) {
        if (sVar == null && sVar2 == null) {
            return false;
        }
        if (sVar != null && sVar2 != null && sVar2.f2030a.containsKey("android:visibility:visibility") != sVar.f2030a.containsKey("android:visibility:visibility")) {
            return false;
        }
        b bVarB = b(sVar, sVar2);
        if (bVarB.f1952a) {
            return bVarB.f1954c == 0 || bVarB.f1955d == 0;
        }
        return false;
    }

    private static class a extends AnimatorListenerAdapter implements a.InterfaceC0052a, m.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1947a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f1948b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f1949c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ViewGroup f1950d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f1951e;
        private boolean f;

        @Override // androidx.k.m.c
        public void d(m mVar) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        a(View view, int i, boolean z) {
            this.f1948b = view;
            this.f1949c = i;
            this.f1950d = (ViewGroup) view.getParent();
            this.f1951e = z;
            a(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.k.a.InterfaceC0052a
        public void onAnimationPause(Animator animator) {
            if (this.f1947a) {
                return;
            }
            ad.a(this.f1948b, this.f1949c);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.k.a.InterfaceC0052a
        public void onAnimationResume(Animator animator) {
            if (this.f1947a) {
                return;
            }
            ad.a(this.f1948b, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1947a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a();
        }

        @Override // androidx.k.m.c
        public void a(m mVar) {
            a();
            mVar.b(this);
        }

        @Override // androidx.k.m.c
        public void b(m mVar) {
            a(false);
        }

        @Override // androidx.k.m.c
        public void c(m mVar) {
            a(true);
        }

        private void a() {
            if (!this.f1947a) {
                ad.a(this.f1948b, this.f1949c);
                ViewGroup viewGroup = this.f1950d;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            a(false);
        }

        private void a(boolean z) {
            ViewGroup viewGroup;
            if (!this.f1951e || this.f == z || (viewGroup = this.f1950d) == null) {
                return;
            }
            this.f = z;
            x.a(viewGroup, z);
        }
    }
}
