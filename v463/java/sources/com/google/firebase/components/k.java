package com.google.firebase.components;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class k<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f5151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b<T> f5152b;

    interface b<T> {
        List<String> a(T t);
    }

    public static k<Context> a(Context context) {
        return new k<>(context, new a((byte) 0));
    }

    private k(T t, b<T> bVar) {
        this.f5151a = t;
        this.f5152b = bVar;
    }

    public final List<e> a() {
        return a(this.f5152b.a(this.f5151a));
    }

    private static List<e> a(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            try {
                Class<?> cls = Class.forName(str);
                if (!e.class.isAssignableFrom(cls)) {
                    Log.w("ComponentDiscovery", String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
                } else {
                    arrayList.add((e) cls.newInstance());
                }
            } catch (ClassNotFoundException e2) {
                Log.w("ComponentDiscovery", String.format("Class %s is not an found.", str), e2);
            } catch (IllegalAccessException e3) {
                Log.w("ComponentDiscovery", String.format("Could not instantiate %s.", str), e3);
            } catch (InstantiationException e4) {
                Log.w("ComponentDiscovery", String.format("Could not instantiate %s.", str), e4);
            }
        }
        return arrayList;
    }

    static class a implements b<Context> {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        @Override // com.google.firebase.components.k.b
        public final /* synthetic */ List a(Context context) {
            Bundle bundleA2 = a2(context);
            if (bundleA2 == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : bundleA2.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundleA2.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        private static Bundle a2(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) ComponentDiscoveryService.class), 128);
                if (serviceInfo == null) {
                    Log.w("ComponentDiscovery", "ComponentDiscoveryService has no service info.");
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("ComponentDiscovery", "Application info not found.");
                return null;
            }
        }
    }
}
