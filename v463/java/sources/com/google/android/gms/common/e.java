package com.google.android.gms.common;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.core.app.i;
import com.google.android.gms.b.a;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.e;
import com.google.android.gms.common.internal.aa;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f3700e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f3698c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final e f3699d = new e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f3697a = f.f3704b;

    private class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f3701a;

        public a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.f3701a = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 1) {
                int iA = e.this.a(this.f3701a);
                if (e.this.a(iA)) {
                    e.this.a(this.f3701a, iA);
                    return;
                }
                return;
            }
            int i = message.what;
            StringBuilder sb = new StringBuilder(50);
            sb.append("Don't know how to handle this message: ");
            sb.append(i);
            Log.w("GoogleApiAvailability", sb.toString());
        }
    }

    e() {
    }

    static Dialog a(Context context, int i, com.google.android.gms.common.internal.h hVar, DialogInterface.OnCancelListener onCancelListener) {
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(com.google.android.gms.common.internal.f.c(context, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String strE = com.google.android.gms.common.internal.f.e(context, i);
        if (strE != null) {
            builder.setPositiveButton(strE, hVar);
        }
        String strA = com.google.android.gms.common.internal.f.a(context, i);
        if (strA != null) {
            builder.setTitle(strA);
        }
        return builder.create();
    }

    public static e a() {
        return f3699d;
    }

    private final String a(Context context, NotificationManager notificationManager) {
        aa.a(com.google.android.gms.common.util.m.i());
        String strC = c();
        if (strC == null) {
            strC = "com.google.android.gms.availability";
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
            String strB = com.google.android.gms.common.internal.f.b(context);
            if (notificationChannel == null) {
                notificationChannel = new NotificationChannel("com.google.android.gms.availability", strB, 4);
            } else if (!strB.equals(notificationChannel.getName())) {
                notificationChannel.setName(strB);
            }
            notificationManager.createNotificationChannel(notificationChannel);
        }
        return strC;
    }

    static void a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof androidx.fragment.app.c) {
            o.a(dialog, onCancelListener).a(((androidx.fragment.app.c) activity).j(), str);
        } else {
            c.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
        }
    }

    private final void a(Context context, int i, String str, PendingIntent pendingIntent) {
        Notification notificationB;
        int i2;
        if (i == 18) {
            c(context);
            return;
        }
        if (pendingIntent == null) {
            if (i == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strB = com.google.android.gms.common.internal.f.b(context, i);
        String strD = com.google.android.gms.common.internal.f.d(context, i);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (com.google.android.gms.common.util.g.a(context)) {
            aa.a(com.google.android.gms.common.util.m.f());
            Notification.Builder style = new Notification.Builder(context).setSmallIcon(context.getApplicationInfo().icon).setPriority(2).setAutoCancel(true).setContentTitle(strB).setStyle(new Notification.BigTextStyle().bigText(strD));
            if (com.google.android.gms.common.util.g.b(context)) {
                style.addAction(a.C0079a.common_full_open_on_phone, resources.getString(a.b.common_open_on_phone), pendingIntent);
            } else {
                style.setContentIntent(pendingIntent);
            }
            if (com.google.android.gms.common.util.m.i() && com.google.android.gms.common.util.m.i()) {
                style.setChannelId(a(context, notificationManager));
            }
            notificationB = style.build();
        } else {
            i.c cVarA = new i.c(context).a(R.drawable.stat_sys_warning).c(resources.getString(a.b.common_google_play_services_notification_ticker)).a(System.currentTimeMillis()).a(true).a(pendingIntent).a((CharSequence) strB).b(strD).b(true).a(new i.b().a(strD));
            if (com.google.android.gms.common.util.m.i() && com.google.android.gms.common.util.m.i()) {
                cVarA.a(a(context, notificationManager));
            }
            notificationB = cVarA.b();
        }
        if (i == 1 || i == 2 || i == 3) {
            i2 = 10436;
            l.f3836e.set(false);
        } else {
            i2 = 39789;
        }
        if (str == null) {
            notificationManager.notify(i2, notificationB);
        } else {
            notificationManager.notify(str, i2, notificationB);
        }
    }

    private final String c() {
        String str;
        synchronized (f3698c) {
            str = this.f3700e;
        }
        return str;
    }

    @Override // com.google.android.gms.common.f
    public int a(Context context) {
        return super.a(context);
    }

    public Dialog a(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return a(activity, i, com.google.android.gms.common.internal.h.a(activity, b(activity, i, "d"), i2), onCancelListener);
    }

    public Dialog a(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, R.attr.progressBarStyleLarge);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(com.google.android.gms.common.internal.f.c(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        a(activity, alertDialogCreate, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return alertDialogCreate;
    }

    @Override // com.google.android.gms.common.f
    public PendingIntent a(Context context, int i, int i2) {
        return super.a(context, i, i2);
    }

    @Override // com.google.android.gms.common.f
    public PendingIntent a(Context context, int i, int i2, String str) {
        return super.a(context, i, i2, str);
    }

    public PendingIntent a(Context context, ConnectionResult connectionResult) {
        return connectionResult.a() ? connectionResult.d() : a(context, connectionResult.c(), 0);
    }

    public com.google.android.gms.common.api.internal.e a(Context context, e.a aVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        com.google.android.gms.common.api.internal.e eVar = new com.google.android.gms.common.api.internal.e(aVar);
        context.registerReceiver(eVar, intentFilter);
        eVar.a(context);
        if (a(context, "com.google.android.gms")) {
            return eVar;
        }
        aVar.a();
        eVar.a();
        return null;
    }

    public void a(Context context, int i) {
        a(context, i, (String) null);
    }

    public void a(Context context, int i, String str) {
        a(context, i, str, a(context, i, 0, "n"));
    }

    @Override // com.google.android.gms.common.f
    public final boolean a(int i) {
        return super.a(i);
    }

    public boolean a(Activity activity, com.google.android.gms.common.api.internal.h hVar, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogA = a(activity, i, com.google.android.gms.common.internal.h.a(hVar, b(activity, i, "d"), i2), onCancelListener);
        if (dialogA == null) {
            return false;
        }
        a(activity, dialogA, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public boolean a(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent pendingIntentA = a(context, connectionResult);
        if (pendingIntentA == null) {
            return false;
        }
        a(context, connectionResult.c(), (String) null, GoogleApiActivity.a(context, pendingIntentA, i));
        return true;
    }

    @Override // com.google.android.gms.common.f
    public int b(Context context) {
        return super.b(context);
    }

    @Override // com.google.android.gms.common.f
    public int b(Context context, int i) {
        return super.b(context, i);
    }

    @Override // com.google.android.gms.common.f
    @Deprecated
    public Intent b(int i) {
        return super.b(i);
    }

    @Override // com.google.android.gms.common.f
    public Intent b(Context context, int i, String str) {
        return super.b(context, i, str);
    }

    public boolean b(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogA = a(activity, i, i2, onCancelListener);
        if (dialogA == null) {
            return false;
        }
        a(activity, dialogA, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    @Override // com.google.android.gms.common.f
    public final String c(int i) {
        return super.c(i);
    }

    final void c(Context context) {
        new a(context).sendEmptyMessageDelayed(1, 120000L);
    }

    @Override // com.google.android.gms.common.f
    public boolean c(Context context, int i) {
        return super.c(context, i);
    }
}
