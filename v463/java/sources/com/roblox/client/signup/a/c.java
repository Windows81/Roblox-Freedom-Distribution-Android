package com.roblox.client.signup.a;

import com.roblox.client.ae.k;
import com.roblox.client.http.j;
import com.roblox.client.o;
import com.roblox.client.signup.a;
import com.roblox.client.u;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends f {
    public c(com.roblox.client.s.f fVar, a.h hVar) {
        super(fVar, hVar);
    }

    @Override // com.roblox.client.signup.a.f
    public j a(String str, String str2) {
        return com.roblox.client.http.b.a(u.f(str, str2), null, null, null);
    }

    @Override // com.roblox.client.signup.a.f
    public String a(int i, JSONObject jSONObject) {
        if (i == 200) {
            return a(jSONObject.optInt("code", -1));
        }
        if (i == 400) {
            return a(jSONObject);
        }
        a(Integer.valueOf(o.j.Authentication_SignUp_Response_PasswordUnknownError));
        this.f7108a.a("Android-AppSignup-Validation-PasswordError");
        return "UnknownError";
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
    
        r0 = com.roblox.client.o.j.Authentication_SignUp_Response_PasswordUsernameRequired;
        r1 = "Android-AppSignup-Validation-PasswordUsernameRequired";
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
    
        r2 = "Username is required";
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String a(org.json.JSONObject r8) {
        /*
            r7 = this;
            int r0 = com.roblox.client.o.j.Authentication_SignUp_Response_PasswordUnknownError
            java.lang.String r1 = "Android-AppSignup-Validation-PasswordError"
            java.lang.String r2 = "UnknownError"
            java.lang.String r3 = "errors"
            org.json.JSONArray r8 = r8.optJSONArray(r3)     // Catch: org.json.JSONException -> L30
            if (r8 == 0) goto L34
            r3 = 0
        Lf:
            int r4 = r8.length()     // Catch: org.json.JSONException -> L30
            if (r3 >= r4) goto L34
            org.json.JSONObject r4 = r8.getJSONObject(r3)     // Catch: org.json.JSONException -> L30
            if (r4 == 0) goto L2d
            java.lang.String r5 = "code"
            r6 = -1
            int r4 = r4.optInt(r5, r6)     // Catch: org.json.JSONException -> L30
            r5 = 1
            if (r4 != r5) goto L2d
            int r0 = com.roblox.client.o.j.Authentication_SignUp_Response_PasswordUsernameRequired     // Catch: org.json.JSONException -> L30
            java.lang.String r1 = "Android-AppSignup-Validation-PasswordUsernameRequired"
            java.lang.String r8 = "Username is required"
            r2 = r8
            goto L34
        L2d:
            int r3 = r3 + 1
            goto Lf
        L30:
            r8 = move-exception
            r8.printStackTrace()
        L34:
            java.lang.Integer r8 = java.lang.Integer.valueOf(r0)
            r7.a(r8)
            com.roblox.client.s.f r8 = r7.f7108a
            r8.a(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.signup.a.c.a(org.json.JSONObject):java.lang.String");
    }

    private String a(int i) {
        String str;
        String str2;
        if (i == 0) {
            a();
            str = "";
            str2 = "Android-AppSignup-Validation-PasswordSuccess";
        } else if (i == 2) {
            a(Integer.valueOf(o.j.Authentication_SignUp_Response_SignUpPasswordTooShortError));
            str = "PasswordLengthShort";
            str2 = "Android-AppSignup-Validation-PasswordLengthShort";
        } else if (i == 3) {
            a(Integer.valueOf(o.j.Authentication_SignUp_Response_PasswordMatchesUsername));
            str = "PasswordMatchesUsername";
            str2 = "Android-AppSignup-Validation-PasswordMatchesUsername";
        } else if (i == 4) {
            a(Integer.valueOf(o.j.Authentication_SignUp_Response_PasswordForbidden));
            str = "PasswordForbidden";
            str2 = "Android-AppSignup-Validation-PasswordForbidden";
        } else if (i == 5) {
            a(Integer.valueOf(o.j.Authentication_SignUp_Response_PasswordComplexity));
            str = "PasswordDumb";
            str2 = "Android-AppSignup-Validation-PasswordDumb";
        } else {
            a(Integer.valueOf(o.j.Authentication_SignUp_Response_PasswordUnknownError));
            str = "UnknownError";
            str2 = "Android-AppSignup-Validation-PasswordError";
        }
        this.f7108a.a(str2);
        k.a("rbx.signup", "handlePasswordApiErrorCode(int subCode): " + i + ", diagCounterName: " + str2);
        return str;
    }
}
