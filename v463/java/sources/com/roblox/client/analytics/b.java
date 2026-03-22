package com.roblox.client.analytics;

import android.content.Context;
import android.os.AsyncTask;
import com.roblox.client.ae.k;
import com.roblox.client.u;
import com.roblox.engine.jni.NativeSettingsInterface;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f5657b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f5658a = a.NONE;

    private enum a {
        NONE,
        RUNNING,
        DONE
    }

    public interface c {
        void a();
    }

    public static b a() {
        if (f5657b == null) {
            synchronized (b.class) {
                if (f5657b == null) {
                    f5657b = new b();
                }
            }
        }
        return f5657b;
    }

    private b() {
        k.c("CrashReporter", "[Constructor]:");
    }

    public void a(Context context) {
        k.c("CrashReporter", "reportCrashIfAny:");
        if (this.f5658a == a.RUNNING) {
            k.b("CrashReporter", "reportCrashIfAny: A task is in progress. Do nothing.");
        } else {
            this.f5658a = a.RUNNING;
            new AsyncTaskC0124b(context, new c() { // from class: com.roblox.client.analytics.b.1
                @Override // com.roblox.client.analytics.b.c
                public void a() {
                    k.c("CrashReporter", "reportCrashIfAny: Done");
                    b.this.f5658a = a.DONE;
                }
            }).execute(new Void[0]);
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.analytics.b$b, reason: collision with other inner class name */
    private static class AsyncTaskC0124b extends AsyncTask<Void, Void, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final ConcurrentLinkedQueue<File> f5664a = new ConcurrentLinkedQueue<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final File f5665b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f5666c;

        AsyncTaskC0124b(Context context, c cVar) {
            this.f5665b = context.getApplicationContext().getCacheDir();
            this.f5666c = cVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            k.c("CrashReporter", "UploadTask: Check if we need to upload any crash dump...");
            List<File> listA = a(this.f5665b);
            if (listA.isEmpty()) {
                return null;
            }
            a(listA);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r2) {
            k.c("CrashReporter", "UploadTask: Checking dump file is done.");
            this.f5666c.a();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r2) {
            k.c("CrashReporter", "UploadTask: Checking dump file was cancelled.");
            this.f5666c.a();
        }

        private List<File> a(File file) {
            k.c("CrashReporter", "getListOfBreakpadDumpFiles: ENTER");
            ArrayList arrayList = new ArrayList();
            File file2 = new File(file, u.ar());
            if (file2.exists()) {
                File[] fileArrListFiles = file2.listFiles();
                if (fileArrListFiles == null) {
                    k.d("CrashReporter", "Path " + file2.getAbsolutePath() + " does not denote a directory.");
                } else {
                    k.c("CrashReporter", "# of breakpad minidump(s) in " + file2.getAbsolutePath() + " = " + fileArrListFiles.length);
                    int i = 0;
                    for (File file3 : fileArrListFiles) {
                        i++;
                        k.c("CrashReporter", "... File #" + i + " => Name:" + file3.getName() + ", Size:" + file3.length());
                        if (f5664a.contains(file3)) {
                            k.b("CrashReporter", "... File: " + file3.getName() + " is being uploaded. Skip it.");
                        } else if (file3.getAbsolutePath().endsWith(".ini")) {
                            k.b("CrashReporter", "... File: " + file3.getName() + " is our .ini (attributes) file. Skip it.");
                        } else {
                            f5664a.add(file3);
                            arrayList.add(file3);
                        }
                    }
                }
            } else {
                k.b("CrashReporter", "The breakpad directory not yet created.");
            }
            k.c("CrashReporter", "getListOfBreakpadDumpFiles: END");
            return arrayList;
        }

        private void a(final List<File> list) {
            new Thread(new Runnable() { // from class: com.roblox.client.analytics.b.b.1
                @Override // java.lang.Runnable
                public void run() {
                    for (File file : list) {
                        String absolutePath = file.getAbsolutePath();
                        String strI = com.roblox.client.b.i();
                        String str = null;
                        boolean zNativeUploadBreakpadDump = false;
                        if (com.roblox.client.b.j()) {
                            str = absolutePath + ".ini";
                            String strA = AsyncTaskC0124b.this.a(str, strI);
                            k.c("CrashReporter", "uploadDumpFilesAsync: dumpPath = " + absolutePath + " dumpUrl = " + strA);
                            zNativeUploadBreakpadDump = NativeSettingsInterface.nativeUploadBreakpadDump(absolutePath, strA, u.h(), true);
                        } else {
                            k.c("CrashReporter", "uploadDumpFilesAsync: Not in rollout, IGNORE");
                        }
                        k.c("CrashReporter", "uploadDumpFilesAsync: ... UploadedOK = " + zNativeUploadBreakpadDump + ", DeletedOK = " + file.delete());
                        AsyncTaskC0124b.f5664a.remove(file);
                        if (str != null) {
                            k.c("CrashReporter", "uploadDumpFilesAsync: ... Deleted-attributes-OK = " + new File(str).delete());
                        }
                    }
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String a(String str, String str2) {
            List<String> listA = com.roblox.platform.a.b.a(str);
            StringBuilder sb = new StringBuilder(str2);
            Iterator<String> it = listA.iterator();
            while (it.hasNext()) {
                String[] strArrSplit = it.next().split("=");
                if (strArrSplit.length == 2) {
                    try {
                        sb.append("&");
                        sb.append(URLEncoder.encode(strArrSplit[0], "UTF-8"));
                        sb.append("=");
                        sb.append(URLEncoder.encode(strArrSplit[1], "UTF-8"));
                    } catch (UnsupportedEncodingException e2) {
                        k.d("CrashReporter", "Unsupported encoding exception: " + e2);
                    }
                }
            }
            return sb.toString();
        }
    }
}
