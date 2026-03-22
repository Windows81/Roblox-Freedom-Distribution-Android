package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;
import android.support.v4.app.z;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ab {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f654c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f652a = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f655d = new Object();

    public static SparseArray<Bundle> a(List<Bundle> list) {
        SparseArray<Bundle> sparseArray = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Bundle bundle = list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    public static Bundle a(Notification notification) {
        synchronized (f652a) {
            if (f654c) {
                return null;
            }
            try {
                if (f653b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f654c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f653b = declaredField;
                }
                Bundle bundle = (Bundle) f653b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    f653b.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                f654c = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                f654c = true;
                return null;
            }
        }
    }

    public static Bundle a(Notification.Builder builder, z.a aVar) {
        builder.addAction(aVar.a(), aVar.b(), aVar.c());
        Bundle bundle = new Bundle(aVar.d());
        if (aVar.f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", a(aVar.f()));
        }
        if (aVar.g() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", a(aVar.g()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.e());
        return bundle;
    }

    private static Bundle a(ae aeVar) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", aeVar.a());
        bundle.putCharSequence("label", aeVar.b());
        bundle.putCharSequenceArray("choices", aeVar.c());
        bundle.putBoolean("allowFreeFormInput", aeVar.f());
        bundle.putBundle("extras", aeVar.g());
        Set<String> setD = aeVar.d();
        if (setD != null && !setD.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(setD.size());
            Iterator<String> it = setD.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            bundle.putStringArrayList("allowedDataTypes", arrayList);
        }
        return bundle;
    }

    private static Bundle[] a(ae[] aeVarArr) {
        if (aeVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[aeVarArr.length];
        for (int i = 0; i < aeVarArr.length; i++) {
            bundleArr[i] = a(aeVarArr[i]);
        }
        return bundleArr;
    }
}
