package androidx.g;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class b implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f1787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f1788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f1789c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RandomAccessFile f1790d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final FileChannel f1791e;
    private final FileLock f;

    private static class a extends File {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f1793a;

        public a(File file, String str) {
            super(file, str);
            this.f1793a = -1L;
        }
    }

    b(File file, File file2) throws IOException {
        Log.i("MultiDex", "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")");
        this.f1787a = file;
        this.f1789c = file2;
        this.f1788b = b(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.f1790d = randomAccessFile;
        try {
            this.f1791e = randomAccessFile.getChannel();
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.f = this.f1791e.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException e2) {
                e = e2;
                a(this.f1791e);
                throw e;
            } catch (Error e3) {
                e = e3;
                a(this.f1791e);
                throw e;
            } catch (RuntimeException e4) {
                e = e4;
                a(this.f1791e);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e5) {
            a(this.f1790d);
            throw e5;
        }
    }

    List<? extends File> a(Context context, String str, boolean z) throws IOException {
        List<a> listA;
        List<a> listA2;
        Log.i("MultiDex", "MultiDexExtractor.load(" + this.f1787a.getPath() + ", " + z + ", " + str + ")");
        if (!this.f.isValid()) {
            throw new IllegalStateException("MultiDexExtractor was closed");
        }
        if (!z && !a(context, this.f1787a, this.f1788b, str)) {
            try {
                listA2 = a(context, str);
            } catch (IOException e2) {
                Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", e2);
                listA = a();
                a(context, str, a(this.f1787a), this.f1788b, listA);
                listA2 = listA;
            }
            Log.i("MultiDex", "load found " + listA2.size() + " secondary dex files");
            return listA2;
        }
        if (z) {
            Log.i("MultiDex", "Forced extraction must be performed.");
        } else {
            Log.i("MultiDex", "Detected that extraction must be performed.");
        }
        listA = a();
        a(context, str, a(this.f1787a), this.f1788b, listA);
        listA2 = listA;
        Log.i("MultiDex", "load found " + listA2.size() + " secondary dex files");
        return listA2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f.release();
        this.f1791e.close();
        this.f1790d.close();
    }

    private List<a> a(Context context, String str) throws IOException {
        Log.i("MultiDex", "loading existing secondary dex files");
        String str2 = this.f1787a.getName() + ".classes";
        SharedPreferences sharedPreferencesA = a(context);
        int i = sharedPreferencesA.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i + (-1));
        int i2 = 2;
        while (i2 <= i) {
            a aVar = new a(this.f1789c, str2 + i2 + ".zip");
            if (aVar.isFile()) {
                aVar.f1793a = b(aVar);
                long j = sharedPreferencesA.getLong(str + "dex.crc." + i2, -1L);
                long j2 = sharedPreferencesA.getLong(str + "dex.time." + i2, -1L);
                long jLastModified = aVar.lastModified();
                if (j2 == jLastModified) {
                    String str3 = str2;
                    SharedPreferences sharedPreferences = sharedPreferencesA;
                    if (j == aVar.f1793a) {
                        arrayList.add(aVar);
                        i2++;
                        sharedPreferencesA = sharedPreferences;
                        str2 = str3;
                    }
                }
                throw new IOException("Invalid extracted dex: " + aVar + " (key \"" + str + "\"), expected modification time: " + j2 + ", modification time: " + jLastModified + ", expected crc: " + j + ", file crc: " + aVar.f1793a);
            }
            throw new IOException("Missing extracted secondary dex file '" + aVar.getPath() + "'");
        }
        return arrayList;
    }

    private static boolean a(Context context, File file, long j, String str) {
        SharedPreferences sharedPreferencesA = a(context);
        if (sharedPreferencesA.getLong(str + "timestamp", -1L) == a(file)) {
            if (sharedPreferencesA.getLong(str + "crc", -1L) == j) {
                return false;
            }
        }
        return true;
    }

    private static long a(File file) {
        long jLastModified = file.lastModified();
        return jLastModified == -1 ? jLastModified - 1 : jLastModified;
    }

    private static long b(File file) throws IOException {
        long jA = c.a(file);
        return jA == -1 ? jA - 1 : jA;
    }

    private List<a> a() throws IOException {
        boolean z;
        String str = this.f1787a.getName() + ".classes";
        b();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f1787a);
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            int i = 2;
            while (entry != null) {
                a aVar = new a(this.f1789c, str + i + ".zip");
                arrayList.add(aVar);
                Log.i("MultiDex", "Extraction is needed for file " + aVar);
                int i2 = 0;
                boolean z2 = false;
                while (i2 < 3 && !z2) {
                    int i3 = i2 + 1;
                    a(zipFile, entry, aVar, str);
                    try {
                        aVar.f1793a = b(aVar);
                        z = true;
                    } catch (IOException e2) {
                        Log.w("MultiDex", "Failed to read crc from " + aVar.getAbsolutePath(), e2);
                        z = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z ? "succeeded" : "failed");
                    sb.append(" '");
                    sb.append(aVar.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(aVar.length());
                    sb.append(" - crc: ");
                    sb.append(aVar.f1793a);
                    Log.i("MultiDex", sb.toString());
                    if (!z) {
                        aVar.delete();
                        if (aVar.exists()) {
                            Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + aVar.getPath() + "'");
                        }
                    }
                    z2 = z;
                    i2 = i3;
                }
                if (!z2) {
                    throw new IOException("Could not create zip file " + aVar.getAbsolutePath() + " for secondary dex (" + i + ")");
                }
                i++;
                entry = zipFile.getEntry("classes" + i + ".dex");
            }
            try {
                zipFile.close();
            } catch (IOException e3) {
                Log.w("MultiDex", "Failed to close resource", e3);
            }
            return arrayList;
        } finally {
        }
    }

    private static void a(Context context, String str, long j, long j2, List<a> list) {
        SharedPreferences.Editor editorEdit = a(context).edit();
        editorEdit.putLong(str + "timestamp", j);
        editorEdit.putLong(str + "crc", j2);
        editorEdit.putInt(str + "dex.number", list.size() + 1);
        int i = 2;
        for (a aVar : list) {
            editorEdit.putLong(str + "dex.crc." + i, aVar.f1793a);
            editorEdit.putLong(str + "dex.time." + i, aVar.lastModified());
            i++;
        }
        editorEdit.commit();
    }

    private static SharedPreferences a(Context context) {
        return context.getSharedPreferences("multidex.version", Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    private void b() {
        File[] fileArrListFiles = this.f1789c.listFiles(new FileFilter() { // from class: androidx.g.b.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return !file.getName().equals("MultiDex.lock");
            }
        });
        if (fileArrListFiles == null) {
            Log.w("MultiDex", "Failed to list secondary dex dir content (" + this.f1789c.getPath() + ").");
            return;
        }
        for (File file : fileArrListFiles) {
            Log.i("MultiDex", "Trying to delete old file " + file.getPath() + " of size " + file.length());
            if (file.delete()) {
                Log.i("MultiDex", "Deleted old file " + file.getPath());
            } else {
                Log.w("MultiDex", "Failed to delete old file " + file.getPath());
            }
        }
    }

    private static void a(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File fileCreateTempFile = File.createTempFile("tmp-" + str, ".zip", file.getParentFile());
        Log.i("MultiDex", "Extracting " + fileCreateTempFile.getPath());
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(fileCreateTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                for (int i = inputStream.read(bArr); i != -1; i = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, i);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (!fileCreateTempFile.setReadOnly()) {
                    throw new IOException("Failed to mark readonly \"" + fileCreateTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
                }
                Log.i("MultiDex", "Renaming to " + file.getPath());
                if (fileCreateTempFile.renameTo(file)) {
                    return;
                }
                throw new IOException("Failed to rename \"" + fileCreateTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } finally {
            a(inputStream);
            fileCreateTempFile.delete();
        }
    }

    private static void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e2) {
            Log.w("MultiDex", "Failed to close resource", e2);
        }
    }
}
