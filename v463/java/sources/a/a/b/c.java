package a.a.b;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f357a = c.class.getSimpleName();

    static String a(String str) {
        return str.substring(str.lastIndexOf("/") + 1);
    }

    public static ArrayList<String> a(Context context, List<String> list) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (list == null) {
            return arrayList;
        }
        for (String str : new ArrayList(new HashSet(list))) {
            if (c(str)) {
                Log.e(f357a, String.format("Path for file %s is invalid", str));
            } else {
                if (!a(context, str)) {
                    Log.d(f357a, String.format("Passed path is path to external storage %s", str));
                    if (!e.c(context)) {
                        Log.e(f357a, "Permission READ_EXTERNAL_STORAGE is not granted.");
                    }
                }
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private static boolean c(String str) {
        return str == null || str.isEmpty() || !b(str);
    }

    public static boolean b(String str) {
        return new File(str).exists();
    }

    private static boolean a(Context context, String str) {
        if (context == null || str == null) {
            return false;
        }
        String str2 = context.getApplicationInfo().dataDir;
        String absolutePath = context.getCacheDir().getAbsolutePath();
        String path = context.getFilesDir().getPath();
        a.a.f.a.a(f357a, String.format("Passed path %s, Internal paths %s, %s, %s", str, str2, absolutePath, path));
        return str.startsWith(str2) || str.startsWith(absolutePath) || str.startsWith(path);
    }

    public static String a(File file) {
        try {
            Scanner scanner = new Scanner(file);
            StringBuilder sb = new StringBuilder();
            while (scanner.hasNext()) {
                sb.append(scanner.nextLine());
            }
            scanner.close();
            return sb.toString();
        } catch (Exception e2) {
            Log.e(f357a, e2.getMessage());
            return null;
        }
    }
}
