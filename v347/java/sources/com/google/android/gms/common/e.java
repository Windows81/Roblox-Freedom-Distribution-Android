package com.google.android.gms.common;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
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
import android.support.v4.app.z;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import com.google.android.gms.a.a;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.internal.w;

/* JADX INFO: loaded from: classes.dex */
public class e extends f {
    private String e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f3425c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final e f3426d = new e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f3424a = f.f3430b;

    @SuppressLint({"HandlerLeak"})
    private class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f3427a;

        public a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.f3427a = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    int iA = e.this.a(this.f3427a);
                    if (e.this.a(iA)) {
                        e.this.a(this.f3427a, iA);
                    }
                    break;
                default:
                    Log.w("GoogleApiAvailability", new StringBuilder(50).append("Don't know how to handle this message: ").append(message.what).toString());
                    break;
            }
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
        return f3426d;
    }

    @TargetApi(26)
    private final String a(Context context, NotificationManager notificationManager) {
        w.a(com.google.android.gms.common.util.n.l());
        String strC = c();
        if (strC == null) {
            strC = "com.google.android.gms.availability";
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
            String strB = com.google.android.gms.common.internal.f.b(context);
            if (notificationChannel == null) {
                notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", strB, 4));
            } else if (!strB.equals(notificationChannel.getName())) {
                notificationChannel.setName(strB);
                notificationManager.createNotificationChannel(notificationChannel);
            }
        }
        return strC;
    }

    static void a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof android.support.v4.app.h) {
            n.a(dialog, onCancelListener).show(((android.support.v4.app.h) activity).e(), str);
        } else {
            c.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
        }
    }

    @TargetApi(20)
    private final void a(Context context, int i, String str, PendingIntent pendingIntent) {
        Notification notificationA;
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
        if (com.google.android.gms.common.util.h.a(context)) {
            w.a(com.google.android.gms.common.util.n.h());
            Notification.Builder style = new Notification.Builder(context).setSmallIcon(context.getApplicationInfo().icon).setPriority(2).setAutoCancel(true).setContentTitle(strB).setStyle(new Notification.BigTextStyle().bigText(strD));
            if (com.google.android.gms.common.util.h.b(context)) {
                style.addAction(a.C0062a.common_full_open_on_phone, resources.getString(a.b.common_open_on_phone), pendingIntent);
            } else {
                style.setContentIntent(pendingIntent);
            }
            if (com.google.android.gms.common.util.n.l() && com.google.android.gms.common.util.n.l()) {
                style.setChannelId(a(context, notificationManager));
            }
            notificationA = style.build();
        } else {
            z.c cVarA = new z.c(context).a(R.drawable.stat_sys_warning).c(resources.getString(a.b.common_google_play_services_notification_ticker)).a(System.currentTimeMillis()).a(true).a(pendingIntent).a((CharSequence) strB).b(strD).b(true).a(new z.b().a(strD));
            if (com.google.android.gms.common.util.n.l() && com.google.android.gms.common.util.n.l()) {
                cVarA.a(a(context, notificationManager));
            }
            notificationA = cVarA.a();
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
                i2 = 10436;
                k.e.set(false);
                break;
            default:
                i2 = 39789;
                break;
        }
        if (str == null) {
            notificationManager.notify(i2, notificationA);
        } else {
            notificationManager.notify(str, i2, notificationA);
        }
    }

    private final String c() {
        String str;
        synchronized (f3425c) {
            str = this.e;
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

    public com.google.android.gms.common.api.internal.c a(Context context, c.a aVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        com.google.android.gms.common.api.internal.c cVar = new com.google.android.gms.common.api.internal.c(aVar);
        context.registerReceiver(cVar, intentFilter);
        cVar.a(context);
        if (a(context, "com.google.android.gms")) {
            return cVar;
        }
        aVar.a();
        cVar.a();
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

    public boolean a(Activity activity, com.google.android.gms.common.api.internal.e eVar, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogA = a(activity, i, com.google.android.gms.common.internal.h.a(eVar, b(activity, i, "d"), i2), onCancelListener);
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
    public Intent b(Context context, int i, String str) {
        return super.b(context, i, str);
    }

    @Override // com.google.android.gms.common.f
    public final String b(int i) {
        return super.b(i);
    }

    public boolean b(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogA = a(activity, i, i2, onCancelListener);
        if (dialogA == null) {
            return false;
        }
        a(activity, dialogA, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    final void c(Context context) {
        new a(context).sendEmptyMessageDelayed(1, 120000L);
    }
}
