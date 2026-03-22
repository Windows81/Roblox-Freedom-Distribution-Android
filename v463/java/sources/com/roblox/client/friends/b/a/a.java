package com.roblox.client.friends.b.a;

import com.roblox.client.s.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f6033a;

    public a(f fVar) {
        this.f6033a = fVar;
    }

    public void a() {
        this.f6033a.a("Android-Chirp-SetConfigSuccess");
    }

    public void b() {
        this.f6033a.a("Android-Chirp-SetConfigCalled");
    }

    public void c() {
        this.f6033a.a("Android-Chirp-Started");
    }

    public void d() {
        this.f6033a.a("Android-Chirp-Stopped");
    }

    public void e() {
        this.f6033a.a("Android-Chirp-PublishCalled");
    }

    public void f() {
        this.f6033a.a("Android-Chirp-Published");
    }

    public void g() {
        this.f6033a.a("Android-Chirp-Unpublished");
    }

    public void h() {
        this.f6033a.a("Android-Chirp-PublishError");
    }

    public void i() {
        this.f6033a.a("Android-Chirp-SubscribeCalled");
    }

    public void j() {
        this.f6033a.a("Android-Chirp-Subscribed");
    }

    public void k() {
        this.f6033a.a("Android-Chirp-Unsubscribed");
    }

    public void l() {
        this.f6033a.a("Android-Chirp-SubscribeError");
    }

    public void m() {
        this.f6033a.a("Android-Chirp-PayloadSent");
    }

    public void n() {
        this.f6033a.a("Android-Chirp-PayloadFound");
    }

    public void o() {
        this.f6033a.a("Android-Chirp-Closed");
    }

    public void p() {
        this.f6033a.a("Android-Chirp-CloseCalled");
    }

    public void q() {
        this.f6033a.a("Android-Chirp-CloseError");
    }

    public void r() {
        this.f6033a.a("Android-Chirp-PickChannelCalled");
    }

    public void s() {
        this.f6033a.a("Android-Chirp-ChannelPicked");
    }

    public void t() {
        this.f6033a.a("Android-Chirp-AllChannelsBusy");
    }

    public void u() {
        this.f6033a.a("Android-Chirp-ChannelCollision");
    }

    public void a(Throwable th) {
        com.roblox.client.analytics.d.a("Crash on chirp.close(). Message: " + th.getMessage());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(java.lang.String r5, io.chirp.connect.models.ChirpErrorCode r6) {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "ChirpErrorCode: "
            r0.append(r1)
            int r6 = r6.getCode()
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.String r0 = "Nearby"
            com.roblox.client.analytics.d.a(r0, r5, r6)
            int r6 = r5.hashCode()
            r0 = 4
            r1 = 3
            r2 = 2
            r3 = 1
            switch(r6) {
                case -684938490: goto L4e;
                case 396256998: goto L44;
                case 1705180582: goto L3a;
                case 1722238648: goto L30;
                case 2006624064: goto L26;
                default: goto L25;
            }
        L25:
            goto L58
        L26:
            java.lang.String r6 = "SendError"
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L58
            r5 = 1
            goto L59
        L30:
            java.lang.String r6 = "InitError"
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L58
            r5 = 2
            goto L59
        L3a:
            java.lang.String r6 = "PickChannelError"
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L58
            r5 = 0
            goto L59
        L44:
            java.lang.String r6 = "StartError"
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L58
            r5 = 3
            goto L59
        L4e:
            java.lang.String r6 = "StopError"
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L58
            r5 = 4
            goto L59
        L58:
            r5 = -1
        L59:
            if (r5 == 0) goto L84
            if (r5 == r3) goto L7c
            if (r5 == r2) goto L74
            if (r5 == r1) goto L6c
            if (r5 == r0) goto L64
            goto L8b
        L64:
            com.roblox.client.s.f r5 = r4.f6033a
            java.lang.String r6 = "Android-Chirp-StopError"
            r5.a(r6)
            goto L8b
        L6c:
            com.roblox.client.s.f r5 = r4.f6033a
            java.lang.String r6 = "Android-Chirp-StartError"
            r5.a(r6)
            goto L8b
        L74:
            com.roblox.client.s.f r5 = r4.f6033a
            java.lang.String r6 = "Android-Chirp-SetConfigError"
            r5.a(r6)
            goto L8b
        L7c:
            com.roblox.client.s.f r5 = r4.f6033a
            java.lang.String r6 = "Android-Chirp-SendError"
            r5.a(r6)
            goto L8b
        L84:
            com.roblox.client.s.f r5 = r4.f6033a
            java.lang.String r6 = "Android-Chirp-PickChannelError"
            r5.a(r6)
        L8b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.friends.b.a.a.a(java.lang.String, io.chirp.connect.models.ChirpErrorCode):void");
    }
}
