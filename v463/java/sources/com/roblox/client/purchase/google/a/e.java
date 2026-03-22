package com.roblox.client.purchase.google.a;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.a.b.a.a;
import com.roblox.client.x;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e implements com.roblox.client.purchase.google.a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f6705a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f6706b = "IabHelper";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f6707c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f6708d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f6709e = false;
    boolean f = false;
    String g = "";
    Context h;
    com.a.b.a.a i;
    ServiceConnection j;
    int k;
    String l;
    String m;
    int n;
    Bundle o;
    c p;

    public interface a {
        void a(h hVar, f fVar);
    }

    public interface b {
        void a(List<h> list, List<f> list2);
    }

    public interface c {
        void a();

        void a(f fVar, h hVar);
    }

    public interface d {
        void a(f fVar);
    }

    /* JADX INFO: renamed from: com.roblox.client.purchase.google.a.e$e, reason: collision with other inner class name */
    public interface InterfaceC0166e {
        void a(f fVar, g gVar);
    }

    public e(Context context, String str, int i) {
        this.m = null;
        this.h = context.getApplicationContext();
        this.m = str;
        this.n = i;
        c("IAB helper created.");
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void a(boolean z) {
        b();
        this.f6705a = z;
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void a(final d dVar) {
        b();
        if (this.f6707c) {
            throw new IllegalStateException("IAB helper is already set up.");
        }
        c("Starting in-app billing setup.");
        this.j = new ServiceConnection() { // from class: com.roblox.client.purchase.google.a.e.1
            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                e.this.c("Billing service disconnected.");
                e.this.i = null;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                if (e.this.f6708d) {
                    return;
                }
                e.this.c("Billing service connected.");
                e.this.i = a.AbstractBinderC0062a.a(iBinder);
                String packageName = e.this.h.getPackageName();
                try {
                    e.this.c("Checking for in-app billing support. Api level:" + e.this.n);
                    int iA = e.this.i.a(e.this.n, packageName, "inapp");
                    if (iA != 0) {
                        if (dVar != null) {
                            dVar.a(new f(iA, "Error checking for billing support. Api level:" + e.this.n));
                        }
                        e.this.f6709e = false;
                        return;
                    }
                    e.this.c("In-app billing version supported for " + packageName);
                    int iA2 = e.this.i.a(e.this.n, packageName, "subs");
                    if (iA2 == 0) {
                        e.this.c("Subscriptions AVAILABLE.");
                        e.this.f6709e = true;
                    } else {
                        e.this.c("Subscriptions NOT AVAILABLE. Response: " + iA2);
                    }
                    e.this.f6707c = true;
                    d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.a(new f(0, "Setup successful."));
                    }
                } catch (RemoteException e2) {
                    d dVar3 = dVar;
                    if (dVar3 != null) {
                        dVar3.a(new f(-1001, "RemoteException while setting up in-app billing."));
                    }
                    e2.printStackTrace();
                }
            }
        };
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        List<ResolveInfo> listQueryIntentServices = this.h.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices != null && !listQueryIntentServices.isEmpty()) {
            this.h.bindService(intent, this.j, 1);
        } else if (dVar != null) {
            dVar.a(new f(3, "Billing service unavailable on device."));
        }
    }

    private void b() {
        if (this.f6708d) {
            throw new IllegalStateException("IabHelper was disposed of, so it cannot be used.");
        }
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void a(Activity activity, String str, int i, c cVar, String str2) {
        a(activity, str, "inapp", i, cVar, str2);
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void b(Activity activity, String str, int i, c cVar, String str2) {
        a(activity, str, "subs", i, cVar, str2);
    }

    public void a(Activity activity, String str, String str2, int i, c cVar, String str3) {
        b();
        a("launchPurchaseFlow");
        f("launchPurchaseFlow");
        b("launchPurchaseFlow");
        if (str2.equals("subs") && !this.f6709e) {
            f fVar = new f(-1009, "Subscriptions are not available.");
            a();
            if (cVar != null) {
                cVar.a(fVar, null);
                return;
            }
            return;
        }
        Log.i("rbx.purchaseflow", "Billing Api Version: " + this.n);
        try {
            c("Constructing buy intent for " + str + ", item type: " + str2);
            String strB = x.b(str3);
            if (this.o == null) {
                this.o = new Bundle();
            }
            this.o.putString("accountId", strB);
            Bundle bundleA = this.i.a(this.n, this.h.getPackageName(), str, str2, str3, this.o);
            int iA = a(bundleA);
            if (iA != 0) {
                d("Unable to buy item, Error response: " + a(iA));
                a();
                f fVar2 = new f(iA, "Unable to buy item");
                if (cVar != null) {
                    cVar.a(fVar2, null);
                    return;
                }
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) bundleA.getParcelable("BUY_INTENT");
            c("Launching buy intent for " + str + ". Request code: " + i);
            this.k = i;
            this.p = cVar;
            this.l = str2;
            IntentSender intentSender = pendingIntent.getIntentSender();
            Intent intent = new Intent();
            Integer num = 0;
            int iIntValue = num.intValue();
            Integer num2 = 0;
            Integer num3 = 0;
            activity.startIntentSenderForResult(intentSender, i, intent, iIntValue, num2.intValue(), num3.intValue());
            if (cVar != null) {
                cVar.a();
            }
        } catch (IntentSender.SendIntentException e2) {
            d("SendIntentException while launching purchase flow for sku " + str);
            e2.printStackTrace();
            a();
            f fVar3 = new f(-1004, "Failed to send intent.");
            if (cVar != null) {
                cVar.a(fVar3, null);
            }
        } catch (RemoteException e3) {
            d("RemoteException while launching purchase flow for sku " + str);
            e3.printStackTrace();
            a();
            f fVar4 = new f(-1001, "Remote exception while starting purchase flow");
            if (cVar != null) {
                cVar.a(fVar4, null);
            }
        } catch (UnsupportedEncodingException e4) {
            d("UnsupportedEncodingException while launching purchase flow for sku " + str);
            e4.printStackTrace();
            a();
            f fVar5 = new f(-1012, "UnsupportedEncodingException while starting purchase flow");
            if (cVar != null) {
                cVar.a(fVar5, null);
            }
        } catch (NoSuchAlgorithmException e5) {
            d("NoSuchAlgorithmException while launching purchase flow for sku " + str);
            e5.printStackTrace();
            a();
            f fVar6 = new f(-1011, "NoSuchAlgorithmException while starting purchase flow");
            if (cVar != null) {
                cVar.a(fVar6, null);
            }
        }
    }

    @Override // com.roblox.client.purchase.google.a.c
    public boolean a(int i, int i2, Intent intent) {
        if (i != this.k) {
            return false;
        }
        b();
        a("handleActivityResult");
        f("handleActivityResult");
        a();
        if (intent == null) {
            d("Null data in IAB activity result.");
            f fVar = new f(-1002, "Null data in IAB result");
            c cVar = this.p;
            if (cVar != null) {
                cVar.a(fVar, null);
            }
            return true;
        }
        int iA = a(intent);
        String stringExtra = intent.getStringExtra("INAPP_PURCHASE_DATA");
        String stringExtra2 = intent.getStringExtra("INAPP_DATA_SIGNATURE");
        if (i2 == -1 && iA == 0) {
            c("Successful resultcode from purchase activity.");
            c("Purchase data: " + stringExtra);
            c("Data signature: " + stringExtra2);
            c("Extras: " + intent.getExtras());
            c("Expected item type: " + this.l);
            if (stringExtra == null || stringExtra2 == null) {
                d("BUG: either purchaseData or dataSignature is null.");
                c("Extras: " + intent.getExtras().toString());
                f fVar2 = new f(-1008, "IAB returned null purchaseData or dataSignature");
                c cVar2 = this.p;
                if (cVar2 != null) {
                    cVar2.a(fVar2, null);
                }
                return true;
            }
            try {
                h hVar = new h(this.l, stringExtra, stringExtra2);
                String strD = hVar.d();
                if (!i.a(this.m, stringExtra, stringExtra2)) {
                    d("Purchase signature verification FAILED for sku " + strD);
                    f fVar3 = new f(-1003, "Signature verification failed for sku " + strD);
                    if (this.p != null) {
                        this.p.a(fVar3, hVar);
                    }
                    return true;
                }
                c("Purchase signature successfully verified.");
                c cVar3 = this.p;
                if (cVar3 != null) {
                    cVar3.a(new f(0, "Success"), hVar);
                }
            } catch (JSONException e2) {
                d("Failed to parse purchase data.");
                e2.printStackTrace();
                f fVar4 = new f(-1002, "Failed to parse purchase data.");
                c cVar4 = this.p;
                if (cVar4 != null) {
                    cVar4.a(fVar4, null);
                }
                return true;
            }
        } else if (i2 == -1) {
            c("Result code was OK but in-app billing response was not OK: " + a(iA));
            if (this.p != null) {
                this.p.a(new f(iA, "Problem purchashing item."), null);
            }
        } else if (i2 == 0) {
            c("Purchase canceled - Response: " + a(iA));
            f fVar5 = new f(-1005, "User canceled.");
            c cVar5 = this.p;
            if (cVar5 != null) {
                cVar5.a(fVar5, null);
            }
        } else {
            d("Purchase failed. Result code: " + Integer.toString(i2) + ". Response: " + a(iA));
            f fVar6 = new f(-1006, "Unknown purchase response.");
            c cVar6 = this.p;
            if (cVar6 != null) {
                cVar6.a(fVar6, null);
            }
        }
        return true;
    }

    public g a(boolean z, List<String> list) throws com.roblox.client.purchase.google.a.d {
        return a(z, list, (List<String>) null);
    }

    public g a(boolean z, List<String> list, List<String> list2) throws com.roblox.client.purchase.google.a.d {
        int iA;
        int iA2;
        b();
        a("queryInventory");
        f("queryInventory");
        try {
            g gVar = new g();
            int iA3 = a(gVar, "inapp");
            if (iA3 != 0) {
                throw new com.roblox.client.purchase.google.a.d(iA3, "Error refreshing inventory (querying owned items).");
            }
            if (z && (iA2 = a("inapp", gVar, list)) != 0) {
                throw new com.roblox.client.purchase.google.a.d(iA2, "Error refreshing inventory (querying prices of items).");
            }
            if (this.f6709e) {
                int iA4 = a(gVar, "subs");
                if (iA4 != 0) {
                    throw new com.roblox.client.purchase.google.a.d(iA4, "Error refreshing inventory (querying owned subscriptions).");
                }
                if (z && (iA = a("subs", gVar, list)) != 0) {
                    throw new com.roblox.client.purchase.google.a.d(iA, "Error refreshing inventory (querying prices of subscriptions).");
                }
            }
            return gVar;
        } catch (RemoteException e2) {
            throw new com.roblox.client.purchase.google.a.d(-1001, "Remote exception while refreshing inventory.", e2);
        } catch (JSONException e3) {
            throw new com.roblox.client.purchase.google.a.d(-1002, "Error parsing JSON response while refreshing inventory.", e3);
        }
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void a(final boolean z, final List<String> list, final InterfaceC0166e interfaceC0166e) {
        final Handler handler = new Handler();
        b();
        a("queryInventoryAsync");
        f("queryInventoryAsync");
        b("refresh inventory");
        new Thread(new Runnable() { // from class: com.roblox.client.purchase.google.a.e.2
            @Override // java.lang.Runnable
            public void run() {
                final g gVarA;
                final f fVar = new f(0, "Inventory refresh successful.");
                try {
                    gVarA = e.this.a(z, list);
                } catch (com.roblox.client.purchase.google.a.d e2) {
                    fVar = e2.a();
                    gVarA = null;
                }
                e.this.a();
                if (e.this.f6708d || interfaceC0166e == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.roblox.client.purchase.google.a.e.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        interfaceC0166e.a(fVar, gVarA);
                    }
                });
            }
        }).start();
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void a(InterfaceC0166e interfaceC0166e) {
        a(true, (List<String>) null, interfaceC0166e);
    }

    @Override // com.roblox.client.purchase.google.a.c
    public int a(String str, g gVar, List<String> list) throws JSONException, RemoteException {
        c("Querying SKU details.");
        f("querySkuDetails");
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.addAll(gVar.b(str));
        if (list != null) {
            for (String str2 : list) {
                if (!arrayList.contains(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        if (arrayList.size() == 0) {
            c("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
        Bundle bundleA = this.i.a(this.n, this.h.getPackageName(), str, bundle);
        if (!bundleA.containsKey("DETAILS_LIST")) {
            int iA = a(bundleA);
            if (iA != 0) {
                c("getSkuDetails() failed: " + a(iA));
                return iA;
            }
            d("getSkuDetails() returned a bundle with neither an error nor a detail list.");
            return -1002;
        }
        Iterator<String> it = bundleA.getStringArrayList("DETAILS_LIST").iterator();
        while (it.hasNext()) {
            j jVar = new j(str, it.next());
            c("Got sku details: " + jVar);
            gVar.a(jVar);
        }
        return 0;
    }

    void a(h hVar) throws com.roblox.client.purchase.google.a.d {
        b();
        a("consume");
        f("consume");
        if (!hVar.f6733a.equals("inapp")) {
            throw new com.roblox.client.purchase.google.a.d(-1010, "Items of type '" + hVar.f6733a + "' can't be consumed.");
        }
        try {
            String strF = hVar.f();
            String strD = hVar.d();
            if (strF == null || strF.equals("")) {
                d("Can't consume " + strD + ". No token.");
                throw new com.roblox.client.purchase.google.a.d(-1007, "PurchaseInfo is missing token for sku: " + strD + " " + hVar);
            }
            c("Consuming sku: " + strD + ", token: " + strF);
            int iB = this.i.b(this.n, this.h.getPackageName(), strF);
            if (iB == 0) {
                c("Successfully consumed sku: " + strD);
                return;
            }
            c("Error consuming consuming sku " + strD + ". " + a(iB));
            throw new com.roblox.client.purchase.google.a.d(iB, "Error consuming sku " + strD);
        } catch (RemoteException e2) {
            throw new com.roblox.client.purchase.google.a.d(-1001, "Remote exception while consuming. PurchaseInfo: " + hVar, e2);
        }
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void a(h hVar, a aVar) {
        b();
        a("consumeAsync");
        f("consumeAsync");
        ArrayList arrayList = new ArrayList();
        arrayList.add(hVar);
        a(arrayList, aVar, (b) null);
    }

    public static String a(int i) {
        String[] strArrSplit = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        String[] strArrSplit2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (i <= -1000) {
            int i2 = (-1000) - i;
            if (i2 >= 0 && i2 < strArrSplit2.length) {
                return strArrSplit2[i2];
            }
            return String.valueOf(i) + ":Unknown IAB Helper Error";
        }
        if (i < 0 || i >= strArrSplit.length) {
            return String.valueOf(i) + ":Unknown";
        }
        return strArrSplit[i];
    }

    void a(String str) {
        if (this.f6707c) {
            return;
        }
        d("Illegal state for operation (" + str + "): IAB helper is not set up.");
        throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + str);
    }

    private void f(String str) {
        if (this.i != null) {
            return;
        }
        d("IabHelper.mService is null. Service not connected: " + str);
        throw new IllegalStateException("Billing service is disconnected: " + str);
    }

    int a(Bundle bundle) {
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            c("Bundle with null response code, assuming OK (known issue)");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Long) {
            return (int) ((Long) obj).longValue();
        }
        d("Unexpected type for bundle response code.");
        d(obj.getClass().getName());
        throw new RuntimeException("Unexpected type for bundle response code: " + obj.getClass().getName());
    }

    int a(Intent intent) {
        Object obj = intent.getExtras().get("RESPONSE_CODE");
        if (obj == null) {
            d("Intent with no response code, assuming OK (known issue)");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Long) {
            return (int) ((Long) obj).longValue();
        }
        d("Unexpected type for intent response code.");
        d(obj.getClass().getName());
        throw new RuntimeException("Unexpected type for intent response code: " + obj.getClass().getName());
    }

    void b(String str) {
        if (this.f) {
            throw new IllegalStateException("Can't start async operation (" + str + ") because another async operation(" + this.g + ") is in progress.");
        }
        this.g = str;
        this.f = true;
        c("Starting async operation: " + str);
    }

    void a() {
        c("Ending async operation: " + this.g);
        this.g = "";
        this.f = false;
    }

    int a(g gVar, String str) throws JSONException, RemoteException {
        c("Querying owned items, item type: " + str);
        c("Package name: " + this.h.getPackageName());
        f("queryPurchases");
        String string = null;
        boolean z = false;
        do {
            c("Calling getPurchases with continuation token: " + string);
            Bundle bundleA = this.i.a(this.n, this.h.getPackageName(), str, string);
            int iA = a(bundleA);
            c("Owned items response: " + String.valueOf(iA));
            if (iA != 0) {
                c("getPurchases() failed: " + a(iA));
                return iA;
            }
            if (!bundleA.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundleA.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundleA.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                d("Bundle returned from getPurchases() doesn't contain required fields.");
                return -1002;
            }
            ArrayList<String> stringArrayList = bundleA.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList<String> stringArrayList2 = bundleA.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList3 = bundleA.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            for (int i = 0; i < stringArrayList2.size(); i++) {
                String str2 = stringArrayList2.get(i);
                String str3 = stringArrayList3.get(i);
                String str4 = stringArrayList.get(i);
                if (i.a(this.m, str2, str3)) {
                    c("Sku is owned: " + str4);
                    h hVar = new h(str, str2, str3);
                    if (TextUtils.isEmpty(hVar.f())) {
                        e("BUG: empty/null token!");
                        c("Purchase data: " + str2);
                    }
                    gVar.a(hVar);
                } else {
                    e("Purchase signature verification **FAILED**. Not adding item.");
                    c("   Purchase data: " + str2);
                    c("   Signature: " + str3);
                    z = true;
                }
            }
            string = bundleA.getString("INAPP_CONTINUATION_TOKEN");
            c("Continuation token: " + string);
        } while (!TextUtils.isEmpty(string));
        return z ? -1003 : 0;
    }

    void a(final List<h> list, final a aVar, final b bVar) {
        final Handler handler = new Handler();
        b("consume");
        new Thread(new Runnable() { // from class: com.roblox.client.purchase.google.a.e.3
            @Override // java.lang.Runnable
            public void run() {
                final ArrayList arrayList = new ArrayList();
                for (h hVar : list) {
                    try {
                        e.this.a(hVar);
                        arrayList.add(new f(0, "Successful consume of sku " + hVar.d()));
                    } catch (com.roblox.client.purchase.google.a.d e2) {
                        arrayList.add(e2.a());
                    }
                }
                e.this.a();
                if (!e.this.f6708d && aVar != null) {
                    handler.post(new Runnable() { // from class: com.roblox.client.purchase.google.a.e.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a((h) list.get(0), (f) arrayList.get(0));
                        }
                    });
                }
                if (e.this.f6708d || bVar == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.roblox.client.purchase.google.a.e.3.2
                    @Override // java.lang.Runnable
                    public void run() {
                        bVar.a(list, arrayList);
                    }
                });
            }
        }).start();
    }

    void c(String str) {
        if (this.f6705a) {
            Log.d(this.f6706b, str);
        }
    }

    void d(String str) {
        Log.e(this.f6706b, "In-app billing error: " + str);
    }

    void e(String str) {
        Log.w(this.f6706b, "In-app billing warning: " + str);
    }
}
