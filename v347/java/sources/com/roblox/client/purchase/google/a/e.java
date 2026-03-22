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
import android.util.Log;
import com.a.a.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e implements com.roblox.client.purchase.google.a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f7575a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f7576b = "IabHelper";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f7577c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f7578d = false;
    boolean e = false;
    boolean f = false;
    String g = "";
    Context h;
    com.a.a.a.a i;
    ServiceConnection j;
    int k;
    String l;
    String m;
    c n;

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
    public interface InterfaceC0127e {
        void a(f fVar, g gVar);
    }

    public e(Context context, String str) {
        this.m = null;
        this.h = context.getApplicationContext();
        this.m = str;
        c("IAB helper created.");
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void a(boolean z) {
        b();
        this.f7575a = z;
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void a(final d dVar) {
        b();
        if (this.f7577c) {
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
                if (!e.this.f7578d) {
                    e.this.c("Billing service connected.");
                    e.this.i = a.AbstractBinderC0044a.a(iBinder);
                    String packageName = e.this.h.getPackageName();
                    try {
                        e.this.c("Checking for in-app billing 3 support.");
                        int iA = e.this.i.a(3, packageName, "inapp");
                        if (iA != 0) {
                            if (dVar != null) {
                                dVar.a(new f(iA, "Error checking for billing v3 support."));
                            }
                            e.this.e = false;
                            return;
                        }
                        e.this.c("In-app billing version 3 supported for " + packageName);
                        int iA2 = e.this.i.a(3, packageName, "subs");
                        if (iA2 == 0) {
                            e.this.c("Subscriptions AVAILABLE.");
                            e.this.e = true;
                        } else {
                            e.this.c("Subscriptions NOT AVAILABLE. Response: " + iA2);
                        }
                        e.this.f7577c = true;
                        if (dVar != null) {
                            dVar.a(new f(0, "Setup successful."));
                        }
                    } catch (RemoteException e) {
                        if (dVar != null) {
                            dVar.a(new f(-1001, "RemoteException while setting up in-app billing."));
                        }
                        e.printStackTrace();
                    }
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
        if (this.f7578d) {
            throw new IllegalStateException("IabHelper was disposed of, so it cannot be used.");
        }
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void a(Activity activity, String str, int i, c cVar, String str2) {
        a(activity, str, "inapp", i, cVar, str2);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00b8 -> B:28:0x0030). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00ba -> B:28:0x0030). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0143 -> B:28:0x0030). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0145 -> B:28:0x0030). Please report as a decompilation issue!!! */
    public void a(Activity activity, String str, String str2, int i, c cVar, String str3) {
        b();
        a("launchPurchaseFlow");
        f("launchPurchaseFlow");
        b("launchPurchaseFlow");
        if (str2.equals("subs") && !this.e) {
            f fVar = new f(-1009, "Subscriptions are not available.");
            a();
            if (cVar != null) {
                cVar.a(fVar, null);
                return;
            }
            return;
        }
        try {
            c("Constructing buy intent for " + str + ", item type: " + str2);
            Bundle bundleA = this.i.a(3, this.h.getPackageName(), str, str2, str3);
            int iA = a(bundleA);
            if (iA != 0) {
                d("Unable to buy item, Error response: " + a(iA));
                a();
                f fVar2 = new f(iA, "Unable to buy item");
                if (cVar != null) {
                    cVar.a(fVar2, null);
                }
            } else {
                PendingIntent pendingIntent = (PendingIntent) bundleA.getParcelable("BUY_INTENT");
                c("Launching buy intent for " + str + ". Request code: " + i);
                this.k = i;
                this.n = cVar;
                this.l = str2;
                IntentSender intentSender = pendingIntent.getIntentSender();
                Intent intent = new Intent();
                Integer num = 0;
                int iIntValue = num.intValue();
                Integer num2 = 0;
                int iIntValue2 = num2.intValue();
                Integer num3 = 0;
                activity.startIntentSenderForResult(intentSender, i, intent, iIntValue, iIntValue2, num3.intValue());
                if (cVar != null) {
                    cVar.a();
                }
            }
        } catch (IntentSender.SendIntentException e) {
            d("SendIntentException while launching purchase flow for sku " + str);
            e.printStackTrace();
            a();
            f fVar3 = new f(-1004, "Failed to send intent.");
            if (cVar != null) {
                cVar.a(fVar3, null);
            }
        } catch (RemoteException e2) {
            d("RemoteException while launching purchase flow for sku " + str);
            e2.printStackTrace();
            a();
            f fVar4 = new f(-1001, "Remote exception while starting purchase flow");
            if (cVar != null) {
                cVar.a(fVar4, null);
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
            if (this.n != null) {
                this.n.a(fVar, null);
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
                if (this.n != null) {
                    this.n.a(fVar2, null);
                }
                return true;
            }
            try {
                h hVar = new h(this.l, stringExtra, stringExtra2);
                String strD = hVar.d();
                if (!i.a(this.m, stringExtra, stringExtra2)) {
                    d("Purchase signature verification FAILED for sku " + strD);
                    f fVar3 = new f(-1003, "Signature verification failed for sku " + strD);
                    if (this.n != null) {
                        this.n.a(fVar3, hVar);
                    }
                    return true;
                }
                c("Purchase signature successfully verified.");
                if (this.n != null) {
                    this.n.a(new f(0, "Success"), hVar);
                }
            } catch (JSONException e) {
                d("Failed to parse purchase data.");
                e.printStackTrace();
                f fVar4 = new f(-1002, "Failed to parse purchase data.");
                if (this.n != null) {
                    this.n.a(fVar4, null);
                }
                return true;
            }
        } else if (i2 == -1) {
            c("Result code was OK but in-app billing response was not OK: " + a(iA));
            if (this.n != null) {
                this.n.a(new f(iA, "Problem purchashing item."), null);
            }
        } else if (i2 == 0) {
            c("Purchase canceled - Response: " + a(iA));
            f fVar5 = new f(-1005, "User canceled.");
            if (this.n != null) {
                this.n.a(fVar5, null);
            }
        } else {
            d("Purchase failed. Result code: " + Integer.toString(i2) + ". Response: " + a(iA));
            f fVar6 = new f(-1006, "Unknown purchase response.");
            if (this.n != null) {
                this.n.a(fVar6, null);
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
            if (this.e) {
                int iA4 = a(gVar, "subs");
                if (iA4 != 0) {
                    throw new com.roblox.client.purchase.google.a.d(iA4, "Error refreshing inventory (querying owned subscriptions).");
                }
                if (z && (iA = a("subs", gVar, list)) != 0) {
                    throw new com.roblox.client.purchase.google.a.d(iA, "Error refreshing inventory (querying prices of subscriptions).");
                }
            }
            return gVar;
        } catch (RemoteException e) {
            throw new com.roblox.client.purchase.google.a.d(-1001, "Remote exception while refreshing inventory.", e);
        } catch (JSONException e2) {
            throw new com.roblox.client.purchase.google.a.d(-1002, "Error parsing JSON response while refreshing inventory.", e2);
        }
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void a(final boolean z, final List<String> list, final InterfaceC0127e interfaceC0127e) {
        final Handler handler = new Handler();
        b();
        a("queryInventoryAsync");
        f("queryInventoryAsync");
        b("refresh inventory");
        new Thread(new Runnable() { // from class: com.roblox.client.purchase.google.a.e.2
            @Override // java.lang.Runnable
            public void run() {
                final f fVar = new f(0, "Inventory refresh successful.");
                final g gVarA = null;
                try {
                    gVarA = e.this.a(z, list);
                } catch (com.roblox.client.purchase.google.a.d e) {
                    fVar = e.a();
                }
                e.this.a();
                if (!e.this.f7578d && interfaceC0127e != null) {
                    handler.post(new Runnable() { // from class: com.roblox.client.purchase.google.a.e.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            interfaceC0127e.a(fVar, gVarA);
                        }
                    });
                }
            }
        }).start();
    }

    @Override // com.roblox.client.purchase.google.a.c
    public void a(InterfaceC0127e interfaceC0127e) {
        a(true, (List<String>) null, interfaceC0127e);
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
        Bundle bundleA = this.i.a(3, this.h.getPackageName(), str, bundle);
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
        if (!hVar.f7600a.equals("inapp")) {
            throw new com.roblox.client.purchase.google.a.d(-1010, "Items of type '" + hVar.f7600a + "' can't be consumed.");
        }
        try {
            String strF = hVar.f();
            String strD = hVar.d();
            if (strF == null || strF.equals("")) {
                d("Can't consume " + strD + ". No token.");
                throw new com.roblox.client.purchase.google.a.d(-1007, "PurchaseInfo is missing token for sku: " + strD + " " + hVar);
            }
            c("Consuming sku: " + strD + ", token: " + strF);
            int iB = this.i.b(3, this.h.getPackageName(), strF);
            if (iB == 0) {
                c("Successfully consumed sku: " + strD);
            } else {
                c("Error consuming consuming sku " + strD + ". " + a(iB));
                throw new com.roblox.client.purchase.google.a.d(iB, "Error consuming sku " + strD);
            }
        } catch (RemoteException e) {
            throw new com.roblox.client.purchase.google.a.d(-1001, "Remote exception while consuming. PurchaseInfo: " + hVar, e);
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
        if (!this.f7577c) {
            d("Illegal state for operation (" + str + "): IAB helper is not set up.");
            throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + str);
        }
    }

    private void f(String str) {
        if (this.i == null) {
            d("IabHelper.mService is null. Service not connected: " + str);
            throw new IllegalStateException("Billing service is disconnected: " + str);
        }
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

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00b1, code lost:
    
        d("Bundle returned from getPurchases() doesn't contain required fields.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return -1002;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    int a(com.roblox.client.purchase.google.a.g r13, java.lang.String r14) throws org.json.JSONException, android.os.RemoteException {
        /*
            Method dump skipped, instruction units count: 402
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.purchase.google.a.e.a(com.roblox.client.purchase.google.a.g, java.lang.String):int");
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
                    } catch (com.roblox.client.purchase.google.a.d e) {
                        arrayList.add(e.a());
                    }
                }
                e.this.a();
                if (!e.this.f7578d && aVar != null) {
                    handler.post(new Runnable() { // from class: com.roblox.client.purchase.google.a.e.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a((h) list.get(0), (f) arrayList.get(0));
                        }
                    });
                }
                if (!e.this.f7578d && bVar != null) {
                    handler.post(new Runnable() { // from class: com.roblox.client.purchase.google.a.e.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            bVar.a(list, arrayList);
                        }
                    });
                }
            }
        }).start();
    }

    void c(String str) {
        if (this.f7575a) {
            Log.d(this.f7576b, str);
        }
    }

    void d(String str) {
        Log.e(this.f7576b, "In-app billing error: " + str);
    }

    void e(String str) {
        Log.w(this.f7576b, "In-app billing warning: " + str);
    }
}
