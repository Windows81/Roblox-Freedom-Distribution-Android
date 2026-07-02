package com.roblox.client.b;

import com.roblox.client.RobloxSettings;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.http.j;
import com.roblox.client.http.m;
import com.roblox.client.http.t;
import com.roblox.client.util.g;
import com.roblox.client.util.p;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static b f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f6463a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<String> f6464b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f6465c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f6466d;
    private final p.a e;

    interface a {
        t a(String str, String str2, m mVar, String str3);
    }

    public static b a() {
        if (f == null) {
            synchronized (b.class) {
                if (f == null) {
                    f = new b(new C0097b(), new p.b());
                }
            }
        }
        return f;
    }

    b(a aVar, p.a aVar2) {
        g.b("EventStreamManager", "[Constructor]: ENTER.");
        this.f6466d = aVar;
        this.e = aVar2;
    }

    /* JADX INFO: renamed from: com.roblox.client.b.b$b, reason: collision with other inner class name */
    static class C0097b implements a {
        C0097b() {
        }

        @Override // com.roblox.client.b.b.a
        public t a(String str, String str2, m mVar, String str3) {
            return new t(str, str2, mVar, str3);
        }
    }

    private void d(String str) {
        StringBuilder sbAppend = new StringBuilder().append("lt=").append(String.format("%tFT%<tT.%<tLZ", Calendar.getInstance(TimeZone.getTimeZone("Z")))).append("&mdid=").append(RobloxSettings.mDeviceId).append("&idfv=").append(RobloxSettings.mDeviceId).append("&idfa=");
        com.roblox.client.util.b.b();
        String str2 = sbAppend.append(com.roblox.client.util.b.a()).toString() + "&" + str;
        synchronized (this.f6463a) {
            this.f6464b.add(str2);
            if (this.f6464b.size() == 1) {
                this.f6465c = this.e.a();
            }
            if (c()) {
                b();
            }
        }
    }

    private static String a(List<String> list) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int i = 0;
        int size = list.size();
        Iterator<String> it = list.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                sb.append("\"").append(it.next()).append("\"");
                i = i2 + 1;
                if (i < size) {
                    sb.append(",");
                }
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }

    private boolean c() {
        return this.f6464b.size() >= Math.min(com.roblox.client.b.aJ(), 900) || this.e.a() - this.f6465c >= ((long) com.roblox.client.b.aK()) * 1000;
    }

    private static String d() {
        try {
            return URLEncoder.encode(RobloxSettings.userAgent(), Constants.UTF8_NAME);
        } catch (UnsupportedEncodingException e) {
            g.e("EventStreamManager", "Failed to URL-encode the user-agent. Exception: " + e);
            return null;
        }
    }

    public void b() {
        synchronized (this.f6463a) {
            if (!this.f6464b.isEmpty()) {
                g.c("EventStreamManager", "sendAllNow: # of events " + this.f6464b.size());
                String strA = a(this.f6464b);
                g.c("EventStreamManager", "sendAllNow: httpPostBody: " + strA);
                this.f6464b.clear();
                this.f6465c = 0L;
                this.f6466d.a(RobloxSettings.rbxAnalyticsBatchUrl(), strA, new m() { // from class: com.roblox.client.b.b.1
                    @Override // com.roblox.client.http.m
                    public void a(j jVar) {
                        if (jVar.b() != 200 && jVar.b() != 202) {
                            g.d("EventStreamManager", "addEvent: Failed to post events. Ignore and do nothing");
                            c.a("RbxAnalytics", "PostInBatch", "Failure_" + jVar.b());
                        } else {
                            c.a("RbxAnalytics", "PostInBatch", "OK");
                        }
                    }
                }, RobloxSettings.getJsonContentType()).c();
            }
        }
    }

    public void a(String str) {
        d("evt=appLaunch&ctx=" + str + "&appStoreSource=google");
    }

    public void a(String str, String str2) {
        d("evt=appStageLoaded&ctx=" + str + "&stage=" + str2);
    }

    public void b(String str) {
        d("evt=screenLoaded&ctx=" + str);
    }

    public void b(String str, String str2) {
        d("evt=buttonClick&ctx=" + str + "&btn=" + str2);
    }

    public void a(String str, String str2, String str3) {
        d("evt=buttonClick&ctx=" + str + "&btn=" + str2 + "&cstm=" + str3);
    }

    public void a(String str, String str2, boolean z) {
        d("evt=formValidation&ctx=" + str + "&input=" + str2 + "&vis=" + z);
    }

    public void a(String str, String str2, boolean z, String str3) {
        d("evt=formValidation&ctx=" + str + "&input=" + str2 + "&vis=" + z + "&msg=" + str3);
    }

    public void b(String str, String str2, String str3) {
        d("evt=formInteraction&ctx=" + str + "&input=" + str2 + "&aType=" + str3);
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
        String str7 = "evt=pushNotificationInteracted&ua=" + d() + "&ctx=" + str + "&platformType=" + str2;
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
        d(str7 + "&openedClient=" + (z ? "true" : "false"));
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        String str6 = "evt=pushNotificationReceived&ua=" + d() + "&ctx=" + str + "&platformType=" + str2;
        if (str3 != null) {
            str6 = str6 + "&notificationType=" + str3;
        }
        if (str4 != null) {
            str6 = str6 + "&notificationId=" + str4;
        }
        if (str5 != null) {
            str6 = str6 + "&clientState=" + str5;
        }
        d(str6);
    }

    public void c(String str) {
        d("evt=sharingAppSelected&appName=" + str);
    }

    public void c(String str, String str2, String str3) {
        d("evt=formSubmit&ctx=" + str + "&field=" + str2 + "&value=" + str3);
    }

    public void a(boolean z) {
        if (com.roblox.client.b.bU()) {
            d("evt=visibilityOfBottomBar&ctx=luaApp&visible=" + z);
        }
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
        d(sb.toString());
    }
}
