package com.roblox.client.signup.multiscreen.b;

import com.roblox.client.signup.multiscreen.a.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class l extends k {
    l(String str, String str2, h hVar, n nVar) {
        super(str, str2, hVar, nVar);
    }

    @Override // com.roblox.client.signup.multiscreen.b.k
    com.roblox.client.http.j a() {
        return com.roblox.client.http.b.a(com.roblox.client.u.f(this.f7216a, this.f7217b), null, null, null);
    }

    @Override // com.roblox.client.signup.multiscreen.b.k
    String b() {
        return c();
    }

    private String c() {
        if (this.f7220e == 200) {
            return a(this.f7219d.optInt("code", -1));
        }
        if (this.f7220e == 400) {
            return d();
        }
        this.g.a(com.roblox.client.signup.multiscreen.a.d.b(this.f7217b, d.a.UNKNOWN));
        this.f.b("Android-AppSignup-Validation-PasswordError");
        return "UnknownError";
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        r0 = "Android-AppSignup-Validation-PasswordUsernameRequired";
        r1 = "Username/PhoneNumber/Email is required";
        r2 = com.roblox.client.signup.multiscreen.a.d.a.EMPTY_USERNAME;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String d() {
        /*
            r8 = this;
            java.lang.String r0 = "Android-AppSignup-Validation-PasswordError"
            java.lang.String r1 = "UnknownError"
            com.roblox.client.signup.multiscreen.a.d$a r2 = com.roblox.client.signup.multiscreen.a.d.a.UNKNOWN
            org.json.JSONObject r3 = r8.f7219d     // Catch: org.json.JSONException -> L31
            java.lang.String r4 = "errors"
            org.json.JSONArray r3 = r3.optJSONArray(r4)     // Catch: org.json.JSONException -> L31
            if (r3 == 0) goto L35
            r4 = 0
        L11:
            int r5 = r3.length()     // Catch: org.json.JSONException -> L31
            if (r4 >= r5) goto L35
            org.json.JSONObject r5 = r3.getJSONObject(r4)     // Catch: org.json.JSONException -> L31
            if (r5 == 0) goto L2e
            java.lang.String r6 = "code"
            r7 = -1
            int r5 = r5.optInt(r6, r7)     // Catch: org.json.JSONException -> L31
            r6 = 1
            if (r5 != r6) goto L2e
            java.lang.String r0 = "Android-AppSignup-Validation-PasswordUsernameRequired"
            java.lang.String r1 = "Username/PhoneNumber/Email is required"
            com.roblox.client.signup.multiscreen.a.d$a r2 = com.roblox.client.signup.multiscreen.a.d.a.EMPTY_USERNAME     // Catch: org.json.JSONException -> L31
            goto L35
        L2e:
            int r4 = r4 + 1
            goto L11
        L31:
            r3 = move-exception
            r3.printStackTrace()
        L35:
            com.roblox.client.signup.multiscreen.b.n r3 = r8.g
            java.lang.String r4 = r8.f7217b
            com.roblox.client.signup.multiscreen.a.d r2 = com.roblox.client.signup.multiscreen.a.d.b(r4, r2)
            r3.a(r2)
            com.roblox.client.signup.multiscreen.b.h r2 = r8.f
            r2.b(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.signup.multiscreen.b.l.d():java.lang.String");
    }

    private String a(int i) {
        String str;
        String str2;
        if (i == 0) {
            this.g.a(com.roblox.client.signup.multiscreen.a.d.a(this.f7217b, d.a.SUCCESS));
            this.g.a(this.f7217b);
            str = "";
            str2 = "Android-AppSignup-Validation-PasswordSuccess";
        } else if (i == 2) {
            this.g.a(com.roblox.client.signup.multiscreen.a.d.b(this.f7217b, d.a.TOO_SHORT));
            str = "PasswordLengthShort";
            str2 = "Android-AppSignup-Validation-PasswordLengthShort";
        } else if (i == 3) {
            this.g.a(com.roblox.client.signup.multiscreen.a.d.b(this.f7217b, d.a.EQUAL_TO_USERNAME));
            str = "PasswordMatchesUsername";
            str2 = "Android-AppSignup-Validation-PasswordMatchesUsername";
        } else if (i == 4) {
            this.g.a(com.roblox.client.signup.multiscreen.a.d.b(this.f7217b, d.a.NOT_ALLOWED));
            str = "PasswordForbidden";
            str2 = "Android-AppSignup-Validation-PasswordForbidden";
        } else if (i == 5) {
            this.g.a(com.roblox.client.signup.multiscreen.a.d.b(this.f7217b, d.a.TOO_SIMPLE));
            str = "PasswordDumb";
            str2 = "Android-AppSignup-Validation-PasswordDumb";
        } else {
            this.g.a(com.roblox.client.signup.multiscreen.a.d.b(this.f7217b, d.a.UNKNOWN));
            str = "UnknownError";
            str2 = "Android-AppSignup-Validation-PasswordError";
        }
        this.f.b(str2);
        com.roblox.client.ae.k.c("rbx.signup", "handlePasswordApiErrorCode(int subCode): " + i + ", diagCounterName: " + str2);
        return str;
    }
}
