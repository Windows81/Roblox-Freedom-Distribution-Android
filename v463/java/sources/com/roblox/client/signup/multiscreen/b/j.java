package com.roblox.client.signup.multiscreen.b;

import com.roblox.client.signup.multiscreen.a.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j extends k {
    j(String str, String str2, h hVar, n nVar) {
        super(str, str2, hVar, nVar);
    }

    @Override // com.roblox.client.signup.multiscreen.b.k
    com.roblox.client.http.j a() {
        return com.roblox.client.http.b.a(com.roblox.client.u.e(this.f7216a, this.f7217b), null, null, null);
    }

    @Override // com.roblox.client.signup.multiscreen.b.k
    String b() {
        return a(this.f7219d.optInt("ErrorCode", -1));
    }

    private String a(int i) {
        String str;
        String str2;
        if (i == 0) {
            this.g.a(com.roblox.client.signup.multiscreen.a.d.a(this.f7217b, d.a.SUCCESS));
            this.g.a(this.f7217b);
            str = "";
            str2 = "Android-AppSignup-Validation-PasswordSuccess";
        } else if (i == 1) {
            this.g.a(com.roblox.client.signup.multiscreen.a.d.b(this.f7217b, d.a.REQUIREMENTS_NOT_SATISFIED));
            str = "PasswordVipLength";
            str2 = "Android-AppSignup-Validation-PasswordRequirementsNotSatisfied";
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
        com.roblox.client.ae.k.a("rbx.signup", "handlePasswordValidationResponse(int responseCode): " + i + ", diagCounterName: " + str2);
        return str;
    }
}
