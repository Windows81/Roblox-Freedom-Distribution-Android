package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.v;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class w {
    private static Application a(Activity activity) {
        Application application = activity.getApplication();
        if (application != null) {
            return application;
        }
        throw new IllegalStateException("Your activity/fragment is not yet attached to Application. You can't request ViewModel before onCreate call.");
    }

    private static Activity b(Fragment fragment) {
        androidx.fragment.app.c cVarR = fragment.r();
        if (cVarR != null) {
            return cVarR;
        }
        throw new IllegalStateException("Can't create ViewModelProvider for detached fragment");
    }

    public static v a(Fragment fragment) {
        return a(fragment, (v.b) null);
    }

    public static v a(Fragment fragment, v.b bVar) {
        Application applicationA = a(b(fragment));
        if (bVar == null) {
            bVar = v.a.a(applicationA);
        }
        return new v(fragment.k(), bVar);
    }

    public static v a(androidx.fragment.app.c cVar, v.b bVar) {
        Application applicationA = a(cVar);
        if (bVar == null) {
            bVar = v.a.a(applicationA);
        }
        return new v(cVar.k(), bVar);
    }
}
