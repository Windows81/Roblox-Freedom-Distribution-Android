package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i extends androidx.core.h.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final RecyclerView f2386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final androidx.core.h.a f2387b = new a(this);

    public i(RecyclerView recyclerView) {
        this.f2386a = recyclerView;
    }

    boolean b() {
        return this.f2386a.v();
    }

    @Override // androidx.core.h.a
    public boolean a(View view, int i, Bundle bundle) {
        if (super.a(view, i, bundle)) {
            return true;
        }
        if (b() || this.f2386a.getLayoutManager() == null) {
            return false;
        }
        return this.f2386a.getLayoutManager().a(i, bundle);
    }

    @Override // androidx.core.h.a
    public void a(View view, androidx.core.h.a.c cVar) {
        super.a(view, cVar);
        cVar.a((CharSequence) RecyclerView.class.getName());
        if (b() || this.f2386a.getLayoutManager() == null) {
            return;
        }
        this.f2386a.getLayoutManager().a(cVar);
    }

    @Override // androidx.core.h.a
    public void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if (!(view instanceof RecyclerView) || b()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().a(accessibilityEvent);
        }
    }

    public androidx.core.h.a c() {
        return this.f2387b;
    }

    public static class a extends androidx.core.h.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final i f2388a;

        public a(i iVar) {
            this.f2388a = iVar;
        }

        @Override // androidx.core.h.a
        public void a(View view, androidx.core.h.a.c cVar) {
            super.a(view, cVar);
            if (this.f2388a.b() || this.f2388a.f2386a.getLayoutManager() == null) {
                return;
            }
            this.f2388a.f2386a.getLayoutManager().a(view, cVar);
        }

        @Override // androidx.core.h.a
        public boolean a(View view, int i, Bundle bundle) {
            if (super.a(view, i, bundle)) {
                return true;
            }
            if (this.f2388a.b() || this.f2388a.f2386a.getLayoutManager() == null) {
                return false;
            }
            return this.f2388a.f2386a.getLayoutManager().a(view, i, bundle);
        }
    }
}
