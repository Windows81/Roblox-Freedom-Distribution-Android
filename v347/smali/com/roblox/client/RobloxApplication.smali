.class public Lcom/roblox/client/RobloxApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/roblox/client/RobloxApplication;->b:Ljava/util/Locale;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 62
    sparse-switch p1, :sswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 65
    :sswitch_0
    const-string v0, "TRIM_MEMORY_COMPLETE"

    invoke-static {p0, v0}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :sswitch_1
    const-string v0, "TRIM_MEMORY_MODERATE"

    invoke-static {p0, v0}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :sswitch_2
    const-string v0, "TRIM_MEMORY_BACKGROUND"

    invoke-static {p0, v0}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :sswitch_3
    const-string v0, "TRIM_MEMORY_UI_HIDDEN"

    invoke-static {p0, v0}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :sswitch_4
    const-string v0, "TRIM_MEMORY_RUNNING_CRITICAL"

    invoke-static {p0, v0}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :sswitch_5
    const-string v0, "TRIM_MEMORY_RUNNING_LOW"

    invoke-static {p0, v0}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :sswitch_6
    const-string v0, "TRIM_MEMORY_RUNNING_MODERATE"

    invoke-static {p0, v0}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_6
        0xa -> :sswitch_5
        0xf -> :sswitch_4
        0x14 -> :sswitch_3
        0x28 -> :sswitch_2
        0x3c -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/roblox/client/RobloxApplication;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 40
    invoke-static {p0}, Landroid/support/d/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 52
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/locale/a;->a(Ljava/util/Locale;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/roblox/client/locale/a;->a(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 24
    invoke-virtual {p0}, Lcom/roblox/client/RobloxApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/RobloxApplication;->a:Landroid/content/Context;

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/RobloxApplication;->b:Ljava/util/Locale;

    .line 26
    return-void
.end method
