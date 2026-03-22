package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.i;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f1325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f1326c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1324a = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f1327d = new Object();

    public static SparseArray<Bundle> a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
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
        synchronized (f1324a) {
            if (f1326c) {
                return null;
            }
            try {
                if (f1325b == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        f1326c = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f1325b = declaredField;
                }
                Bundle bundle = (Bundle) f1325b.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    f1325b.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                f1326c = true;
                return null;
            } catch (NoSuchFieldException e3) {
                Log.e("NotificationCompat", "Unable to access notification extras", e3);
                f1326c = true;
                return null;
            }
        }
    }

    public static Bundle a(Notification.Builder builder, i.a aVar) {
        builder.addAction(aVar.a(), aVar.b(), aVar.c());
        Bundle bundle = new Bundle(aVar.d());
        if (aVar.f() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", a(aVar.f()));
        }
        if (aVar.h() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", a(aVar.h()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.e());
        return bundle;
    }

    static Bundle a(i.a aVar) {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        bundle2.putInt("icon", aVar.a());
        bundle2.putCharSequence("title", aVar.b());
        bundle2.putParcelable("actionIntent", aVar.c());
        if (aVar.d() != null) {
            bundle = new Bundle(aVar.d());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.e());
        bundle2.putBundle("extras", bundle);
        bundle2.putParcelableArray("remoteInputs", a(aVar.f()));
        bundle2.putBoolean("showsUserInterface", aVar.i());
        bundle2.putInt("semanticAction", aVar.g());
        return bundle2;
    }

    private static Bundle a(m mVar) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", mVar.a());
        bundle.putCharSequence("label", mVar.b());
        bundle.putCharSequenceArray("choices", mVar.c());
        bundle.putBoolean("allowFreeFormInput", mVar.f());
        bundle.putBundle("extras", mVar.g());
        Set<String> setD = mVar.d();
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

    private static Bundle[] a(m[] mVarArr) {
        if (mVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[mVarArr.length];
        for (int i = 0; i < mVarArr.length; i++) {
            bundleArr[i] = a(mVarArr[i]);
        }
        return bundleArr;
    }
}
