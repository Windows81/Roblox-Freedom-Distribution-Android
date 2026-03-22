package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class x {
    x() {
    }

    private static y a(SharedPreferences sharedPreferences, String str) throws z {
        String string = sharedPreferences.getString(m.a(str, "|P|"), null);
        String string2 = sharedPreferences.getString(m.a(str, "|K|"), null);
        if (string == null || string2 == null) {
            return null;
        }
        return new y(a(string, string2), b(sharedPreferences, str));
    }

    private static y a(File file) throws Throwable {
        Throwable th = null;
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            String property = properties.getProperty("pub");
            String property2 = properties.getProperty("pri");
            if (property == null || property2 == null) {
                a((Throwable) null, fileInputStream);
                return null;
            }
            try {
                y yVar = new y(a(property, property2), Long.parseLong(properties.getProperty("cre")));
                a((Throwable) null, fileInputStream);
                return yVar;
            } catch (NumberFormatException e) {
                throw new z(e);
            }
        } catch (Throwable th2) {
            th = th2;
            a(th, fileInputStream);
            throw th;
        }
    }

    private static KeyPair a(String str, String str2) throws z {
        try {
            byte[] bArrDecode = Base64.decode(str, 8);
            byte[] bArrDecode2 = Base64.decode(str2, 8);
            try {
                KeyFactory keyFactory = KeyFactory.getInstance("RSA");
                return new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(bArrDecode)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArrDecode2)));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
                String strValueOf = String.valueOf(e);
                Log.w("InstanceID", new StringBuilder(String.valueOf(strValueOf).length() + 19).append("Invalid key stored ").append(strValueOf).toString());
                throw new z(e);
            }
        } catch (IllegalArgumentException e2) {
            throw new z(e2);
        }
    }

    static void a(Context context) {
        for (File file : b(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    private static void a(Context context, String str, y yVar) {
        Throwable th = null;
        try {
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", "Writing key to properties file");
            }
            File fileF = f(context, str);
            fileF.createNewFile();
            Properties properties = new Properties();
            properties.setProperty("pub", yVar.b());
            properties.setProperty("pri", yVar.c());
            properties.setProperty("cre", String.valueOf(yVar.f3682b));
            FileOutputStream fileOutputStream = new FileOutputStream(fileF);
            try {
                properties.store(fileOutputStream, (String) null);
                a((Throwable) null, fileOutputStream);
            } catch (Throwable th2) {
                a(th, fileOutputStream);
                throw th2;
            }
        } catch (IOException e) {
            String strValueOf = String.valueOf(e);
            Log.w("InstanceID", new StringBuilder(String.valueOf(strValueOf).length() + 21).append("Failed to write key: ").append(strValueOf).toString());
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
            com.google.android.gms.internal.b.c.a(th, th2);
        }
    }

    private static /* synthetic */ void a(Throwable th, FileOutputStream fileOutputStream) throws IOException {
        if (th == null) {
            fileOutputStream.close();
            return;
        }
        try {
            fileOutputStream.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.b.c.a(th, th2);
        }
    }

    private static long b(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(m.a(str, "cre"), null);
        if (string != null) {
            try {
                return Long.parseLong(string);
            } catch (NumberFormatException e) {
            }
        }
        return 0L;
    }

    private static File b(Context context) {
        File fileA = android.support.v4.a.c.a(context);
        if (fileA != null && fileA.isDirectory()) {
            return fileA;
        }
        Log.w("InstanceID", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    private final void b(Context context, String str, y yVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        try {
            if (yVar.equals(a(sharedPreferences, str))) {
                return;
            }
        } catch (z e) {
        }
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Writing key to shared preferences");
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(m.a(str, "|P|"), yVar.b());
        editorEdit.putString(m.a(str, "|K|"), yVar.c());
        editorEdit.putString(m.a(str, "cre"), String.valueOf(yVar.f3682b));
        editorEdit.commit();
    }

    static void c(Context context, String str) {
        File fileF = f(context, str);
        if (fileF.exists()) {
            fileF.delete();
        }
    }

    private final y d(Context context, String str) throws z {
        z zVar;
        try {
            y yVarE = e(context, str);
            if (yVarE != null) {
                b(context, str, yVarE);
                return yVarE;
            }
            zVar = null;
        } catch (z e) {
            zVar = e;
        }
        try {
            y yVarA = a(context.getSharedPreferences("com.google.android.gms.appid", 0), str);
            if (yVarA != null) {
                a(context, str, yVarA);
                return yVarA;
            }
            e = zVar;
        } catch (z e2) {
            e = e2;
        }
        if (e != null) {
            throw e;
        }
        return null;
    }

    private final y e(Context context, String str) throws z {
        File fileF = f(context, str);
        if (!fileF.exists()) {
            return null;
        }
        try {
            return a(fileF);
        } catch (IOException e) {
            if (Log.isLoggable("InstanceID", 3)) {
                String strValueOf = String.valueOf(e);
                Log.d("InstanceID", new StringBuilder(String.valueOf(strValueOf).length() + 40).append("Failed to read key from file, retrying: ").append(strValueOf).toString());
            }
            try {
                return a(fileF);
            } catch (IOException e2) {
                String strValueOf2 = String.valueOf(e2);
                Log.w("InstanceID", new StringBuilder(String.valueOf(strValueOf2).length() + 45).append("IID file exists, but failed to read from it: ").append(strValueOf2).toString());
                throw new z(e2);
            }
        }
    }

    private static File f(Context context, String str) {
        String string;
        if (TextUtils.isEmpty(str)) {
            string = "com.google.InstanceId.properties";
        } else {
            try {
                String strEncodeToString = Base64.encodeToString(str.getBytes(Constants.UTF8_NAME), 11);
                string = new StringBuilder(String.valueOf(strEncodeToString).length() + 33).append("com.google.InstanceId_").append(strEncodeToString).append(".properties").toString();
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
        return new File(b(context), string);
    }

    final y a(Context context, String str) throws z {
        y yVarD = d(context, str);
        return yVarD != null ? yVarD : b(context, str);
    }

    final y b(Context context, String str) {
        y yVar = new y(n.a(), System.currentTimeMillis());
        try {
            y yVarD = d(context, str);
            if (yVarD != null) {
                if (!Log.isLoggable("InstanceID", 3)) {
                    return yVarD;
                }
                Log.d("InstanceID", "Loaded key after generating new one, using loaded one");
                return yVarD;
            }
        } catch (z e) {
        }
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Generated new key");
        }
        a(context, str, yVar);
        b(context, str, yVar);
        return yVar;
    }
}
