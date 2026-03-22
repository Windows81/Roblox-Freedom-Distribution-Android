package com.roblox.platform.a;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {
    public static List<String> a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Scanner scanner = new Scanner(new File(str));
            while (scanner.hasNextLine()) {
                try {
                    arrayList.add(scanner.nextLine());
                } finally {
                    scanner.close();
                }
            }
            return arrayList;
        } catch (FileNotFoundException unused) {
            return arrayList;
        }
    }
}
