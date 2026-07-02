package com.roblox.client.b;

import android.content.Context;
import android.os.AsyncTask;
import com.roblox.client.RobloxSettings;
import com.roblox.client.util.g;
import com.roblox.engine.jni.NativeSettingsInterface;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f6451b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EnumC0096a f6452a = EnumC0096a.NONE;

    /* JADX INFO: renamed from: com.roblox.client.b.a$a, reason: collision with other inner class name */
    private enum EnumC0096a {
        NONE,
        RUNNING,
        DONE
    }

    public interface c {
        void a();
    }

    public static a a() {
        if (f6451b == null) {
            synchronized (a.class) {
                if (f6451b == null) {
                    f6451b = new a();
                }
            }
        }
        return f6451b;
    }

    private a() {
        g.c("CrashReporter", "[Constructor]:");
    }

    public void a(Context context) {
        g.c("CrashReporter", "reportCrashIfAny:");
        if (this.f6452a == EnumC0096a.RUNNING) {
            g.b("CrashReporter", "reportCrashIfAny: A task is in progress. Do nothing.");
        } else {
            this.f6452a = EnumC0096a.RUNNING;
            new b(context, new c() { // from class: com.roblox.client.b.a.1
                @Override // com.roblox.client.b.a.c
                public void a() {
                    g.c("CrashReporter", "reportCrashIfAny: Done");
                    a.this.f6452a = EnumC0096a.DONE;
                }
            }).execute(new Void[0]);
        }
    }

    private static class b extends AsyncTask<Void, Void, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final ConcurrentLinkedQueue<File> f6458a = new ConcurrentLinkedQueue<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final File f6459b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f6460c;

        b(Context context, c cVar) {
            this.f6459b = context.getApplicationContext().getCacheDir();
            this.f6460c = cVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            g.c("CrashReporter", "UploadTask: Check if we need to upload any crash dump...");
            List<File> listA = a(this.f6459b);
            if (!listA.isEmpty()) {
                a(listA);
                return null;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r3) {
            g.c("CrashReporter", "UploadTask: Checking dump file is done.");
            this.f6460c.a();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r3) {
            g.c("CrashReporter", "UploadTask: Checking dump file was cancelled.");
            this.f6460c.a();
        }

        private List<File> a(File file) {
            g.c("CrashReporter", "getListOfBreakpadDumpFiles: ENTER");
            ArrayList arrayList = new ArrayList();
            File file2 = new File(file, RobloxSettings.breakpadDirectoryInCache());
            if (file2.exists()) {
                File[] fileArrListFiles = file2.listFiles();
                if (fileArrListFiles == null) {
                    g.d("CrashReporter", "Path " + file2.getAbsolutePath() + " does not denote a directory.");
                } else {
                    g.c("CrashReporter", "# of breakpad minidump(s) in " + file2.getAbsolutePath() + " = " + fileArrListFiles.length);
                    int i = 0;
                    for (File file3 : fileArrListFiles) {
                        i++;
                        g.c("CrashReporter", "... File #" + i + " => Name:" + file3.getName() + ", Size:" + file3.length());
                        if (f6458a.contains(file3)) {
                            g.b("CrashReporter", "... File: " + file3.getName() + " is being uploaded. Skip it.");
                        } else {
                            f6458a.add(file3);
                            arrayList.add(file3);
                        }
                    }
                }
            } else {
                g.b("CrashReporter", "The breakpad directory not yet created.");
            }
            g.c("CrashReporter", "getListOfBreakpadDumpFiles: END");
            return arrayList;
        }

        private void a(final List<File> list) {
            new Thread(new Runnable() { // from class: com.roblox.client.b.a.b.1
                @Override // java.lang.Runnable
                public void run() {
                    String strBaseUrlUnsecure;
                    for (File file : list) {
                        String absolutePath = file.getAbsolutePath();
                        if (com.roblox.client.b.r()) {
                            strBaseUrlUnsecure = com.roblox.client.b.p();
                        } else {
                            strBaseUrlUnsecure = RobloxSettings.baseUrlUnsecure();
                        }
                        boolean zR = com.roblox.client.b.r();
                        g.c("CrashReporter", "uploadDumpFilesAsync: dumpPath = " + absolutePath + " dumpUrl = " + strBaseUrlUnsecure);
                        g.c("CrashReporter", "uploadDumpFilesAsync: ... UploadedOK = " + NativeSettingsInterface.nativeUploadBreakpadDump(absolutePath, strBaseUrlUnsecure, RobloxSettings.version(), zR) + ", DeletedOK = " + file.delete());
                        b.f6458a.remove(file);
                    }
                }
            }).start();
        }
    }
}
