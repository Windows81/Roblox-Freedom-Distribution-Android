package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.b.a;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class bef extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, String> f4835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4838d;
    private long e;
    private String f;
    private String g;

    public bef(qd qdVar, Map<String, String> map) {
        super(qdVar, "createCalendarEvent");
        this.f4835a = map;
        this.f4836b = qdVar.d();
        this.f4837c = d("description");
        this.f = d("summary");
        this.f4838d = e("start_ticks");
        this.e = e("end_ticks");
        this.g = d("location");
    }

    private final String d(String str) {
        return TextUtils.isEmpty(this.f4835a.get(str)) ? "" : this.f4835a.get(str);
    }

    private final long e(String str) {
        String str2 = this.f4835a.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    public final void a() {
        if (this.f4836b == null) {
            a("Activity context is not available.");
            return;
        }
        com.google.android.gms.ads.internal.aw.e();
        if (!jm.f(this.f4836b).d()) {
            a("This feature is not available on the device.");
            return;
        }
        com.google.android.gms.ads.internal.aw.e();
        AlertDialog.Builder builderE = jm.e(this.f4836b);
        Resources resourcesH = com.google.android.gms.ads.internal.aw.i().h();
        builderE.setTitle(resourcesH != null ? resourcesH.getString(a.C0064a.s5) : "Create calendar event");
        builderE.setMessage(resourcesH != null ? resourcesH.getString(a.C0064a.s6) : "Allow Ad to create a calendar event?");
        builderE.setPositiveButton(resourcesH != null ? resourcesH.getString(a.C0064a.s3) : "Accept", new beg(this));
        builderE.setNegativeButton(resourcesH != null ? resourcesH.getString(a.C0064a.s4) : "Decline", new c(this));
        builderE.create().show();
    }

    @TargetApi(14)
    final Intent b() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.f4837c);
        data.putExtra("eventLocation", this.g);
        data.putExtra("description", this.f);
        if (this.f4838d > -1) {
            data.putExtra("beginTime", this.f4838d);
        }
        if (this.e > -1) {
            data.putExtra("endTime", this.e);
        }
        data.setFlags(268435456);
        return data;
    }
}
