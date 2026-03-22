package com.roblox.client.analytics;

import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.roblox.client.ae.k;
import com.roblox.client.ae.v;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.http.j;
import com.roblox.client.http.m;
import com.roblox.client.http.r;
import com.roblox.client.u;
import com.roblox.engine.jni.NativeGLInterface;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {
    private static c f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5669a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<String> f5670b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f5671c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f5672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final v.a f5673e;

    interface a {
        r a(String str, String str2, m mVar, String str3);
    }

    public static c a() {
        if (f == null) {
            synchronized (c.class) {
                if (f == null) {
                    f = new c(new b(), new v.b());
                }
            }
        }
        return f;
    }

    c(a aVar, v.a aVar2) {
        k.b("EventStreamManager", "[Constructor]: ENTER.");
        this.f5672d = aVar;
        this.f5673e = aVar2;
    }

    static class b implements a {
        b() {
        }

        @Override // com.roblox.client.analytics.c.a
        public r a(String str, String str2, m mVar, String str3) {
            return new r(str, str2, mVar, str3);
        }
    }

    protected void a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("lt=");
        sb.append(String.format("%tFT%<tT.%<tLZ", Calendar.getInstance(TimeZone.getTimeZone("Z"))));
        sb.append("&mdid=");
        sb.append(u.f7519c);
        sb.append("&idfv=");
        sb.append(u.f7519c);
        sb.append("&idfa=");
        com.roblox.client.ae.b.b();
        sb.append(com.roblox.client.ae.b.a());
        String str2 = sb.toString() + "&" + str;
        synchronized (this.f5669a) {
            this.f5670b.add(str2);
            if (this.f5670b.size() == 1) {
                this.f5671c = this.f5673e.a();
            }
            if (e()) {
                c();
            }
        }
    }

    private static String a(List<String> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int size = list.size();
        int i = 0;
        for (String str : list) {
            sb.append("\"");
            sb.append(str);
            sb.append("\"");
            i++;
            if (i < size) {
                sb.append(",");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    private boolean e() {
        return this.f5670b.size() >= Math.min(com.roblox.client.b.ae(), 900) || this.f5673e.a() - this.f5671c >= ((long) com.roblox.client.b.af()) * 1000;
    }

    protected static String b() {
        try {
            return URLEncoder.encode(u.t(), "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            k.e("EventStreamManager", "Failed to URL-encode the user-agent. Exception: " + e2);
            return null;
        }
    }

    public void c() {
        synchronized (this.f5669a) {
            if (this.f5670b.isEmpty()) {
                return;
            }
            k.c("EventStreamManager", "sendAllNow: # of events " + this.f5670b.size());
            String strA = a(this.f5670b);
            k.c("EventStreamManager", "sendAllNow: httpPostBody: " + strA);
            this.f5670b.clear();
            this.f5671c = 0L;
            this.f5672d.a(u.aj(), strA, new m() { // from class: com.roblox.client.analytics.c.1
                @Override // com.roblox.client.http.m
                public void a(j jVar) {
                    if (jVar.b() != 200 && jVar.b() != 202) {
                        k.d("EventStreamManager", "addEvent: Failed to post events. Ignore and do nothing");
                        d.a("RbxAnalytics", "PostInBatch", "Failure_" + jVar.b());
                        return;
                    }
                    d.a("RbxAnalytics", "PostInBatch", Payload.RESPONSE_OK);
                }
            }, u.s()).c();
        }
    }

    public void d() {
        NativeGLInterface.nativeReleaseAllRbxEventStreams();
    }

    public void b(String str) {
        a("evt=appLaunch&ctx=" + str + "&appStoreSource=" + Payload.SOURCE_GOOGLE);
    }

    public void a(String str, String str2, int i, int i2) {
        a("evt=endpointFailure&ctx=" + str + "&url=" + str2 + "&errorCode=" + i + "&serverErrorCode=" + i2);
    }

    public void c(String str) {
        a("evt=screenLoaded&ctx=" + str);
    }

    public void d(String str) {
        a("evt=screenUnloaded&ctx=" + str);
    }

    public void a(String str, String str2, String str3) {
        a("evt=viewShown&ctx=" + str + "&view=" + str2 + "&reason=" + str3);
    }

    public void a(String str, String str2) {
        a("evt=buttonClick&ctx=" + str + "&btn=" + str2);
    }

    public void b(String str, String str2, String str3) {
        a("evt=buttonClick&ctx=" + str + "&btn=" + str2 + "&cstm=" + str3);
    }

    public void a(String str, String str2, boolean z) {
        a("evt=formValidation&ctx=" + str + "&input=" + str2 + "&vis=" + z);
    }

    public void a(String str, String str2, boolean z, String str3) {
        a("evt=formValidation&ctx=" + str + "&input=" + str2 + "&vis=" + z + "&msg=" + str3);
    }

    public void c(String str, String str2, String str3) {
        a("evt=formInteraction&ctx=" + str + "&input=" + str2 + "&aType=" + str3);
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
        String str7 = "evt=pushNotificationInteracted&ua=" + b() + "&ctx=" + str + "&platformType=" + str2;
        if (str3 != null) {
            str7 = str7 + "&notificationType=" + str3;
        }
        if (str4 != null) {
            str7 = str7 + "&notificationId=" + str4;
        }
        if (str5 != null) {
            str7 = str7 + "&actionTaken=" + str5;
        }
        if (str6 != null) {
            str7 = str7 + "&clientState=" + str6;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str7);
        sb.append("&openedClient=");
        sb.append(z ? "true" : "false");
        a(sb.toString());
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        String str6 = "evt=pushNotificationReceived&ua=" + b() + "&ctx=" + str + "&platformType=" + str2;
        if (str3 != null) {
            str6 = str6 + "&notificationType=" + str3;
        }
        if (str4 != null) {
            str6 = str6 + "&notificationId=" + str4;
        }
        if (str5 != null) {
            str6 = str6 + "&clientState=" + str5;
        }
        a(str6);
    }

    public void a(String str, boolean z) {
        a("evt=pushNotificationOSSettingsChanged&ua=" + b() + "&ctx=" + str + "&enabled=" + z);
    }

    public void e(String str) {
        a("evt=sharingAppSelected&appName=" + str);
    }

    public void b(String str, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append("evt=sharingAppSelected&ua=");
        sb.append(b());
        sb.append("&ctx=");
        if (TextUtils.isEmpty(str)) {
            str = "Unknown";
        }
        sb.append(str);
        String string = sb.toString();
        if (TextUtils.isEmpty(str2)) {
            str3 = string + "&status=Fail";
        } else {
            str3 = string + "&status=Success&appName=" + str2;
        }
        a(str3);
    }

    public void d(String str, String str2, String str3) {
        a("evt=clientSideError&ctx=" + str + "&error=" + str2 + "&data=" + str3);
    }

    public void a(String str, String str2, List<NameValuePair> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("evt=");
        sb.append(str);
        sb.append("&ctx=");
        sb.append(str2);
        if (list != null) {
            for (NameValuePair nameValuePair : list) {
                sb.append("&");
                sb.append(nameValuePair.getName());
                sb.append("=");
                sb.append(nameValuePair.getValue());
            }
        }
        a(sb.toString());
    }
}
