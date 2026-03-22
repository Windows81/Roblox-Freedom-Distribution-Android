package com.roblox.client.signup.a;

import com.roblox.client.ae.k;
import com.roblox.client.http.j;
import com.roblox.client.o;
import com.roblox.client.signup.a;
import com.roblox.client.u;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends e {
    public b(com.roblox.client.s.f fVar, a.d dVar) {
        super(fVar, dVar);
    }

    @Override // com.roblox.client.signup.a.e
    public j a(String str, String str2, String str3) {
        return com.roblox.client.http.b.a(u.d(str, str2), null, null, null);
    }

    @Override // com.roblox.client.signup.a.e
    public String a(int i, JSONObject jSONObject) {
        boolean zOptBoolean = jSONObject.optBoolean("IsValid", false);
        String strOptString = jSONObject.optString("ErrorMessage", "");
        int iOptInt = jSONObject.optInt("ErrorCode", -1);
        k.a("rbx.signup", "isUsernameValid: " + zOptBoolean + ", errorMessage: " + strOptString + ", responseCode: " + iOptInt);
        return a(iOptInt);
    }

    private String a(int i) {
        String str;
        String str2 = "InvalidBirthDate";
        String str3 = "ContainsPII";
        switch (i) {
            case 0:
                b(Integer.valueOf(o.j.Authentication_SignUp_Response_LooksGreat));
                str2 = "Success";
                str = "Android-AppSignup-Validation-UsernameSuccess";
                str3 = "";
                break;
            case 1:
                a();
                str2 = "Taken";
                str = "Android-AppSignup-Validation-UsernameTaken";
                str3 = "UsernameTaken";
                break;
            case 2:
                a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameExplicit));
                str2 = "Explicit";
                str = "Android-AppSignup-Validation-UsernameExplicit";
                str3 = "UsernameModerated";
                break;
            case 3:
                a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameInvalidLength));
                str2 = "InvalidLength";
                str = "Android-AppSignup-Validation-UsernameInvalidLength";
                str3 = "UsernameInvalidLength";
                break;
            case 4:
                a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter));
                str = "Android-AppSignup-Validation-UsernameStartingOrEndingWithUnderscore";
                str2 = "StartingOrEndingWithUnderscore";
                str3 = str2;
                break;
            case 5:
                a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameTooManyUnderscores));
                str = "Android-AppSignup-Validation-UsernameContainsMoreThanOneUnderscore";
                str2 = "MoreThanOneUnderscore";
                str3 = str2;
                break;
            case 6:
                a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameCannotContainSpaces));
                str = "Android-AppSignup-Validation-UsernameContainsSpaces";
                str2 = "ContainSpaces";
                str3 = str2;
                break;
            case 7:
                a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameContainsInvalidCharacters));
                str = "Android-AppSignup-Validation-UsernameContainsInvalidCharacters";
                str2 = "ContainInvalidCharacters";
                str3 = str2;
                break;
            case 8:
            default:
                a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameUnknownError));
                str = "Android-AppSignup-Validation-UsernameUnknownError";
                str2 = "UnknownError";
                str3 = str2;
                break;
            case 9:
                a(Integer.valueOf(o.j.Authentication_SignUp_Response_PleaseEnterUsername));
                str = "Android-AppSignup-Validation-UsernameIsNull";
                str2 = "UsernameIsNull";
                str3 = str2;
                break;
            case 10:
                a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernamePrivateInfo));
                str = "Android-AppSignup-Validation-UsernameContainsPII";
                str2 = "ContainsPII";
                break;
            case 11:
                a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameUnknownError));
                str = "Android-AppSignup-Validation-UsernameHasInvalidBirthDate";
                str3 = str2;
                break;
        }
        com.roblox.client.analytics.d.a("SignUpPreValidation", "Username", str2);
        this.f7106a.a(str);
        k.a("rbx.signup", "analyticsLabel: " + str2 + ", diagCounterName: " + str);
        return str3;
    }
}
