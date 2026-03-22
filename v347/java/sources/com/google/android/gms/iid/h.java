package com.google.android.gms.iid;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import java.io.IOException;
import java.security.KeyPair;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final l<Boolean> f3650a = k.a().a("gcm_iid_use_messenger_ipc", true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f3651b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f3652c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f3653d = 0;
    private static int e = 0;
    private static int f = 0;
    private static BroadcastReceiver g = null;
    private Context h;
    private Map<String, Object> i = new android.support.v4.g.a();
    private Messenger j;
    private Messenger k;
    private MessengerCompat l;
    private PendingIntent m;

    public h(Context context) {
        this.h = context;
    }

    private static synchronized String a() {
        int i;
        i = f;
        f = i + 1;
        return Integer.toString(i);
    }

    public static String a(Context context) {
        boolean z;
        boolean z2;
        if (f3651b != null) {
            return f3651b;
        }
        f3653d = Process.myUid();
        PackageManager packageManager = context.getPackageManager();
        if (!com.google.android.gms.common.util.n.l()) {
            Iterator<ResolveInfo> it = packageManager.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0).iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                if (a(packageManager, it.next().serviceInfo.packageName, "com.google.android.c2dm.intent.REGISTER")) {
                    f3652c = false;
                    z2 = true;
                    break;
                }
            }
            if (z2) {
                return f3651b;
            }
        }
        Iterator<ResolveInfo> it2 = packageManager.queryBroadcastReceivers(new Intent("com.google.iid.TOKEN_REQUEST"), 0).iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            if (a(packageManager, it2.next().activityInfo.packageName, "com.google.iid.TOKEN_REQUEST")) {
                f3652c = true;
                z = true;
                break;
            }
        }
        if (z) {
            return f3651b;
        }
        Log.w("InstanceID", "Failed to resolve IID implementation package, falling back");
        if (a(packageManager, "com.google.android.gms")) {
            f3652c = com.google.android.gms.common.util.n.l();
            return f3651b;
        }
        if (com.google.android.gms.common.util.n.i() || !a(packageManager, "com.google.android.gsf")) {
            Log.w("InstanceID", "Google Play services is missing, unable to get tokens");
            return null;
        }
        f3652c = false;
        return f3651b;
    }

    static String a(Bundle bundle) throws IOException {
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string == null) {
            string = bundle.getString("unregistered");
        }
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString("error");
        if (string2 != null) {
            throw new IOException(string2);
        }
        String strValueOf = String.valueOf(bundle);
        Log.w("InstanceID", new StringBuilder(String.valueOf(strValueOf).length() + 29).append("Unexpected response from GCM ").append(strValueOf).toString(), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    private static void a(Object obj, Object obj2) {
        if (obj instanceof ConditionVariable) {
            ((ConditionVariable) obj).open();
        }
        if (obj instanceof Messenger) {
            Messenger messenger = (Messenger) obj;
            Message messageObtain = Message.obtain();
            messageObtain.obj = obj2;
            try {
                messenger.send(messageObtain);
            } catch (RemoteException e2) {
                String strValueOf = String.valueOf(e2);
                Log.w("InstanceID", new StringBuilder(String.valueOf(strValueOf).length() + 24).append("Failed to send response ").append(strValueOf).toString());
            }
        }
    }

    private final void a(String str, Object obj) {
        synchronized (getClass()) {
            Object obj2 = this.i.get(str);
            this.i.put(str, obj);
            a(obj2, obj);
        }
    }

    private static boolean a(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            f3651b = applicationInfo.packageName;
            e = applicationInfo.uid;
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    private static boolean a(PackageManager packageManager, String str, String str2) {
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", str) == 0) {
            return a(packageManager, str);
        }
        Log.w("InstanceID", new StringBuilder(String.valueOf(str).length() + 56 + String.valueOf(str2).length()).append("Possible malicious package ").append(str).append(" declares ").append(str2).append(" without permission").toString());
        return false;
    }

    private static int b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(a(context), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            return -1;
        }
    }

    private final Bundle b(Bundle bundle) throws IOException {
        Bundle bundleC = c(bundle);
        if (bundleC == null || !bundleC.containsKey("google.messenger")) {
            return bundleC;
        }
        Bundle bundleC2 = c(bundle);
        if (bundleC2 == null || !bundleC2.containsKey("google.messenger")) {
            return bundleC2;
        }
        return null;
    }

    private final synchronized void b(Intent intent) {
        if (this.m == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.m = PendingIntent.getBroadcast(this.h, 0, intent2, 0);
        }
        intent.putExtra("app", this.m);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.os.Bundle c(android.os.Bundle r10) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 493
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.iid.h.c(android.os.Bundle):android.os.Bundle");
    }

    final Bundle a(Bundle bundle, KeyPair keyPair) throws IOException {
        int iB = b(this.h);
        bundle.putString("gmsv", Integer.toString(iB));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", Integer.toString(a.a(this.h)));
        bundle.putString("app_ver_name", a.b(this.h));
        bundle.putString("cliv", "iid-12451000");
        bundle.putString("appid", a.a(keyPair));
        if (iB < 12000000 || !f3650a.a().booleanValue()) {
            return b(bundle);
        }
        try {
            return (Bundle) com.google.android.gms.d.i.a(new ab(this.h).a(1, bundle));
        } catch (InterruptedException | ExecutionException e2) {
            if (Log.isLoggable("InstanceID", 3)) {
                String strValueOf = String.valueOf(e2);
                Log.d("InstanceID", new StringBuilder(String.valueOf(strValueOf).length() + 22).append("Error making request: ").append(strValueOf).toString());
            }
            if ((e2.getCause() instanceof c) && ((c) e2.getCause()).a() == 4) {
                return b(bundle);
            }
            return null;
        }
    }

    public final void a(Intent intent) {
        String str;
        String strSubstring;
        if (intent == null) {
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", "Unexpected response: null");
                return;
            }
            return;
        }
        String action = intent.getAction();
        if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action) && !"com.google.android.gms.iid.InstanceID".equals(action)) {
            if (Log.isLoggable("InstanceID", 3)) {
                String strValueOf = String.valueOf(intent.getAction());
                Log.d("InstanceID", strValueOf.length() != 0 ? "Unexpected response ".concat(strValueOf) : new String("Unexpected response "));
                return;
            }
            return;
        }
        String stringExtra = intent.getStringExtra("registration_id");
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("unregistered");
        }
        if (stringExtra != null) {
            Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(stringExtra);
            if (!matcher.matches()) {
                if (Log.isLoggable("InstanceID", 3)) {
                    String strValueOf2 = String.valueOf(stringExtra);
                    Log.d("InstanceID", strValueOf2.length() != 0 ? "Unexpected response string: ".concat(strValueOf2) : new String("Unexpected response string: "));
                    return;
                }
                return;
            }
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            Bundle extras = intent.getExtras();
            extras.putString("registration_id", strGroup2);
            a(strGroup, (Object) extras);
            return;
        }
        String stringExtra2 = intent.getStringExtra("error");
        if (stringExtra2 == null) {
            String strValueOf3 = String.valueOf(intent.getExtras());
            Log.w("InstanceID", new StringBuilder(String.valueOf(strValueOf3).length() + 49).append("Unexpected response, no error or registration id ").append(strValueOf3).toString());
            return;
        }
        if (Log.isLoggable("InstanceID", 3)) {
            String strValueOf4 = String.valueOf(stringExtra2);
            Log.d("InstanceID", strValueOf4.length() != 0 ? "Received InstanceID error ".concat(strValueOf4) : new String("Received InstanceID error "));
        }
        if (stringExtra2.startsWith("|")) {
            String[] strArrSplit = stringExtra2.split("\\|");
            if (!"ID".equals(strArrSplit[1])) {
                String strValueOf5 = String.valueOf(stringExtra2);
                Log.w("InstanceID", strValueOf5.length() != 0 ? "Unexpected structured response ".concat(strValueOf5) : new String("Unexpected structured response "));
            }
            if (strArrSplit.length > 2) {
                str = strArrSplit[2];
                strSubstring = strArrSplit[3];
                if (strSubstring.startsWith(":")) {
                    strSubstring = strSubstring.substring(1);
                }
            } else {
                strSubstring = "UNKNOWN";
                str = null;
            }
            intent.putExtra("error", strSubstring);
        } else {
            str = null;
            strSubstring = stringExtra2;
        }
        if (str != null) {
            a(str, (Object) strSubstring);
            return;
        }
        synchronized (getClass()) {
            for (String str2 : this.i.keySet()) {
                Object obj = this.i.get(str2);
                this.i.put(str2, strSubstring);
                a(obj, strSubstring);
            }
        }
    }

    public final void a(Message message) {
        if (message == null) {
            return;
        }
        if (!(message.obj instanceof Intent)) {
            Log.w("InstanceID", "Dropping invalid message");
            return;
        }
        Intent intent = (Intent) message.obj;
        intent.setExtrasClassLoader(MessengerCompat.class.getClassLoader());
        if (intent.hasExtra("google.messenger")) {
            Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
            if (parcelableExtra instanceof MessengerCompat) {
                this.l = (MessengerCompat) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                this.k = (Messenger) parcelableExtra;
            }
        }
        a((Intent) message.obj);
    }
}
