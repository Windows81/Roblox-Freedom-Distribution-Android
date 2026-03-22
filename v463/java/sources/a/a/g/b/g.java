package a.a.g.b;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashMap<String, h> f447a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f448b = "";

    public String a() {
        return this.f448b;
    }

    public g(ArrayList<a.a.g.d> arrayList) {
        a(arrayList);
        b();
    }

    private void a(ArrayList<a.a.g.d> arrayList) {
        Thread threadCurrentThread = Thread.currentThread();
        String lowerCase = threadCurrentThread.getName().toLowerCase();
        this.f448b = lowerCase;
        this.f447a.put(lowerCase, new h(threadCurrentThread, arrayList, (Boolean) true));
    }

    private void b() {
        for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
            if (entry.getKey() != null) {
                Thread key = entry.getKey();
                StackTraceElement[] value = entry.getValue();
                String lowerCase = key.getName().toLowerCase();
                ArrayList arrayList = new ArrayList();
                if (!a().equals(lowerCase)) {
                    if (value != null && value.length != 0) {
                        for (StackTraceElement stackTraceElement : value) {
                            arrayList.add(new a.a.g.d(stackTraceElement));
                        }
                    }
                    this.f447a.put(lowerCase, new h(key, (ArrayList<a.a.g.d>) arrayList, (Boolean) false));
                }
            }
        }
    }
}
