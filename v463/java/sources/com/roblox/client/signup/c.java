package com.roblox.client.signup;

import com.appsflyer.internal.referrer.Payload;
import com.roblox.client.ae.k;
import com.roblox.client.http.b;
import com.roblox.client.http.j;
import com.roblox.client.http.post.SignUpRequestBody;
import com.roblox.client.signup.d;
import com.roblox.client.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends d {
    private static HashMap<String, Integer> k;

    private String a(int i) {
        switch (i) {
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

    static {
        HashMap<String, Integer> map = new HashMap<>();
        k = map;
        map.put("UsernameTaken", 1);
        k.put("UsernameInvalid", 2);
        k.put("PasswordInvalid", 3);
        k.put("PasswordMatchesUsername", 4);
        k.put("DumbPassword", 5);
        k.put("GenderInvalid", 6);
        k.put("BirthdayInvalid", 7);
        k.put("StatusThrottled", 8);
        k.put("Captcha", 10000);
    }

    public c(int i, int i2, int i3, int i4, String str, String str2, String str3, String str4, String str5, d.a aVar) {
        super(i, i2, i3, i4, str, str2, str3, str4, str5, aVar);
    }

    public c(int i, int i2, int i3, int i4, String str, String str2, String str3, String str4, d.a aVar) {
        super(i, i2, i3, i4, null, str, str2, str3, str4, aVar);
    }

    @Override // com.roblox.client.signup.d
    protected f a(String str, String str2, String str3, String str4, String str5, b.a[] aVarArr) {
        return a(str, str2, b(), a(this.f7124e, this.f, this.f7123d), str3, str4, str5, aVarArr);
    }

    f a(String str, String str2, String str3, String str4, String str5, String str6, String str7, b.a[] aVarArr) {
        String strL = u.L();
        j jVarB = com.roblox.client.http.b.b(strL, a(str, str2, str3, str4, str5, str6, str7), aVarArr, u.s());
        int iB = jVarB.b();
        String strA = jVarB.a();
        f fVar = new f();
        fVar.f7134d = iB;
        fVar.f7135e = strL;
        fVar.f = strA;
        try {
            k.b("roblox.signup", "SignUpApiTask.doSignupRequest() url: " + strL + ", code:" + iB + ", body:" + strA);
            if (iB == 200) {
                JSONObject jSONObject = new JSONObject(strA);
                if (jSONObject.has("userId")) {
                    fVar.g = jSONObject.getLong("userId");
                    fVar.h = jSONObject.optLong("starterPlaceId", -1L);
                    k.b("roblox.signup", "SignUpApiTask.doSignupRequest() starterPlaceId: " + fVar.h);
                    fVar.f7131a.add(Payload.RESPONSE_OK);
                } else {
                    fVar.f7131a.add("StatusUserIdInvalid");
                }
            } else if (iB == 403) {
                a(fVar.f7131a, new JSONObject(strA).optJSONArray("failureDetails"));
            } else if (iB == 429) {
                fVar.f7131a.add("StatusThrottled");
            } else {
                fVar.f7131a.add("StatusServerError");
            }
        } catch (JSONException unused) {
            fVar.f7131a.add("StatusJsonError");
        }
        return fVar;
    }

    String a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        SignUpRequestBody signUpRequestBody = new SignUpRequestBody(str, str2, str3, str4, str5, str6, str7);
        if (com.roblox.client.b.K()) {
            signUpRequestBody.setDeviceHandle(com.roblox.client.j.a().c());
        }
        return new com.google.gson.f().a(signUpRequestBody);
    }

    private void a(ArrayList<String> arrayList, JSONArray jSONArray) {
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    if (jSONObject != null) {
                        int iOptInt = jSONObject.optInt("code", -1);
                        k.b("roblox.signup", "addToSignupStatus: (new updated API) errorCode = " + iOptInt);
                        if (iOptInt != -1) {
                            arrayList.add(a(iOptInt));
                        } else {
                            arrayList.add("StatusJsonError");
                        }
                    } else {
                        arrayList.add("StatusJsonError");
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    arrayList.add("StatusJsonError");
                    k.b("roblox.signup", "JSONException thrown while parsing response: " + e2.getMessage());
                }
            }
            if (arrayList.size() > 1) {
                Collections.sort(arrayList, new Comparator<String>() { // from class: com.roblox.client.signup.c.1
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(String str, String str2) {
                        Integer num = (Integer) c.k.get(str);
                        if (num == null) {
                            num = num;
                        }
                        Integer num2 = (Integer) c.k.get(str2);
                        return num.intValue() - (num2 != null ? num2 : 1000).intValue();
                    }
                });
            }
            k.d("roblox.signup", "SignUpApiTask.getErrorReason() errorList:" + arrayList);
        }
    }
}
