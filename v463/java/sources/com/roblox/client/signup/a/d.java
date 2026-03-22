package com.roblox.client.signup.a;

import com.roblox.client.ae.k;
import com.roblox.client.http.j;
import com.roblox.client.o;
import com.roblox.client.signup.a;
import com.roblox.client.u;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends e {
    public d(com.roblox.client.s.f fVar, a.d dVar) {
        super(fVar, dVar);
    }

    @Override // com.roblox.client.signup.a.e
    public j a(String str, String str2, String str3) {
        return com.roblox.client.http.b.a(u.a(str, str2, str3), null, null, null);
    }

    @Override // com.roblox.client.signup.a.e
    public String a(int i, JSONObject jSONObject) {
        if (i == 200) {
            return a(jSONObject.optInt("code", -1));
        }
        if (i == 400) {
            return a(jSONObject);
        }
        a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameUnknownError));
        com.roblox.client.analytics.d.a("SignUpPreValidation", "Username", "UnknownError");
        this.f7106a.a("Android-AppSignup-Validation-UsernameUnknownError");
        return "UnknownError";
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private String a(JSONObject jSONObject) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5 = "UnknownError";
        int i = o.j.Authentication_SignUp_Response_UsernameUnknownError;
        String str6 = "Android-AppSignup-Validation-UsernameUnknownError";
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("errors");
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i2);
                    if (jSONObject2 != null) {
                        int iOptInt = jSONObject2.optInt("code", -1);
                        if (iOptInt == 1) {
                            i = o.j.Authentication_SignUp_Response_UsernameRequired;
                            str6 = "Android-AppSignup-Validation-UsernameRequiredError";
                            str3 = "Username is required";
                            str4 = "UsernameRequired";
                        } else if (iOptInt == 2) {
                            i = o.j.Authentication_SignUp_Response_BirthdayMustBeSetFirst;
                            str6 = "Android-AppSignup-Validation-UsernameBirthDateRequired";
                            str3 = "Birthday is required";
                            str4 = "BirthdayRequired";
                        }
                        String str7 = str4;
                        str5 = str3;
                        str2 = str7;
                        break;
                    }
                }
            }
            str2 = "UnknownError";
            String str8 = str5;
            str5 = str2;
            str = str8;
        } catch (JSONException e2) {
            str = "UnknownError";
            e2.printStackTrace();
        }
        a(Integer.valueOf(i));
        com.roblox.client.analytics.d.a("SignUpPreValidation", "Username", str5);
        this.f7106a.a(str6);
        return str;
    }

    private String a(int i) {
        String str;
        String str2;
        String str3 = "ContainsPII";
        if (i == 10) {
            a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernamePrivateInfo));
            str = "Android-AppSignup-Validation-UsernameContainsPII";
            str2 = "ContainsPII";
        } else if (i != 12) {
            switch (i) {
                case 0:
                    b(Integer.valueOf(o.j.Authentication_SignUp_Response_LooksGreat));
                    str3 = "Success";
                    str = "Android-AppSignup-Validation-UsernameSuccess";
                    str2 = "";
                    break;
                case 1:
                    a();
                    str3 = "Taken";
                    str = "Android-AppSignup-Validation-UsernameTaken";
                    str2 = "UsernameTaken";
                    break;
                case 2:
                    a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameExplicit));
                    str3 = "Explicit";
                    str = "Android-AppSignup-Validation-UsernameExplicit";
                    str2 = "UsernameModerated";
                    break;
                case 3:
                    a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameInvalidLength));
                    str3 = "InvalidLength";
                    str = "Android-AppSignup-Validation-UsernameInvalidLength";
                    str2 = "UsernameInvalidLength";
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
                default:
                    a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameUnknownError));
                    str = "Android-AppSignup-Validation-UsernameUnknownError";
                    str2 = "UnknownError";
                    str3 = str2;
                    break;
            }
        } else {
            a(Integer.valueOf(o.j.Authentication_SignUp_Response_UsernameExplicit));
            str3 = "Reserved";
            str = "Android-AppSignup-Validation-UsernameReserved";
            str2 = "UsernameReserved";
        }
        com.roblox.client.analytics.d.a("SignUpPreValidation", "Username", str3);
        this.f7106a.a(str);
        k.a("rbx.signup", "analyticsLabel: " + str3 + ", diagCounterName: " + str);
        return str2;
    }
}
