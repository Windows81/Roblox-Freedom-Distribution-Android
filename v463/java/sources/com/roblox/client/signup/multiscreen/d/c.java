package com.roblox.client.signup.multiscreen.d;

import com.roblox.client.ae.k;
import com.roblox.client.http.j;
import com.roblox.client.signup.multiscreen.a.h;
import com.roblox.client.signup.multiscreen.b.s;
import com.roblox.client.signup.multiscreen.b.x;
import com.roblox.client.u;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends b {
    public c(String str, com.roblox.client.signup.multiscreen.a.a aVar, s sVar, x xVar) {
        super(str, aVar, sVar, xVar);
    }

    @Override // com.roblox.client.signup.multiscreen.d.b
    j a() {
        return com.roblox.client.http.b.a(u.a(this.f7389b, this.h, "Signup"), null, null, null);
    }

    @Override // com.roblox.client.signup.multiscreen.d.b
    String b() {
        return c();
    }

    private String c() {
        if (this.f7392e == 200) {
            return e();
        }
        if (this.f7392e == 400) {
            return d();
        }
        this.g.a(h.a(this.f7389b, h.a.UNKNOWN));
        this.f.a("UnknownError");
        this.f.c("Android-AppSignup-Validation-UsernameUnknownError");
        k.a("rbx.signup", "analyticsLabel: UnknownError, diagCounterName: Android-AppSignup-Validation-UsernameUnknownError");
        return "UnknownError";
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private String d() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7 = "UnknownError";
        String str8 = "Android-AppSignup-Validation-UsernameUnknownError";
        try {
            JSONArray jSONArrayOptJSONArray = this.f7391d.optJSONArray("errors");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i);
                    if (jSONObject != null) {
                        int iOptInt = jSONObject.optInt("code", -1);
                        if (iOptInt == 1) {
                            this.g.a(h.a(this.f7389b, h.a.NULL));
                            str4 = "Android-AppSignup-Validation-UsernameRequiredError";
                            str5 = "Username is required";
                            str6 = "UsernameRequired";
                        } else if (iOptInt == 2) {
                            this.g.a(h.a(this.f7389b, h.a.BIRTHDAY_REQUIRED));
                            str4 = "Android-AppSignup-Validation-UsernameBirthDateRequired";
                            str5 = "Birthday is required";
                            str6 = "BirthdayRequired";
                        }
                        String str9 = str4;
                        str3 = str6;
                        str7 = str5;
                        str2 = str9;
                        break;
                    }
                }
            }
            str2 = "Android-AppSignup-Validation-UsernameUnknownError";
            str3 = "UnknownError";
            String str10 = str2;
            str = str7;
            str7 = str3;
            str8 = str10;
        } catch (JSONException e2) {
            str = "UnknownError";
            k.e("rbx.utils", "JSONException thrown in handleUsernameApi400SubCode(). " + e2.getMessage());
        }
        this.f.a(str7);
        this.f.c(str8);
        return str;
    }

    private String e() {
        String str;
        String str2;
        int iOptInt = this.f7391d.optInt("code", -1);
        String str3 = "ContainsPII";
        if (iOptInt == 10) {
            this.g.a(h.a(this.f7389b, h.a.PRIVATE_INFO));
            str = "Android-AppSignup-Validation-UsernameContainsPII";
            str2 = "ContainsPII";
        } else if (iOptInt != 12) {
            switch (iOptInt) {
                case 0:
                    this.g.a(h.a(this.f7389b));
                    this.g.b(this.f7389b);
                    str3 = "Success";
                    str = "Android-AppSignup-Validation-UsernameSuccess";
                    str2 = "";
                    break;
                case 1:
                    this.g.a(h.a(this.f7389b, h.a.TAKEN));
                    str3 = "Taken";
                    str = "Android-AppSignup-Validation-UsernameTaken";
                    str2 = "UsernameTaken";
                    break;
                case 2:
                    this.g.a(h.a(this.f7389b, h.a.NOT_ALLOWED));
                    str3 = "Explicit";
                    str = "Android-AppSignup-Validation-UsernameExplicit";
                    str2 = "UsernameModerated";
                    break;
                case 3:
                    this.g.a(h.a(this.f7389b, h.a.INVALID_LENGTH));
                    str3 = "InvalidLength";
                    str = "Android-AppSignup-Validation-UsernameInvalidLength";
                    str2 = "UsernameInvalidLength";
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
                default:
                    this.g.a(h.a(this.f7389b, h.a.UNKNOWN));
                    str = "Android-AppSignup-Validation-UsernameUnknownError";
                    str2 = "UnknownError";
                    str3 = str2;
                    break;
            }
        } else {
            this.g.a(h.a(this.f7389b, h.a.NOT_ALLOWED));
            str3 = "Reserved";
            str = "Android-AppSignup-Validation-UsernameReserved";
            str2 = "UsernameReserved";
        }
        this.f.a(str3);
        this.f.c(str);
        k.a("rbx.signup", "analyticsLabel: " + str3 + ", diagCounterName: " + str);
        return str2;
    }
}
