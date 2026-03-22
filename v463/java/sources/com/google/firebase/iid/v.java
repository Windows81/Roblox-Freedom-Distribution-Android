package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.util.Log;
import com.google.firebase.iid.zzk;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f5278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static PendingIntent f5279b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f5281d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final p f5282e;
    private Messenger g;
    private zzk h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.c.g<String, com.google.android.gms.f.h<Bundle>> f5280c = new androidx.c.g<>();
    private Messenger f = new Messenger(new w(this, Looper.getMainLooper()));

    public v(Context context, p pVar) {
        this.f5281d = context;
        this.f5282e = pVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Message message) {
        if (message != null && (message.obj instanceof Intent)) {
            Intent intent = (Intent) message.obj;
            intent.setExtrasClassLoader(new zzk.a());
            if (intent.hasExtra("google.messenger")) {
                Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                if (parcelableExtra instanceof zzk) {
                    this.h = (zzk) parcelableExtra;
                }
                if (parcelableExtra instanceof Messenger) {
                    this.g = (Messenger) parcelableExtra;
                }
            }
            Intent intent2 = (Intent) message.obj;
            String action = intent2.getAction();
            if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf = String.valueOf(action);
                    Log.d("FirebaseInstanceId", strValueOf.length() != 0 ? "Unexpected response action: ".concat(strValueOf) : new String("Unexpected response action: "));
                    return;
                }
                return;
            }
            String stringExtra = intent2.getStringExtra("registration_id");
            if (stringExtra == null) {
                stringExtra = intent2.getStringExtra("unregistered");
            }
            if (stringExtra == null) {
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    String strValueOf2 = String.valueOf(intent2.getExtras());
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf2).length() + 49);
                    sb.append("Unexpected response, no error or registration id ");
                    sb.append(strValueOf2);
                    Log.w("FirebaseInstanceId", sb.toString());
                    return;
                }
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf3 = String.valueOf(stringExtra2);
                    Log.d("FirebaseInstanceId", strValueOf3.length() != 0 ? "Received InstanceID error ".concat(strValueOf3) : new String("Received InstanceID error "));
                }
                if (stringExtra2.startsWith("|")) {
                    String[] strArrSplit = stringExtra2.split("\\|");
                    if (strArrSplit.length <= 2 || !"ID".equals(strArrSplit[1])) {
                        String strValueOf4 = String.valueOf(stringExtra2);
                        Log.w("FirebaseInstanceId", strValueOf4.length() != 0 ? "Unexpected structured response ".concat(strValueOf4) : new String("Unexpected structured response "));
                        return;
                    }
                    String str = strArrSplit[2];
                    String strSubstring = strArrSplit[3];
                    if (strSubstring.startsWith(":")) {
                        strSubstring = strSubstring.substring(1);
                    }
                    a(str, intent2.putExtra("error", strSubstring).getExtras());
                    return;
                }
                synchronized (this.f5280c) {
                    for (int i = 0; i < this.f5280c.size(); i++) {
                        a(this.f5280c.b(i), intent2.getExtras());
                    }
                }
                return;
            }
            Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(stringExtra);
            if (!matcher.matches()) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf5 = String.valueOf(stringExtra);
                    Log.d("FirebaseInstanceId", strValueOf5.length() != 0 ? "Unexpected response string: ".concat(strValueOf5) : new String("Unexpected response string: "));
                    return;
                }
                return;
            }
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            Bundle extras = intent2.getExtras();
            extras.putString("registration_id", strGroup2);
            a(strGroup, extras);
            return;
        }
        Log.w("FirebaseInstanceId", "Dropping invalid message");
    }

    private static synchronized void a(Context context, Intent intent) {
        if (f5279b == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            f5279b = PendingIntent.getBroadcast(context, 0, intent2, 0);
        }
        intent.putExtra("app", f5279b);
    }

    private final void a(String str, Bundle bundle) {
        synchronized (this.f5280c) {
            com.google.android.gms.f.h<Bundle> hVarRemove = this.f5280c.remove(str);
            if (hVarRemove == null) {
                String strValueOf = String.valueOf(str);
                Log.w("FirebaseInstanceId", strValueOf.length() != 0 ? "Missing callback for ".concat(strValueOf) : new String("Missing callback for "));
            } else {
                hVarRemove.a(bundle);
            }
        }
    }

    final Bundle a(Bundle bundle) throws IOException {
        if (this.f5282e.d() >= 12000000) {
            try {
                return (Bundle) com.google.android.gms.f.j.a((com.google.android.gms.f.g) d.a(this.f5281d).b(1, bundle));
            } catch (InterruptedException | ExecutionException e2) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf = String.valueOf(e2);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 22);
                    sb.append("Error making request: ");
                    sb.append(strValueOf);
                    Log.d("FirebaseInstanceId", sb.toString());
                }
                if ((e2.getCause() instanceof n) && ((n) e2.getCause()).a() == 4) {
                    return b(bundle);
                }
                return null;
            }
        }
        return b(bundle);
    }

    private final Bundle b(Bundle bundle) throws IOException {
        Bundle bundleC = c(bundle);
        if (bundleC == null || !bundleC.containsKey("google.messenger")) {
            return bundleC;
        }
        Bundle bundleC2 = c(bundle);
        if (bundleC2 == null || !bundleC2.containsKey("google.messenger")) {
            return bundleC2;
        }
        return null;
    }

    private static synchronized String a() {
        int i;
        i = f5278a;
        f5278a = i + 1;
        return Integer.toString(i);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:8|(1:10)(1:11)|12|(1:14)|15|(5:(7:17|(0)(2:28|(1:30)(1:31))|65|32|33|ee|37)|65|32|33|ee)|19|66|20|(1:22)(1:23)) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00bb, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c2, code lost:
    
        if (android.util.Log.isLoggable("FirebaseInstanceId", r3) != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c4, code lost:
    
        android.util.Log.d("FirebaseInstanceId", "Messenger failed, fallback to startService");
        r1 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.f.h, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.util.concurrent.TimeUnit] */
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
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00d3 -> B:65:0x00de). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00d9 -> B:65:0x00de). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.os.Bundle c(android.os.Bundle r9) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 297
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.v.c(android.os.Bundle):android.os.Bundle");
    }
}
