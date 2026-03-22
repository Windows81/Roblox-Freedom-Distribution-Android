package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ay {
    ay() {
    }

    final az a(Context context, String str) throws ba {
        az azVarC = c(context, str);
        return azVarC != null ? azVarC : b(context, str);
    }

    final az b(Context context, String str) {
        az azVar = new az(c.a(), System.currentTimeMillis());
        az azVarA = a(context, str, azVar, true);
        if (azVarA != null && !azVarA.equals(azVar)) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Loaded key after generating new one, using loaded one");
            }
            return azVarA;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Generated new key");
        }
        a(context, str, azVar);
        return azVar;
    }

    static void a(Context context) {
        for (File file : b(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    private final az c(Context context, String str) throws ba {
        try {
            az azVarD = d(context, str);
            if (azVarD != null) {
                a(context, str, azVarD);
                return azVarD;
            }
            e = null;
        } catch (ba e2) {
            e = e2;
        }
        try {
            az azVarA = a(context.getSharedPreferences("com.google.android.gms.appid", 0), str);
            if (azVarA != null) {
                a(context, str, azVarA, false);
                return azVarA;
            }
        } catch (ba e3) {
            e = e3;
        }
        if (e == null) {
            return null;
        }
        throw e;
    }

    private static KeyPair a(String str, String str2) throws ba {
        try {
            byte[] bArrDecode = Base64.decode(str, 8);
            byte[] bArrDecode2 = Base64.decode(str2, 8);
            try {
                KeyFactory keyFactory = KeyFactory.getInstance("RSA");
                return new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(bArrDecode)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArrDecode2)));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e2) {
                String strValueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 19);
                sb.append("Invalid key stored ");
                sb.append(strValueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                throw new ba(e2);
            }
        } catch (IllegalArgumentException e3) {
            throw new ba(e3);
        }
    }

    private final az d(Context context, String str) throws ba {
        File fileE = e(context, str);
        if (!fileE.exists()) {
            return null;
        }
        try {
            return a(fileE);
        } catch (ba | IOException e2) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String strValueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 40);
                sb.append("Failed to read key from file, retrying: ");
                sb.append(strValueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            try {
                return a(fileE);
            } catch (IOException e3) {
                String strValueOf2 = String.valueOf(e3);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 45);
                sb2.append("IID file exists, but failed to read from it: ");
                sb2.append(strValueOf2);
                Log.w("FirebaseInstanceId", sb2.toString());
                throw new ba(e3);
            }
        }
    }

    private final az a(Context context, String str, az azVar, boolean z) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing key to properties file");
        }
        Properties properties = new Properties();
        properties.setProperty("pub", azVar.b());
        properties.setProperty("pri", azVar.c());
        properties.setProperty("cre", String.valueOf(azVar.f5245b));
        File fileE = e(context, str);
        try {
            fileE.createNewFile();
            RandomAccessFile randomAccessFile = new RandomAccessFile(fileE, "rw");
            try {
                FileChannel channel = randomAccessFile.getChannel();
                try {
                    channel.lock();
                    if (z && channel.size() > 0) {
                        try {
                            channel.position(0L);
                            az azVarA = a(channel);
                            if (channel != null) {
                                a((Throwable) null, channel);
                            }
                            a((Throwable) null, randomAccessFile);
                            return azVarA;
                        } catch (ba | IOException e2) {
                            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                                String strValueOf = String.valueOf(e2);
                                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 64);
                                sb.append("Tried reading key pair before writing new one, but failed with: ");
                                sb.append(strValueOf);
                                Log.d("FirebaseInstanceId", sb.toString());
                            }
                        }
                    }
                    channel.position(0L);
                    properties.store(Channels.newOutputStream(channel), (String) null);
                    if (channel != null) {
                        a((Throwable) null, channel);
                    }
                    a((Throwable) null, randomAccessFile);
                    return azVar;
                } finally {
                }
            } finally {
            }
        } catch (IOException e3) {
            String strValueOf2 = String.valueOf(e3);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 21);
            sb2.append("Failed to write key: ");
            sb2.append(strValueOf2);
            Log.w("FirebaseInstanceId", sb2.toString());
            return null;
        }
    }

    private static File b(Context context) {
        File fileA = androidx.core.a.b.a(context);
        if (fileA != null && fileA.isDirectory()) {
            return fileA;
        }
        Log.w("FirebaseInstanceId", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    private static File e(Context context, String str) {
        String string;
        if (TextUtils.isEmpty(str)) {
            string = "com.google.InstanceId.properties";
        } else {
            try {
                String strEncodeToString = Base64.encodeToString(str.getBytes("UTF-8"), 11);
                StringBuilder sb = new StringBuilder(String.valueOf(strEncodeToString).length() + 33);
                sb.append("com.google.InstanceId_");
                sb.append(strEncodeToString);
                sb.append(".properties");
                string = sb.toString();
            } catch (UnsupportedEncodingException e2) {
                throw new AssertionError(e2);
            }
        }
        return new File(b(context), string);
    }

    private final az a(File file) throws ba, IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileChannel channel = fileInputStream.getChannel();
            try {
                channel.lock(0L, Long.MAX_VALUE, true);
                az azVarA = a(channel);
                if (channel != null) {
                    a((Throwable) null, channel);
                }
                a((Throwable) null, fileInputStream);
                return azVarA;
            } finally {
            }
        } finally {
        }
    }

    private static az a(FileChannel fileChannel) throws ba, IOException {
        Properties properties = new Properties();
        properties.load(Channels.newInputStream(fileChannel));
        String property = properties.getProperty("pub");
        String property2 = properties.getProperty("pri");
        if (property == null || property2 == null) {
            throw new ba("Invalid properties file");
        }
        try {
            return new az(a(property, property2), Long.parseLong(properties.getProperty("cre")));
        } catch (NumberFormatException e2) {
            throw new ba(e2);
        }
    }

    private static az a(SharedPreferences sharedPreferences, String str) throws ba {
        String string = sharedPreferences.getString(y.a(str, "|P|"), null);
        String string2 = sharedPreferences.getString(y.a(str, "|K|"), null);
        if (string == null || string2 == null) {
            return null;
        }
        return new az(a(string, string2), b(sharedPreferences, str));
    }

    private final void a(Context context, String str, az azVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        try {
            if (azVar.equals(a(sharedPreferences, str))) {
                return;
            }
        } catch (ba unused) {
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing key to shared preferences");
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(y.a(str, "|P|"), azVar.b());
        editorEdit.putString(y.a(str, "|K|"), azVar.c());
        editorEdit.putString(y.a(str, "cre"), String.valueOf(azVar.f5245b));
        editorEdit.commit();
    }

    private static long b(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(y.a(str, "cre"), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    private static /* synthetic */ void a(Throwable th, FileChannel fileChannel) {
        if (th == null) {
            fileChannel.close();
            return;
        }
        try {
            fileChannel.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.c.a.a(th, th2);
        }
    }

    private static /* synthetic */ void a(Throwable th, RandomAccessFile randomAccessFile) throws IOException {
        if (th == null) {
            randomAccessFile.close();
            return;
        }
        try {
            randomAccessFile.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.c.a.a(th, th2);
        }
    }

    private static /* synthetic */ void a(Throwable th, FileInputStream fileInputStream) throws IOException {
        if (th == null) {
            fileInputStream.close();
            return;
        }
        try {
            fileInputStream.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.c.a.a(th, th2);
        }
    }
}
