package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f5303a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f5304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f5305c;

    public e(Context context) {
        this.f5304b = context.getApplicationContext();
    }

    static boolean a(Bundle bundle) {
        return "1".equals(a(bundle, "gcm.n.e")) || a(bundle, "gcm.n.icon") != null;
    }

    static String a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    static String b(Bundle bundle, String str) {
        String strValueOf = String.valueOf(str);
        return a(bundle, "_loc_key".length() != 0 ? strValueOf.concat("_loc_key") : new String(strValueOf));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static Object[] c(Bundle bundle, String str) {
        String strValueOf = String.valueOf(str);
        String strA = a(bundle, "_loc_args".length() != 0 ? strValueOf.concat("_loc_args") : new String(strValueOf));
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(strA);
            int length = jSONArray.length();
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                strArr[i] = jSONArray.opt(i);
            }
            return strArr;
        } catch (JSONException unused) {
            String strValueOf2 = String.valueOf(str);
            String strSubstring = ("_loc_args".length() != 0 ? strValueOf2.concat("_loc_args") : new String(strValueOf2)).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(strSubstring).length() + 41 + String.valueOf(strA).length());
            sb.append("Malformed ");
            sb.append(strSubstring);
            sb.append(": ");
            sb.append(strA);
            sb.append("  Default value will be used.");
            Log.w("FirebaseMessaging", sb.toString());
            return null;
        }
    }

    static Uri b(Bundle bundle) {
        String strA = a(bundle, "gcm.n.link_android");
        if (TextUtils.isEmpty(strA)) {
            strA = a(bundle, "gcm.n.link");
        }
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return Uri.parse(strA);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0060 A[EDGE_INSN: B:150:0x0060->B:20:0x0060 BREAK  A[LOOP:0: B:13:0x0048->B:151:?]] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final boolean c(android.os.Bundle r17) {
        /*
            Method dump skipped, instruction units count: 974
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.e.c(android.os.Bundle):boolean");
    }

    private final String d(Bundle bundle, String str) {
        String strA = a(bundle, str);
        if (!TextUtils.isEmpty(strA)) {
            return strA;
        }
        String strB = b(bundle, str);
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        Resources resources = this.f5304b.getResources();
        int identifier = resources.getIdentifier(strB, "string", this.f5304b.getPackageName());
        if (identifier == 0) {
            String strValueOf = String.valueOf(str);
            String strSubstring = ("_loc_key".length() != 0 ? strValueOf.concat("_loc_key") : new String(strValueOf)).substring(6);
            StringBuilder sb = new StringBuilder(String.valueOf(strSubstring).length() + 49 + String.valueOf(strB).length());
            sb.append(strSubstring);
            sb.append(" resource not found: ");
            sb.append(strB);
            sb.append(" Default value will be used.");
            Log.w("FirebaseMessaging", sb.toString());
            return null;
        }
        Object[] objArrC = c(bundle, str);
        if (objArrC == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, objArrC);
        } catch (MissingFormatArgumentException e2) {
            String string = Arrays.toString(objArrC);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strB).length() + 58 + String.valueOf(string).length());
            sb2.append("Missing format argument for ");
            sb2.append(strB);
            sb2.append(": ");
            sb2.append(string);
            sb2.append(" Default value will be used.");
            Log.w("FirebaseMessaging", sb2.toString(), e2);
            return null;
        }
    }

    private final boolean a(int i) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!(this.f5304b.getResources().getDrawable(i, null) instanceof AdaptiveIconDrawable)) {
                return true;
            }
            StringBuilder sb = new StringBuilder(77);
            sb.append("Adaptive icons cannot be used in notifications. Ignoring icon id: ");
            sb.append(i);
            Log.e("FirebaseMessaging", sb.toString());
            return false;
        } catch (Resources.NotFoundException unused) {
            return false;
        }
    }

    private final Integer a(String str) {
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 54);
                sb.append("Color ");
                sb.append(str);
                sb.append(" not valid. Notification will use default color.");
                Log.w("FirebaseMessaging", sb.toString());
            }
        }
        int i = a().getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i != 0) {
            try {
                return Integer.valueOf(androidx.core.a.b.c(this.f5304b, i));
            } catch (Resources.NotFoundException unused2) {
                Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
            }
        }
        return null;
    }

    static String d(Bundle bundle) {
        String strA = a(bundle, "gcm.n.sound2");
        return TextUtils.isEmpty(strA) ? a(bundle, "gcm.n.sound") : strA;
    }

    private static void a(Intent intent, Bundle bundle) {
        for (String str : bundle.keySet()) {
            if (str.startsWith("google.c.a.") || str.equals("from")) {
                intent.putExtra(str, bundle.getString(str));
            }
        }
    }

    private final Bundle a() {
        Bundle bundle = this.f5305c;
        if (bundle != null) {
            return bundle;
        }
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = this.f5304b.getPackageManager().getApplicationInfo(this.f5304b.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (applicationInfo != null && applicationInfo.metaData != null) {
            Bundle bundle2 = applicationInfo.metaData;
            this.f5305c = bundle2;
            return bundle2;
        }
        return Bundle.EMPTY;
    }
}
