package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bj extends Fragment implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WeakHashMap<Activity, WeakReference<bj>> f3534a = new WeakHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, LifecycleCallback> f3535b = new androidx.c.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3536c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bundle f3537d;

    public static bj a(Activity activity) {
        bj bjVar;
        WeakReference<bj> weakReference = f3534a.get(activity);
        if (weakReference != null && (bjVar = weakReference.get()) != null) {
            return bjVar;
        }
        try {
            bj bjVar2 = (bj) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
            if (bjVar2 == null || bjVar2.isRemoving()) {
                bjVar2 = new bj();
                activity.getFragmentManager().beginTransaction().add(bjVar2, "LifecycleFragmentImpl").commitAllowingStateLoss();
            }
            f3534a.put(activity, new WeakReference<>(bjVar2));
            return bjVar2;
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e2);
        }
    }

    @Override // com.google.android.gms.common.api.internal.h
    public final Activity a() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.h
    public final <T extends LifecycleCallback> T a(String str, Class<T> cls) {
        return cls.cast(this.f3535b.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.h
    public final void a(String str, LifecycleCallback lifecycleCallback) {
        if (this.f3535b.containsKey(str)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
            sb.append("LifecycleCallback with tag ");
            sb.append(str);
            sb.append(" already added to this fragment.");
            throw new IllegalArgumentException(sb.toString());
        }
        this.f3535b.put(str, lifecycleCallback);
        if (this.f3536c > 0) {
            new Handler(Looper.getMainLooper()).post(new bk(this, lifecycleCallback, str));
        }
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator<LifecycleCallback> it = this.f3535b.values().iterator();
        while (it.hasNext()) {
            it.next().a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Iterator<LifecycleCallback> it = this.f3535b.values().iterator();
        while (it.hasNext()) {
            it.next().a(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3536c = 1;
        this.f3537d = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f3535b.entrySet()) {
            entry.getValue().a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f3536c = 5;
        Iterator<LifecycleCallback> it = this.f3535b.values().iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f3536c = 3;
        Iterator<LifecycleCallback> it = this.f3535b.values().iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f3535b.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().b(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f3536c = 2;
        Iterator<LifecycleCallback> it = this.f3535b.values().iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f3536c = 4;
        Iterator<LifecycleCallback> it = this.f3535b.values().iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }
}
