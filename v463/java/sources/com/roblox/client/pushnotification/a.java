package com.roblox.client.pushnotification;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.AsyncTask;
import androidx.core.app.i;
import com.roblox.client.o;
import com.roblox.client.pushnotification.b.e;
import com.roblox.client.pushnotification.b.m;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a<T extends com.roblox.client.pushnotification.b.m> implements e.a<T>, i<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.roblox.client.pushnotification.b.e<T> f6783a;

    protected abstract Intent a(Intent intent, T t);

    protected abstract String a(int i);

    protected abstract Intent b(Intent intent, T t);

    protected abstract String b(Context context);

    protected abstract int d();

    protected abstract long e();

    protected abstract String f();

    protected abstract Class<?> g();

    public a() {
        com.roblox.client.pushnotification.b.e<T> eVar = new com.roblox.client.pushnotification.b.e<>();
        this.f6783a = eVar;
        eVar.a(this);
    }

    @Override // com.roblox.client.pushnotification.i
    public void a(Context context, T t) {
        this.f6783a.a(t);
        a(context, a());
    }

    public boolean a() {
        return this.f6783a.size() != 0 && this.f6783a.size() <= 2;
    }

    @Override // com.roblox.client.pushnotification.i
    public void a(Context context, String str) {
        this.f6783a.b(str);
        if (this.f6783a.isEmpty()) {
            a(context, d());
        } else {
            a(context, false);
        }
    }

    @Override // com.roblox.client.pushnotification.i
    public void a(Context context, long j) {
        this.f6783a.a(j);
        if (this.f6783a.isEmpty()) {
            a(context, d());
        } else {
            a(context, false);
        }
    }

    @Override // com.roblox.client.pushnotification.i
    public void b() {
        this.f6783a.clear();
    }

    protected void a(Context context, int i) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager != null) {
            notificationManager.cancel(i);
        }
    }

    protected void a(Context context, i.c cVar) {
        ((NotificationManager) context.getSystemService("notification")).notify(d(), cVar.b());
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.roblox.client.pushnotification.a$1] */
    protected void a(final Context context, final boolean z) {
        if (context == null || this.f6783a.isEmpty()) {
            return;
        }
        new s(context, e()) { // from class: com.roblox.client.pushnotification.a.1
            @Override // com.roblox.client.pushnotification.s
            public void a(Bitmap bitmap) {
                if (a.this.f6783a.isEmpty()) {
                    return;
                }
                a.this.a(context, a.this.a(context, z, bitmap));
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    protected i.c a(Context context, boolean z, Bitmap bitmap) {
        i.c cVar = new i.c(context, "channel_general");
        cVar.a(c(context, c()));
        cVar.b(b(context, c()));
        cVar.a(o.e.notification_icon);
        cVar.b(b(context));
        cVar.a(true);
        cVar.a((CharSequence) a(context));
        cVar.b(this.f6783a.size());
        cVar.a(bitmap);
        if (z) {
            cVar.a(RingtoneManager.getDefaultUri(2));
        } else {
            cVar.a((Uri) null);
        }
        cVar.a(new i.b().a(b(context)));
        return cVar;
    }

    protected T c() {
        if (this.f6783a.isEmpty()) {
            return null;
        }
        return this.f6783a.get(r0.size() - 1);
    }

    protected PendingIntent b(Context context, T t) {
        Intent intent = new Intent(a(1));
        intent.setClass(context, g());
        Intent intentA = a(intent, t);
        intentA.putExtra("EXTRA_NOTIFICATION_TYPE", f());
        intentA.putExtra("EXTRA_INTENT_ACTION_TYPE_CODE", 1);
        intentA.putExtra("EXTRA_NOTIFICATION_ID", t.b());
        return PendingIntent.getBroadcast(context, d(), intentA, 268435456);
    }

    protected PendingIntent c(Context context, T t) {
        Intent intent = new Intent(a(2));
        intent.setClass(context, g());
        Intent intentB = b(intent, t);
        intentB.putExtra("EXTRA_NOTIFICATION_ID", t.b());
        intentB.putExtra("EXTRA_INTENT_ACTION_TYPE_CODE", 2);
        intentB.putExtra("EXTRA_NOTIFICATION_TYPE", f());
        return PendingIntent.getBroadcast(context, d(), intentB, 268435456);
    }

    protected String a(Context context) {
        return context.getString(o.j.CommonUI_Messages_Label_Roblox);
    }
}
