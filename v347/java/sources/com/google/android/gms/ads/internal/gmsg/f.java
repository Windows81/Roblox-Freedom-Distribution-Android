package com.google.android.gms.ads.internal.gmsg;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import com.google.android.gms.ads.internal.aw;
import com.google.android.gms.internal.ads.agv;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final agv f3116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f3117c;

    public f(Context context, agv agvVar, View view) {
        this.f3115a = context;
        this.f3116b = agvVar;
        this.f3117c = view;
    }

    private static Intent a(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        return intent2;
    }

    private static Intent a(Uri uri) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    private final ResolveInfo a(Intent intent) {
        return a(intent, new ArrayList<>());
    }

    private final ResolveInfo a(Intent intent, ArrayList<ResolveInfo> arrayList) {
        ResolveInfo resolveInfo;
        Throwable th;
        try {
            PackageManager packageManager = this.f3115a.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
            if (listQueryIntentActivities != null && resolveInfoResolveActivity != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= listQueryIntentActivities.size()) {
                        break;
                    }
                    ResolveInfo resolveInfo2 = listQueryIntentActivities.get(i2);
                    if (resolveInfoResolveActivity != null && resolveInfoResolveActivity.activityInfo.name.equals(resolveInfo2.activityInfo.name)) {
                        resolveInfo = resolveInfoResolveActivity;
                        break;
                    }
                    i = i2 + 1;
                }
                resolveInfo = null;
                arrayList.addAll(listQueryIntentActivities);
                return resolveInfo;
            }
            resolveInfo = null;
            try {
                arrayList.addAll(listQueryIntentActivities);
                return resolveInfo;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            resolveInfo = null;
            th = th3;
        }
        aw.i().a(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
        return resolveInfo;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.content.Intent a(java.util.Map<java.lang.String, java.lang.String> r13) {
        /*
            Method dump skipped, instruction units count: 307
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.gmsg.f.a(java.util.Map):android.content.Intent");
    }
}
