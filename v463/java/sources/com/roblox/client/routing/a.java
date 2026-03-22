package com.roblox.client.routing;

import android.os.AsyncTask;
import com.google.gson.f;
import com.google.gson.t;
import com.roblox.client.ae.k;
import com.roblox.client.l.j;
import com.roblox.client.routing.model.RouteModel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f6953a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f6954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private org.greenrobot.eventbus.c f6955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f6956d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Executor f6957e;
    private String f = "";

    public static a a() {
        a aVar;
        synchronized (f6953a) {
            if (f6954b == null) {
                f6954b = new a(org.greenrobot.eventbus.c.a(), new b(), AsyncTask.THREAD_POOL_EXECUTOR);
            }
            aVar = f6954b;
        }
        return aVar;
    }

    a(org.greenrobot.eventbus.c cVar, b bVar, Executor executor) {
        this.f6955c = cVar;
        this.f6956d = bVar;
        this.f6957e = executor;
    }

    public void a(String str) {
        new AsyncTaskC0168a(this.f6955c, this.f6956d, this.f6957e).executeOnExecutor(this.f6957e, str);
    }

    public void b(String str) {
        this.f = str;
    }

    public boolean b() {
        return !this.f.isEmpty();
    }

    public String c() {
        String str = this.f;
        this.f = "";
        return str;
    }

    /* JADX INFO: renamed from: com.roblox.client.routing.a$a, reason: collision with other inner class name */
    static class AsyncTaskC0168a extends AsyncTask<String, Void, List<d>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private org.greenrobot.eventbus.c f6959a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f6960b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Executor f6961c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f6962d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f6963e;

        AsyncTaskC0168a(org.greenrobot.eventbus.c cVar, b bVar, Executor executor) {
            this.f6959a = cVar;
            this.f6960b = bVar;
            this.f6961c = executor;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<d> doInBackground(String... strArr) {
            this.f6960b.a();
            RouteModel routeModelB = b(strArr[0]);
            if (routeModelB == null) {
                return Collections.emptyList();
            }
            k.c("AppRouter", "defaultActionHandler: " + routeModelB.default_action_handler + ". action: " + routeModelB.default_action);
            if (a(routeModelB)) {
                this.f6960b.b();
                String str = routeModelB.default_action;
                this.f6962d = str;
                List<d> listC = c(str);
                if (listC.size() == 0) {
                    this.f6960b.b(this.f6962d);
                }
                return listC;
            }
            this.f6960b.e();
            k.c("AppRouter", "Should be handled by Lua.");
            return Collections.emptyList();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(List<d> list) {
            super.onPostExecute(list);
            b(list);
        }

        private RouteModel b(String str) {
            try {
                return (RouteModel) new f().a(str, RouteModel.class);
            } catch (t unused) {
                k.b("AppRouter", "Invalid json string.");
                this.f6960b.a(str);
                return null;
            }
        }

        private boolean a(RouteModel routeModel) {
            if (routeModel.android_default_action_handler != null) {
                return "native".equals(routeModel.android_default_action_handler);
            }
            return "native".equals(routeModel.default_action_handler);
        }

        private List<d> c(String str) {
            ArrayList arrayList = new ArrayList();
            String strD = d(str);
            k.c("AppRouter", "Path: " + strD);
            if (strD == null) {
                return arrayList;
            }
            this.f6963e = e(strD);
            k.c("AppRouter", "ActionType: " + this.f6963e);
            List<String> listF = f(strD);
            k.c("AppRouter", "Actions: " + listF);
            return listF.size() == 0 ? arrayList : a(listF, a(strD));
        }

        private String d(String str) {
            int iIndexOf = str.indexOf("://");
            if (iIndexOf == -1) {
                return null;
            }
            return str.substring(iIndexOf + 3);
        }

        private String e(String str) {
            int iIndexOf = str.indexOf(47);
            if (iIndexOf == -1) {
                return null;
            }
            return str.substring(0, iIndexOf);
        }

        private List<String> f(String str) {
            ArrayList arrayList = new ArrayList(Arrays.asList(str.split("/")));
            if (arrayList.size() == 0) {
                return arrayList;
            }
            arrayList.remove(0);
            if (arrayList.size() == 0) {
                return arrayList;
            }
            String[] strArrSplit = ((String) arrayList.get(arrayList.size() - 1)).split("\\?");
            if (strArrSplit.length == 0) {
                return arrayList;
            }
            arrayList.remove(arrayList.size() - 1);
            arrayList.add(strArrSplit[0]);
            return arrayList;
        }

        public HashMap<String, String> a(String str) {
            String str2;
            String[] strArrSplit = str.split("\\?");
            HashMap<String, String> map = new HashMap<>();
            if (strArrSplit.length < 2 || (str2 = strArrSplit[1]) == null) {
                return map;
            }
            for (String str3 : str2.split("&")) {
                if (str3 != null) {
                    String[] strArrSplit2 = str3.split("=");
                    if (strArrSplit2.length == 2) {
                        map.put(strArrSplit2[0], strArrSplit2[1]);
                    }
                }
            }
            return map;
        }

        private List<d> a(List<String> list, HashMap<String, String> map) {
            d dVar;
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                try {
                    c cVarValueOf = c.valueOf(list.get(i).toUpperCase());
                    if (i == list.size() - 1) {
                        if (cVarValueOf.c() != map.size()) {
                            k.b("AppRouter", "Incorrect number of parameters. Stop building routes.");
                            this.f6960b.a(cVarValueOf.a(), this.f6962d);
                            return arrayList;
                        }
                        dVar = new d(cVarValueOf, map);
                    } else {
                        dVar = new d(cVarValueOf);
                    }
                    arrayList.add(dVar);
                } catch (IllegalArgumentException unused) {
                    k.b("AppRouter", "AppTarget not recognized. Stop building routes.");
                }
            }
            return arrayList;
        }

        private void b(final List<d> list) {
            this.f6961c.execute(new Runnable() { // from class: com.roblox.client.routing.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    String strA;
                    for (d dVar : list) {
                        k.b("AppRouter", "Trying to post event: " + dVar.b().a());
                        j jVarC = j.c(dVar.b().a());
                        int i = AnonymousClass1.f6958a[dVar.b().ordinal()];
                        if (i == 1) {
                            String str = dVar.b().b()[0];
                            if (!dVar.a().containsKey(str)) {
                                AsyncTaskC0168a.this.f6960b.b(dVar.b().a(), AsyncTaskC0168a.this.f6962d);
                                return;
                            } else {
                                try {
                                    strA = j.a(Long.valueOf(dVar.a().get(str)).longValue());
                                } catch (NumberFormatException unused) {
                                    AsyncTaskC0168a.this.f6960b.c(dVar.b().a(), AsyncTaskC0168a.this.f6962d);
                                    return;
                                }
                            }
                        } else if (i != 2) {
                            strA = null;
                        } else {
                            String str2 = dVar.b().b()[0];
                            if (!dVar.a().containsKey(str2)) {
                                AsyncTaskC0168a.this.f6960b.b(dVar.b().a(), AsyncTaskC0168a.this.f6962d);
                                return;
                            } else {
                                try {
                                    strA = String.valueOf(Long.valueOf(dVar.a().get(str2)).longValue());
                                } catch (NumberFormatException unused2) {
                                    AsyncTaskC0168a.this.f6960b.c(dVar.b().a(), AsyncTaskC0168a.this.f6962d);
                                    return;
                                }
                            }
                        }
                        if (strA == null) {
                            AsyncTaskC0168a.this.f6960b.d();
                        } else {
                            jVarC.a(strA);
                            AsyncTaskC0168a.this.f6960b.c();
                        }
                        AsyncTaskC0168a.this.f6959a.c(jVarC);
                    }
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.routing.a$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6958a;

        static {
            int[] iArr = new int[c.values().length];
            f6958a = iArr;
            try {
                iArr[c.PROFILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6958a[c.GAME_DETAILS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
