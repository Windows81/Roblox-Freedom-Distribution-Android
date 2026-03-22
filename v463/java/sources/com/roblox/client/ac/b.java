package com.roblox.client.ac;

import com.roblox.client.ae.k;
import com.roblox.client.http.i;
import com.roblox.client.http.j;
import com.roblox.client.http.l;
import com.roblox.client.http.post.AuthTwoStepVerificationResendCodeRequestBody;
import com.roblox.client.http.post.AuthTwoStepVerifyCodeRequestBody;
import com.roblox.client.s.f;
import com.roblox.client.u;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected f f5606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected com.roblox.client.http.f f5607b;

    public interface a {
        void a();

        void a(int i);

        void a(long j);

        void a(String str, String str2);
    }

    public b(f fVar, com.roblox.client.http.f fVar2) {
        this.f5606a = fVar;
        this.f5607b = fVar2;
    }

    public void a(String str, String str2, String str3, boolean z, a aVar) {
        this.f5607b.a(u.C(), new AuthTwoStepVerifyCodeRequestBody(str, str3, str2, z, "Login"), null, a(str, aVar)).c();
    }

    public void a(String str, String str2, a aVar) {
        this.f5607b.a(u.D(), new AuthTwoStepVerificationResendCodeRequestBody(str, str2, "Login"), null, b(str, aVar)).c();
    }

    private l b(final String str, final a aVar) {
        return new i() { // from class: com.roblox.client.ac.b.1
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                int iB = jVar.b();
                String str2 = "FailureUnknownError";
                String str3 = "FailureJSON";
                C0120b c0120b = null;
                int i = -1000;
                if (iB == 200) {
                    k.b("rbx.2sv", "callAuthResend2SVCode. 2SV code resent.");
                    try {
                        JSONObject jSONObject = new JSONObject(jVar.a());
                        aVar.a(jSONObject.getString("ticket"), jSONObject.getString("mediaType"));
                        str2 = null;
                    } catch (JSONException unused) {
                        k.e("rbx.2sv", "callAuthResend2SVCode. Error parsing json response.");
                        str2 = str3;
                    }
                } else {
                    try {
                        str3 = null;
                        c0120b = new C0120b(jVar.a());
                    } catch (JSONException unused2) {
                    }
                    if (c0120b == null) {
                        str2 = str3;
                    } else if (iB == 400) {
                        int i2 = c0120b.f7727a;
                        if (i2 == 1) {
                            i = -1001;
                            str2 = "Failure2SVUserNotFound";
                        } else if (i2 == 5) {
                            i = -1002;
                            str2 = "Failure2SVDisabled";
                        } else if (i2 == 7) {
                            i = -1003;
                            str2 = "Failure2SVCredentialsCheck";
                        }
                    } else if (iB == 429) {
                        i = -1005;
                        str2 = "Failure2SVFloodCheck";
                    }
                }
                if (str2 != null) {
                    k.b("rbx.2sv", "callAuthResend2SVCode. code:" + jVar.b() + " error:" + str2);
                    b.this.f5606a.a(str2, str, jVar);
                    aVar.a(i);
                }
            }
        };
    }

    protected l a(final String str, final a aVar) {
        return new i() { // from class: com.roblox.client.ac.b.2
            /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:34:0x0078  */
            /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void a(com.roblox.client.http.j r11) {
                /*
                    r10 = this;
                    int r0 = r11.b()
                    r1 = 1
                    java.lang.String r2 = "rbx.2sv"
                    r3 = 0
                    java.lang.String r4 = "FailureUnknownError"
                    r5 = -1000(0xfffffffffffffc18, float:NaN)
                    r6 = 0
                    r7 = 200(0xc8, float:2.8E-43)
                    if (r0 != r7) goto L2a
                    java.lang.String r0 = "callAuthVerify2SVCode. 2SV code verified."
                    com.roblox.client.ae.k.b(r2, r0)
                    com.roblox.client.ac.b r0 = com.roblox.client.ac.b.this
                    com.roblox.client.s.f r0 = r0.f5606a
                    int r1 = r11.b()
                    r0.a(r1)
                    com.roblox.client.ac.b$a r0 = r2
                    r7 = -1
                    r0.a(r7)
                L28:
                    r1 = 0
                    goto L76
                L2a:
                    com.roblox.client.ac.b$b r7 = new com.roblox.client.ac.b$b     // Catch: org.json.JSONException -> L37
                    java.lang.String r8 = r11.a()     // Catch: org.json.JSONException -> L37
                    r7.<init>(r8)     // Catch: org.json.JSONException -> L37
                    r9 = r7
                    r7 = r3
                    r3 = r9
                    goto L39
                L37:
                    java.lang.String r7 = "FailureJSON"
                L39:
                    if (r3 == 0) goto L74
                    r7 = 400(0x190, float:5.6E-43)
                    if (r0 == r7) goto L5f
                    r1 = 429(0x1ad, float:6.01E-43)
                    if (r0 == r1) goto L54
                    r1 = 503(0x1f7, float:7.05E-43)
                    if (r0 == r1) goto L49
                L47:
                    r3 = r4
                    goto L28
                L49:
                    int r0 = r3.f7727a
                    r1 = 2
                    if (r0 == r1) goto L4f
                    goto L47
                L4f:
                    r5 = -1002(0xfffffffffffffc16, float:NaN)
                    java.lang.String r3 = "Failure2SVDisabled"
                    goto L28
                L54:
                    int r0 = r3.f7727a
                    r1 = 3
                    if (r0 == r1) goto L5a
                    goto L47
                L5a:
                    r5 = -1005(0xfffffffffffffc13, float:NaN)
                    java.lang.String r3 = "Failure2SVFloodCheck"
                    goto L28
                L5f:
                    int r0 = r3.f7727a
                    if (r0 == r1) goto L6f
                    r3 = 6
                    if (r0 == r3) goto L67
                    goto L47
                L67:
                    com.roblox.client.ac.b$a r0 = r2
                    r0.a()
                    java.lang.String r3 = "Failure2SVInvalidCode"
                    goto L76
                L6f:
                    r5 = -1001(0xfffffffffffffc17, float:NaN)
                    java.lang.String r3 = "Failure2SVUserNotFound"
                    goto L28
                L74:
                    r3 = r7
                    goto L28
                L76:
                    if (r3 == 0) goto La8
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    java.lang.String r4 = "SM.callAuthVerify2SVCode() code:"
                    r0.append(r4)
                    int r4 = r11.b()
                    r0.append(r4)
                    java.lang.String r4 = " error:"
                    r0.append(r4)
                    r0.append(r3)
                    java.lang.String r0 = r0.toString()
                    com.roblox.client.ae.k.b(r2, r0)
                    com.roblox.client.ac.b r0 = com.roblox.client.ac.b.this
                    com.roblox.client.s.f r0 = r0.f5606a
                    java.lang.String r2 = r3
                    r0.a(r3, r2, r11)
                    if (r1 != 0) goto La8
                    com.roblox.client.ac.b$a r11 = r2
                    r11.a(r5)
                La8:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.ac.b.AnonymousClass2.a(com.roblox.client.http.j):void");
            }
        };
    }

    /* JADX INFO: renamed from: com.roblox.client.ac.b$b, reason: collision with other inner class name */
    protected static class C0120b extends com.roblox.platform.http.returntypes.a {
        C0120b(String str) throws JSONException {
            super(str);
            if (!a()) {
                throw new JSONException("Invalid Error Payload");
            }
        }
    }
}
