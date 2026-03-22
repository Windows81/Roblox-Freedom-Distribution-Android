package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.fragment.app.Fragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bu extends Fragment implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WeakHashMap<androidx.fragment.app.c, WeakReference<bu>> f3557a = new WeakHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, LifecycleCallback> f3558b = new androidx.c.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3559c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bundle f3560d;

    public static bu a(androidx.fragment.app.c cVar) {
        bu buVar;
        WeakReference<bu> weakReference = f3557a.get(cVar);
        if (weakReference != null && (buVar = weakReference.get()) != null) {
            return buVar;
        }
        try {
            bu buVar2 = (bu) cVar.j().a("SupportLifecycleFragmentImpl");
            if (buVar2 == null || buVar2.y()) {
                buVar2 = new bu();
                cVar.j().a().a(buVar2, "SupportLifecycleFragmentImpl").d();
            }
            f3557a.put(cVar, new WeakReference<>(buVar2));
            return buVar2;
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void F() {
        super.F();
        this.f3559c = 3;
        Iterator<LifecycleCallback> it = this.f3558b.values().iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void H() {
        super.H();
        this.f3559c = 5;
        Iterator<LifecycleCallback> it = this.f3558b.values().iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    @Override // com.google.android.gms.common.api.internal.h
    public final /* synthetic */ Activity a() {
        return r();
    }

    @Override // com.google.android.gms.common.api.internal.h
    public final <T extends LifecycleCallback> T a(String str, Class<T> cls) {
        return cls.cast(this.f3558b.get(str));
    }

    @Override // androidx.fragment.app.Fragment
    public final void a(int i, int i2, Intent intent) {
        super.a(i, i2, intent);
        Iterator<LifecycleCallback> it = this.f3558b.values().iterator();
        while (it.hasNext()) {
            it.next().a(i, i2, intent);
        }
    }

    @Override // com.google.android.gms.common.api.internal.h
    public final void a(String str, LifecycleCallback lifecycleCallback) {
        if (this.f3558b.containsKey(str)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
            sb.append("LifecycleCallback with tag ");
            sb.append(str);
            sb.append(" already added to this fragment.");
            throw new IllegalArgumentException(sb.toString());
        }
        this.f3558b.put(str, lifecycleCallback);
        if (this.f3559c > 0) {
            new Handler(Looper.getMainLooper()).post(new bv(this, lifecycleCallback, str));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.a(str, fileDescriptor, printWriter, strArr);
        Iterator<LifecycleCallback> it = this.f3558b.values().iterator();
        while (it.hasNext()) {
            it.next().a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void b(Bundle bundle) {
        super.b(bundle);
        this.f3559c = 1;
        this.f3560d = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f3558b.entrySet()) {
            entry.getValue().a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void e(Bundle bundle) {
        super.e(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f3558b.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().b(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void h() {
        super.h();
        this.f3559c = 2;
        Iterator<LifecycleCallback> it = this.f3558b.values().iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void i() {
        super.i();
        this.f3559c = 4;
        Iterator<LifecycleCallback> it = this.f3558b.values().iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }
}
