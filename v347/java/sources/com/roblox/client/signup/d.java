package com.roblox.client.signup;

import com.roblox.client.RobloxSettings;
import com.roblox.client.http.b;
import com.roblox.client.http.post.SignUpRequestBody;
import com.roblox.client.signup.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d extends e {
    private static HashMap<String, Integer> i = new HashMap<>();

    static {
        i.put("UsernameTaken", 1);
        i.put("UsernameInvalid", 2);
        i.put("PasswordInvalid", 3);
        i.put("PasswordMatchesUsername", 4);
        i.put("DumbPassword", 5);
        i.put("GenderInvalid", 6);
        i.put("BirthdayInvalid", 7);
        i.put("StatusThrottled", 8);
        i.put("Captcha", 10000);
    }

    public d(int i2, int i3, int i4, int i5, String str, String str2, String str3, e.a aVar) {
        super(i2, i3, i4, i5, str, str2, str3, aVar);
    }

    @Override // com.roblox.client.signup.e
    protected j a(String str, String str2, String str3, b.a[] aVarArr) {
        return a(str, str2, b(), a(this.e, this.f, this.f7858d), str3, aVarArr);
    }

    j a(String str, String str2, String str3, String str4, String str5, b.a[] aVarArr) {
        String strSignUpApiUrl = RobloxSettings.signUpApiUrl();
        com.roblox.client.http.j jVarB = com.roblox.client.http.b.b(strSignUpApiUrl, a(str, str2, str3, str4, str5), aVarArr, RobloxSettings.getJsonContentType());
        int iB = jVarB.b();
        String strA = jVarB.a();
        j jVar = new j();
        jVar.f7875c = iB;
        jVar.f7876d = strSignUpApiUrl;
        jVar.e = strA;
        try {
            com.roblox.client.util.g.b("roblox.signup", "SignUpApiTask.doSignupRequest() url: " + strSignUpApiUrl + ", code:" + iB + ", body:" + strA);
            if (iB == 200) {
                JSONObject jSONObject = new JSONObject(strA);
                if (jSONObject.has("userId")) {
                    jVar.f = jSONObject.getLong("userId");
                    jVar.f7873a.add("OK");
                } else {
                    jVar.f7873a.add("StatusUserIdInvalid");
                }
            } else if (iB == 403) {
                a(jVar.f7873a, new JSONObject(strA).optJSONArray("failureDetails"));
            } else if (iB == 429) {
                jVar.f7873a.add("StatusThrottled");
            } else {
                jVar.f7873a.add("StatusServerError");
            }
        } catch (JSONException e) {
            jVar.f7873a.add("StatusJsonError");
        }
        return jVar;
    }

    String a(String str, String str2, String str3, String str4, String str5) {
        SignUpRequestBody signUpRequestBody = new SignUpRequestBody(str, str2, str3, str4, str5);
        if (com.roblox.client.b.aj()) {
            signUpRequestBody.setDeviceHandle(com.roblox.client.c.a().c());
        }
        return new com.google.gson.e().b(signUpRequestBody);
    }

    private void a(ArrayList<String> arrayList, JSONArray jSONArray) {
        if (jSONArray != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    if (jSONObject != null) {
                        int iOptInt = jSONObject.optInt("code", -1);
                        com.roblox.client.util.g.b("roblox.signup", "addToSignupStatus: (new updated API) errorCode = " + iOptInt);
                        if (iOptInt != -1) {
                            arrayList.add(a(iOptInt));
                        } else {
                            arrayList.add("StatusJsonError");
                        }
                    } else {
                        arrayList.add("StatusJsonError");
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                    arrayList.add("StatusJsonError");
                    com.roblox.client.util.g.b("roblox.signup", "JSONException thrown while parsing response: " + e.getMessage());
                }
            }
            if (arrayList.size() > 1) {
                Collections.sort(arrayList, new Comparator<String>() { // from class: com.roblox.client.signup.d.1
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(String str, String str2) {
                        Integer num = (Integer) d.i.get(str);
                        Integer num2 = num == null ? 1000 : num;
                        Integer num3 = (Integer) d.i.get(str2);
                        if (num3 == null) {
                            num3 = 1000;
                        }
                        return num2.intValue() - num3.intValue();
                    }
                });
            }
            com.roblox.client.util.g.d("roblox.signup", "SignUpApiTask.getErrorReason() errorList:" + arrayList);
        }
    }

    private String a(int i2) {
        switch (i2) {
            case 2:
                return "Captcha";
            case 3:
                return "StatusThrottled";
            case 4:
                return "BirthdayInvalid";
            case 5:
                return "UsernameInvalid";
            case 6:
                return "UsernameTaken";
            case 7:
                return "PasswordInvalid";
            case 8:
                return "PasswordMatchesUsername";
            case 9:
                return "DumbPassword";
            default:
                return "StatusServerError";
        }
    }
}
