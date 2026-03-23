.class public Lcom/roblox/client/RobloxApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Locale;
    .locals 1

    .line 34
    sget-object v0, Lcom/roblox/client/RobloxApplication;->b:Ljava/util/Locale;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0xf

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "TRIM_MEMORY_COMPLETE"

    .line 70
    invoke-static {p0, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "TRIM_MEMORY_MODERATE"

    .line 73
    invoke-static {p0, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "TRIM_MEMORY_BACKGROUND"

    .line 76
    invoke-static {p0, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "TRIM_MEMORY_UI_HIDDEN"

    .line 79
    invoke-static {p0, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "TRIM_MEMORY_RUNNING_CRITICAL"

    .line 84
    invoke-static {p0, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string p1, "TRIM_MEMORY_RUNNING_LOW"

    .line 87
    invoke-static {p0, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string p1, "TRIM_MEMORY_RUNNING_MODERATE"

    .line 90
    invoke-static {p0, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .line 38
    sget-object v0, Lcom/roblox/client/RobloxApplication;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 44
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 45
    invoke-static {p0}, Landroidx/g/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 57
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/roblox/client/locale/b;->a(Ljava/util/Locale;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v0

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Lcom/roblox/client/locale/b;->a(Ljava/util/Locale;)V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 23
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 25
    invoke-virtual {p0}, Lcom/roblox/client/RobloxApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/RobloxApplication;->a:Landroid/content/Context;

    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/RobloxApplication;->b:Ljava/util/Locale;

    .line 27
    sget-object v0, Lcom/roblox/client/RobloxApplication;->a:Landroid/content/Context;

    sget-object v1, Lcom/roblox/client/f;->a:[Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/RobloxApplication;->a:Landroid/content/Context;

    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v0, v1, v2}, Lcom/roblox/client/f;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
