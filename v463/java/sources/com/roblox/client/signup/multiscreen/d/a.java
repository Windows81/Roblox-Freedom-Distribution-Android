package com.roblox.client.signup.multiscreen.d;

import com.roblox.client.ae.k;
import com.roblox.client.http.j;
import com.roblox.client.signup.multiscreen.a.h;
import com.roblox.client.signup.multiscreen.b.s;
import com.roblox.client.signup.multiscreen.b.x;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends b {
    public a(String str, com.roblox.client.signup.multiscreen.a.a aVar, s sVar, x xVar) {
        super(str, aVar, sVar, xVar);
    }

    @Override // com.roblox.client.signup.multiscreen.d.b
    j a() {
        return com.roblox.client.http.b.a(u.d(this.f7389b, this.h), null, null, null);
    }

    @Override // com.roblox.client.signup.multiscreen.d.b
    String b() {
        boolean zOptBoolean = this.f7391d.optBoolean("IsValid", false);
        String strOptString = this.f7391d.optString("ErrorMessage", "");
        int iOptInt = this.f7391d.optInt("ErrorCode", -1);
        k.a("rbx.signup", "isUsernameValid: " + zOptBoolean + ", errorMessage: " + strOptString + ", responseCode: " + iOptInt);
        return a(iOptInt);
    }

    private String a(int i) {
        String str;
        String str2 = "ContainsPII";
        String str3 = "UsernameIsNull";
        switch (i) {
            case 0:
                this.g.a(h.a(this.f7389b));
                this.g.b(this.f7389b);
                str2 = "Success";
                str = "Android-AppSignup-Validation-UsernameSuccess";
                str3 = "";
                break;
            case 1:
                this.g.a(h.a(this.f7389b, h.a.TAKEN));
                str2 = "Taken";
                str = "Android-AppSignup-Validation-UsernameTaken";
                str3 = "UsernameTaken";
                break;
            case 2:
                this.g.a(h.a(this.f7389b, h.a.NOT_ALLOWED));
                str2 = "Explicit";
                str = "Android-AppSignup-Validation-UsernameExplicit";
                str3 = "UsernameModerated";
                break;
            case 3:
                this.g.a(h.a(this.f7389b, h.a.INVALID_LENGTH));
                str2 = "InvalidLength";
                str = "Android-AppSignup-Validation-UsernameInvalidLength";
                str3 = "UsernameInvalidLength";
                break;
            case 4:
                this.g.a(h.a(this.f7389b, h.a.INVALID_START_CHAR));
                str = "Android-AppSignup-Validation-UsernameStartingOrEndingWithUnderscore";
                str2 = "StartingOrEndingWithUnderscore";
                str3 = str2;
                break;
            case 5:
                this.g.a(h.a(this.f7389b, h.a.MORE_THAT_ONE_UNDERSCORE));
                str = "Android-AppSignup-Validation-UsernameContainsMoreThanOneUnderscore";
                str2 = "MoreThanOneUnderscore";
                str3 = str2;
                break;
            case 6:
                this.g.a(h.a(this.f7389b, h.a.CONTAINS_SPACES));
                str = "Android-AppSignup-Validation-UsernameContainsSpaces";
                str2 = "ContainSpaces";
                str3 = str2;
                break;
            case 7:
                this.g.a(h.a(this.f7389b, h.a.INVALID_CHARS));
                str = "Android-AppSignup-Validation-UsernameContainsInvalidCharacters";
                str2 = "ContainInvalidCharacters";
                str3 = str2;
                break;
            case 8:
            default:
                this.g.a(h.a(this.f7389b, h.a.UNKNOWN));
                str = "Android-AppSignup-Validation-UsernameUnknownError";
                str2 = "UnknownError";
                str3 = str2;
                break;
            case 9:
                this.g.a(h.a(this.f7389b, h.a.NULL));
                str = "Android-AppSignup-Validation-UsernameIsNull";
                str2 = "UsernameIsNull";
                break;
            case 10:
                this.g.a(h.a(this.f7389b, h.a.PRIVATE_INFO));
                str = "Android-AppSignup-Validation-UsernameContainsPII";
                str3 = str2;
                break;
        }
        this.f.a(str2);
        this.f.c(str);
        k.a("rbx.signup", "analyticsLabel: " + str2 + ", diagCounterName: " + str);
        return str3;
    }
}
