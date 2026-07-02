package com.roblox.client.resetpassword;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.b.f;
import com.roblox.client.http.i;
import com.roblox.client.http.j;
import com.roblox.client.http.post.ResetPasswordRequestBody;
import com.roblox.client.util.g;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f7778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.http.f f7779b;

    public interface a {
        void a();

        void a(String str, int i);
    }

    public b(f fVar, com.roblox.client.http.f fVar2) {
        this.f7778a = fVar;
        this.f7779b = fVar2;
    }

    public void a(String str, final a aVar) {
        this.f7779b.a(RobloxSettings.resetPasswordApiUrl(), new ResetPasswordRequestBody(str), null, new i() { // from class: com.roblox.client.resetpassword.b.1
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                String str2;
                String string;
                String string2 = null;
                int i = R.string.Authentication_ResetPassword_Response_InvalidUsername;
                int iB = jVar.b();
                switch (iB) {
                    case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
                        b.this.f7778a.a();
                        aVar.a();
                        return;
                    case 400:
                        str2 = "InvalidUsername";
                        break;
                    case 403:
                        str2 = null;
                        break;
                    case 429:
                        i = R.string.Authentication_ResetPassword_Response_TooManyAttempts;
                        str2 = "FloodCheck";
                        break;
                    default:
                        str2 = null;
                        i = -1;
                        break;
                }
                try {
                    JSONObject jSONObject = new JSONObject(jVar.a());
                    string = jSONObject.getString("Status");
                    string2 = jSONObject.getString("Message");
                } catch (JSONException e) {
                    g.e("rbx.resetpassword", "callResetPasswordWithApi() error parsing response json");
                    string = "FailureJSON";
                }
                g.d("rbx.resetpassword", "callResetPasswordWithApi() code:" + iB + " error:" + string);
                b.this.f7778a.a(string, iB, string2, str2);
                aVar.a(string2, (string2 == null && i == -1) ? R.string.Authentication_ResetPassword_Response_SystemError : i);
            }
        }).c();
    }
}
