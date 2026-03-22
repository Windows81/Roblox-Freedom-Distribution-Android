package com.roblox.client.signup.a;

import com.roblox.client.ae.k;
import com.roblox.client.http.j;
import com.roblox.client.o;
import com.roblox.client.signup.a;
import com.roblox.client.u;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends f {
    public a(com.roblox.client.s.f fVar, a.h hVar) {
        super(fVar, hVar);
    }

    @Override // com.roblox.client.signup.a.f
    public j a(String str, String str2) {
        return com.roblox.client.http.b.a(u.e(str, str2), null, null, null);
    }

    @Override // com.roblox.client.signup.a.f
    public String a(int i, JSONObject jSONObject) {
        k.a("rbx.signup", " ValidPasswordApiResponse - isPasswordValid: " + jSONObject.optBoolean("IsValid", false) + ", errorMessage: " + jSONObject.optString("ErrorMessage", "") + " " + jSONObject);
        return a(jSONObject.optInt("ErrorCode", -1));
    }

    private String a(int i) {
        String str;
        String str2;
        if (i == 0) {
            a();
            str = "";
            str2 = "Android-AppSignup-Validation-PasswordSuccess";
        } else if (i == 1) {
            a(Integer.valueOf(o.j.Authentication_SignUp_Response_SignUpPasswordTooShortError));
            str = "PasswordVipLength";
            str2 = "Android-AppSignup-Validation-PasswordRequirementsNotSatisfied";
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
        k.a("rbx.signup", "handlePasswordValidationResponse(int responseCode): " + i + ", diagCounterName: " + str2);
        return str;
    }
}
